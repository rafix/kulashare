<?php

namespace Kulashare\Bundle\RentalBundle\Controller;

use Kulashare\Bundle\MessageBundle\Entity\Message;
use Sylius\Bundle\ResourceBundle\Controller\ResourceController as Controller;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;

class DefaultController extends Controller
{

    public function availableAction(Request $request)
    {
        $idProduct = $request->request->get('product_id');
        $start_date = $request->request->get('start_date').' '.$request->request->get('start_time');
        $start_date = date('Y-m-d H:i:s', strtotime($start_date));
        $end_date = $request->request->get('end_date').' '.$request->request->get('end_time');
        $end_date = date('Y-m-d H:i:s', strtotime($end_date));
        $em = $this->getDoctrine()->getManager();

        $available = $em->getRepository('KulashareRentalBundle:Rentals')
                    ->is_availableProduct($idProduct, $start_date, $end_date);
        $message = 'There is not avaible to rent at this time ';
        if ($available) {
            $message = 'Hurry up and Request for This!';
        }

        return new Response($message);
    }

    public function saveRentalAction(Request $request)
    {
        if (!$this->get('security.authorization_checker')->isGranted('ROLE_USER')) {
            return new Response('You need be logged to execute this action. <a  href="'.$this->generateUrl('sylius_user_security_login').'"> Sign In </a> or <a href="#" id="sign_up" data-toggle="modal" data-target="#EasyRegisterModal">Sign up</a> in our system.');
        }

        $idProduct = $request->request->get('product_id');
        $start_date = $request->request->get('start_date').' '.$request->request->get('start_time');
        $end_date = $request->request->get('end_date').' '.$request->request->get('end_time');

        $em = $this->getDoctrine()->getManager();

        $available = $em->getRepository('KulashareRentalBundle:Rentals')
                    ->is_availableProduct($idProduct, $start_date, $end_date);
        $message = 'There is not avaible to rent at this time';
        if ($available) {
            $repositoryProduct = $this->container->get('sylius.repository.product');
            $product = $repositoryProduct->findById($idProduct);

            $user_lender_id = $product[0]->getUserCreated()->getId();
            $userRepository = $this->container->get('sylius.repository.user');
            $user_lender = $userRepository->find($user_lender_id);

            $user = $this->getUser();

            $rental_id = $em->getRepository('KulashareRentalBundle:Rentals')
                    ->SaveRental($product[0], $start_date, $end_date, $user_lender->getCustomer(), $user->getCustomer());

            $user_email = $user_lender->getEmail();

            $this->SendEmail($user_email, 'New Rental Request', 'Emails/rentals.html.twig', array('name' => 'name'));
            $message = 'The Request has been made. Wait for notices from '.$user_lender->getCustomer()->getFullName();
        } else {
            $message = 'There is not avaible to rent at this time';
        }

        return new Response($message);
    }

    public function listRentalAction(Request $request)
    {
        $user = $this->getUser();
        $em = $this->getDoctrine()->getManager();

        $rentals = $em->getRepository('KulashareRentalBundle:Rentals')
                    ->findAllRentalsFromLender($user->getId());
        $request_rentals = $em->getRepository('KulashareRentalBundle:Rentals')
                    ->findAllRentalsFromRent($user->getId());

        //var_dump($request_rentals[0]);die;
        return $this->render('KulashareRentalBundle:Default:rentalList.html.twig', array('rental' => $rentals, 'request' => $request_rentals));
    }

    public function approveRentalAction(Request $request)
    {
        $idRental = $request->query->get('rental');

        $em = $this->getDoctrine()->getManager();

        $rental = $em->getRepository('KulashareRentalBundle:Rentals')
                      ->find($idRental);
        $rental->setRentalState('approved');
        $user_email = $rental->getUserRental()->getEmail();
        $em->flush();

        //reject request by date
        $rentals_reject = $em->getRepository('KulashareRentalBundle:Rentals')
                    ->rejectAllRentals($rental->getProduct()->getId(), $rental->getUserLender()->getId(), $rental->getStartDate(), $rental->getEndDate());

        $this->SendEmail($user_email, 'New Rental Request', 'Emails/rentals.html.twig', array('name' => 'name'));

        if (count($rentals_reject) > 0) {
            foreach ($rentals_reject as $key => $value) {
                $this->SendEmail($value->getUserRental()->getEmail(), 'Reject Rental Request', 'Emails/rentals.html.twig', array('name' => 'name'));
            }
        }

        return $this->redirectToRoute('kulashare_rental_list');
    }

    public function rejectRentalAction(Request $request)
    {
        $idRental = $request->query->get('rental');

        $em = $this->getDoctrine()->getManager();
        $rental = $em->getRepository('KulashareRentalBundle:Rentals')
                      ->find($idRental);
        $rental->setRentalState('reject');
        $user_email = $rental->getUserRental()->getEmail();
        $em->flush();

        $this->SendEmail($user_email, 'New Rental Request', 'Emails/rentals.html.twig', array('name' => 'name'));

        return $this->redirectToRoute('kulashare_rental_list');
    }

    public function checkoutRentalAction(Request $request)
    {
        $idRental = $request->query->get('rental');
        $em = $this->getDoctrine()->getManager();
        $rental = $em->getRepository('KulashareRentalBundle:Rentals')
                      ->find($idRental);
        $order = $this->get('sylius.repository.cart')->createNew();
        $order_item = $this->get('sylius.repository.cart_item')->createNew();
        $order_item->setVariant($rental->getProduct()->getVariants()[0]);
        $order->addItem($order_item);
    }

