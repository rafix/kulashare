<?php

namespace Kulashare\Bundle\CustomerBundle\Controller;

use Sylius\Bundle\ResourceBundle\Controller\ResourceController as Controller;
use Symfony\Component\HttpFoundation\Request;

class CustomerController extends Controller
{
    /**
     * @Security("has_role('ROLE_USER')")
     */
    public function customerProfileAction()
    {
        if (!$this->get('security.authorization_checker')->isGranted('ROLE_USER')) {
            return $this->redirect($this->generateUrl('sylius_user_security_login'));
        }
         //find all product for the user logged
        $repositoryProduct = $this->container->get('sylius.repository.product');

        $user = $this->getUser();
        $query = $repositoryProduct->createQueryBuilder('p')
            ->where('p.userCreated = :user')
            ->setParameter('user', $user->getId())
            ->orderBy('p.createdAt', 'DESC')
            ->getQuery();

        $products = $query->setMaxResults(6)->getResult();
        //print_r(count($products));die;
        $rentals = $em->getRepository('KulashareRentalBundle:Rentals')
                    ->findAllRentalsFromLender($user->getId());
        $request_rentals = $em->getRepository('KulashareRentalBundle:Rentals')
                    ->findAllRentalsFromRent($user->getId());

        return $this->render('KulashareCustomerBundle:Customer:dashboard.html.twig', array('products' => $products, 'rentals' => $rentals, 'request' => $request_rentals));
    }
}
