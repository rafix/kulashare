<?php

namespace Kulashare\Bundle\StoreFrontBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Response;


class HomePageController extends Controller
{
    /**
     * Store front page.
     *
     * @return Response
     */
    public function mainAction()
    {    	
        return $this->render('SyliusWebBundle:Frontend/Homepage:main.html.twig');
    }

    public function recentProductsAction()
    {
    	//find all products
        $repositoryProduct = $this->container->get('sylius.repository.product');
      
        //$query = $repositoryProduct->findAll()->slice($offset, $lenght);       
		    $query = $repositoryProduct->createQueryBuilder('p')
            ->orderBy('p.createdAt', 'DESC')        
            ->getQuery()
           ;
        $products = $query
       				->setFirstResult(0)
       				->setMaxResults(9)
       				->getResult()
       				;
        //print_r(count($products));die;
       				
        return $this->render('KulashareStoreFrontBundle:HomePage:latest.html.twig', array('products' => $products));
    }
}