    private function SendEmail($user_to, $subject, $template, $template_data)
    {
        $message = \Swift_Message::newInstance()
        ->setSubject($subject)
        ->setFrom('info@kulashare.com')
        ->setTo($user_to)
        ->setBody(
            $this->renderView(
                // app/Resources/views/Emails/rentals.html.twig
                $template,
                $template_data
            ),
            'text/html'
        )
        /*
         * If you also want to include a plaintext version of the message
        ->addPart(
            $this->renderView(
                'Emails/registration.txt.twig',
                array('name' => $name)
            ),
            'text/plain'
        )
        */
        ;
        $this->get('mailer')->send($message);
    }
    public function listRentalDashboardAction(Request $request)
    {
        $user = $this->getUser();
        $em = $this->getDoctrine()->getManager();

        $rentals = $em->getRepository('KulashareRentalBundle:Rentals')
                    ->findAllRentalsFromLender($user->getId());
        $request_rentals = $em->getRepository('KulashareRentalBundle:Rentals')
                    ->findAllRentalsFromRent($user->getId());
        $repositoryProduct = $this->container->get('sylius.repository.product');

        $query = $repositoryProduct->createQueryBuilder('p')
            ->where('p.userCreated = :user')
            ->setParameter('user', $user->getId())
            ->orderBy('p.createdAt', 'DESC')
            ->getQuery();

        $messages = $em->getRepository('KulashareMessageBundle:Message')
                    ->findMessagesByUser($user->getId());

        $products = $query->setMaxResults(6)->getResult();
        return $this->render('KulashareCustomerBundle:Customer:dashboard.html.twig', array('products' => $products, 'rentals' => $rentals, 'request' => $request_rentals, 'messages' => $messages));
    }
    public function listLenderDashboardAction(Request $request)
    {
        $user = $this->getUser();
        $em = $this->getDoctrine()->getManager();

        $rentals = $em->getRepository('KulashareRentalBundle:Rentals')
                    ->findAllRentalsFromLender($user->getId());
        $request_rentals = $em->getRepository('KulashareRentalBundle:Rentals')
                    ->findAllRentalsFromRent($user->getId());
        $repositoryProduct = $this->container->get('sylius.repository.product');

        $query = $repositoryProduct->createQueryBuilder('p')
            ->where('p.userCreated = :user')
            ->setParameter('user', $user->getId())
            ->orderBy('p.createdAt', 'DESC')
            ->getQuery();

        // $em->flush();
        // $reports = $em->getRepository('KulashareReportBundle:Reports')->test();

        $products = $query->setMaxResults(6)->getResult();
        //var_dump($request_rentals[0]);die;
        return $this->render('KulashareCustomerBundle:Customer:dashboard_lender.html.twig', array('products' => $products, 'rentals' => $rentals, 'request' => $request_rentals));
    }
    public function extendRentalAction(Request $request)
    {
        $idRental = $request->request->get('id_rental');
        $user = $this->getUser();
        $extend = $request->request->get('extend_date');

        $em = $this->getDoctrine()->getManager();
        $Rental = $em->getRepository('KulashareRentalBundle:Rentals')
                    ->findRentalByUserAndRental($idRental, $user->getId());
        if (empty($Rental)) {
            return new Response('It seems there is not a rental match.');
        }
        foreach ($Rental as $key => $value) {
            //$em->flush();
        $user_lender = $value->getUserLender()->getUser()->getUsername();
            $em->getRepository('KulashareRentalBundle:Rentals')
                    ->SaveRental($value->getProduct(), $value->getEndDate()->format('Y-m-d H:i:s'), $extend, $value->getUserLender(), $value->getUserRental(), 'extend');
            $return = 'The Extension Request to '.$user_lender.' has been made.';
            $em->flush();
            $message = new Message();
            $message->setAuthor($this->getUser()->getCustomer());
            $message->setUserReceiver($value->getUserLender());
            $message->setComment(sprintf('The user %s want to extend the Rental ID %s until %s', $value->getUserRental(), $value->getId(), $value->getEndDate()->format('Y-m-d H:i:s')));
            $message->setSubject(sprintf('Extend Rental Request'));
            $message->setState('sent');
            $message->setUpdatedAt(new \DateTime());
            $em->persist($message);
            break;
        }
        $em->flush();

        return new Response($return);
    }
    public function returnAlertRentalAction(Request $request)
    {
        $idRental = $request->request->get('id_rental');
        $user = $this->getUser();

        $em = $this->getDoctrine()->getManager();
        $Rental = $em->getRepository('KulashareRentalBundle:Rentals')
                    ->findRentalByUserAndRental($idRental, $user->getId());
        if (empty($Rental)) {
            return new Response('It seems there is not a rental match.');
        }
        foreach ($Rental as $value) {
            $user_email = $value->getUserRental()->getEmail();
            $user_lender = $value->getUserLender()->getUser()->getUsername();
            $user_rental = $value->getUserLender()->getUser()->getUsername();
            $subject = 'Alert From '.$user_lender;
            $this->SendEmail($user_email, $subject, 'Emails/rentals.html.twig', array('name' => 'name'));
            $return = '<strong>Success.</strong> The alert to '.$user_rental.' has been sent.';
            break;
        }

        return new Response($return);
    }
    public function finalizeRentalAction(Request $request)
    {
        $idRental = $request->query->get('rental');

        $em = $this->getDoctrine()->getManager();

        $rental = $em->getRepository('KulashareRentalBundle:Rentals')
                      ->find($idRental);
        if ($rental->getRentalState() == 'expired') {
            $rental->setRentalState('returned');
            $user_email = $rental->getUserRental()->getEmail();
            $em->flush();

            $this->SendEmail($user_email, 'Rental Finished', 'Emails/rentals.html.twig', array('name' => 'name'));
        }

        return $this->redirectToRoute('kulashare_rental_list');
    }
}
