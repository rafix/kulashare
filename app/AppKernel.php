<?php

use Sylius\Bundle\CoreBundle\Kernel\Kernel;

class AppKernel extends Kernel
{
    public function registerBundles()
    {
        $bundles = array(
            new \Sensio\Bundle\GeneratorBundle\SensioGeneratorBundle(),
            new \AppBundle\AppBundle(),
            new Kulashare\Bundle\CustomerBundle\KulashareCustomerBundle(),
            new Kulashare\Bundle\ProductBundle\KulashareProductBundle(),
            new Kulashare\Bundle\StoreFrontBundle\KulashareStoreFrontBundle(),
            new Kulashare\Bundle\RentalBundle\KulashareRentalBundle(),
            new Kulashare\Bundle\MessageBundle\KulashareMessageBundle(),
        );

        if (in_array($this->environment, array('dev', 'test'))) {
            $bundles[] = new Symfony\Bundle\WebProfilerBundle\WebProfilerBundle();
            $bundles[] = new Symfony\Bundle\DebugBundle\DebugBundle();
        }

        return array_merge(parent::registerBundles(), $bundles);
    }
}
