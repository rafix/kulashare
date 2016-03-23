<?php

namespace Kulashare\Bundle\ProductBundle\Form\Type;

use Sylius\Bundle\CoreBundle\Form\Type\ProductType as BaseProductType;
use Symfony\Component\Form\FormBuilderInterface;

class ProductType extends BaseProductType
{
    /**
     * {@inheritdoc}
     */
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        parent::buildForm($builder, $options);

        $builder
            ->add('status', 'choice', array(
                'label' => 'Status',
                'choices' => array('1' => 'Published', '0' => 'Draft'),

            ))
            ->add('typeRental', 'choice', array(
                'label' => 'Rental',
                'choices' => array('hour' => 'Hour', 'day' => 'Day', 'week' => 'Week', 'month' => 'Month', 'year' => 'Year'),
            ))
            ->add('latitud', 'hidden', array(
                'data' => '0.0000000',
            ))
            ->add('longitud', 'hidden', array(
                'data' => '0.0000000',
            ))
//            ->add('translations', 'collection', array('type' => new ProductTranslationType('Kulashare\Bundle\ProductBundle\Entity\ProductTranslation'), 'label' => false))
            ;
    }
}
