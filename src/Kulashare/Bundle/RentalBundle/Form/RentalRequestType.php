<?php

namespace Kulashare\Bundle\KulashareRentalsBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolverInterface;

class RentalRequestType extends AbstractType
{
    /**
     * @param FormBuilderInterface $builder
     * @param array $options
     */
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('product_id', 'hidden', array('data' => $product_id ),
            ))
            ->add('user_id', 'hidden', array('data' => $user_id ),
            ))
            ->add('user_rental', 'hidden', array('data' => $user_rental ),
            ))
            ->add('createdatstart', 'time')
            ->add('createdatend', 'date')
            ->add('updatedatstart', 'date')
            ->add('updatedatend', 'date')
            ->add('event', 'entity', array(
                'class' => 'InflBackEndDBBundle:Event',
                'property' => 'title',
                'placeholder' => 'Any',
            ));
    }

    /**
     * @param OptionsResolverInterface $resolver
     */
    public function setDefaultOptions(OptionsResolverInterface $resolver)
    {
        $resolver->setDefaults(array(
            'data_class' => 'Infl\BackEnd\DBBundle\Entity\CategorySearch'
        ));
    }

    /**
     * @return string
     */
    public function getName()
    {
        return 'infl_backend_dbbundle_categorysearch';
    }
}