<?php

namespace Kulashare\Bundle\CustomerBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;

class DefaultController extends Controller
{
    public function indexAction($name)
    {
        return $this->render('KulashareCustomerBundle:Default:index.html.twig', array('name' => $name));
    }
}
