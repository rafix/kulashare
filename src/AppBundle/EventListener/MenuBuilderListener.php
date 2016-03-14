<?php
/**
 * Created by PhpStorm.
 * User: rafix
 * Date: 3/13/2016
 * Time: 10:20 PM
 */

namespace AppBundle\EventListener;

use Sylius\Bundle\WebBundle\Event\MenuBuilderEvent;

class MenuBuilderListener
{
    public function addFrontendMenuItems(MenuBuilderEvent $event)
    {
        $menu = $event->getMenu();

        $menu['cart']->setDisplay(false);

        $menu->addChild('About us' , [
            'uri'   => '#',
        ]);


    }
}