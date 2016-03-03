<?php

namespace Kulashare\Bundle\CustomerBundle\Form\Type;

use Sylius\Bundle\UserBundle\Form\Type\CustomerRegistrationType as BaseCustomerType;
use Symfony\Component\Form\FormBuilderInterface;

class KulashareCustomerRegistrationType extends BaseCustomerType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        parent::buildForm($builder, $options); // Add default fields.
    }
    /**
     * {@inheritdoc}
     */
    public function getName()
    {
        return 'kulashare_customer_registration';
    }
}
