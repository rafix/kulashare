<?php

namespace Kulashare\Bundle\StoreFrontBundle\Controller;

use Sylius\Bundle\ResourceBundle\Controller\ResourceController as Controller;
use Symfony\Component\HttpFoundation\Request;

class DefaultController extends Controller
{
//    public function indexAction(Request $request, $offset, $limit)
//    {
//        //find all products
//        $repositoryProduct = $this->container->get('sylius.repository.product');
//
//        //$query = $repositoryProduct->findAll()->slice($offset, $lenght);
//            $query = $repositoryProduct->createQueryBuilder('p')
//            ->orderBy('p.createdAt', 'DESC')
//            ->getQuery()
//           ;
//        $products = $query
//                       ->setFirstResult($offset)
//                       ->setMaxResults($limit)
//                       ->getResult()
//                       ;
//
//        $userRepository = $this->container->get('sylius.repository.user');
//        foreach ($products as $key => $value) {
//            $user = $userRepository->find($value->getUserCreated()->getId());
//            $products[$key]->setUserCreated($user);
//            $user = '';
//        }
//
//        //find all categories
//        $repositoryCategories = $this->container->get('sylius.repository.taxonomy');
//        $taxonomies = $repositoryCategories->findAll();
//
//        //var_dump($taxonomies[0]->getTaxons()[0] );die;
//        if ($request->isXmlHttpRequest()) {
//            return new JsonResponse(array('products' => $products, 'categories' => $taxonomies, 'categoriesSelect' => $taxonomies[0]->getTaxons()));
//        } else {
//            return $this->render('KulashareStoreFrontBundle:Default:index.html.twig', array('products' => $products, 'categories' => $taxonomies, 'categoriesSelect' => $taxonomies[0]->getTaxons()));
//        }
//    }
}
