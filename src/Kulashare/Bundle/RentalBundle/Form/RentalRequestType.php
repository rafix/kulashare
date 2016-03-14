<?php

namespace Kulashare\Bundle\KulashareRentalsBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\HiddenType;
use Symfony\Component\Form\Extension\Core\Type\TimeType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class RentalRequestType extends AbstractType
{
    /**
     * @param FormBuilderInterface $builder
     * @param array $options
     */
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('product_id', HiddenType::class, array('data' => $product_id ))
            ->add('user_id', HiddenType::class, array('data' => $user_id ))
            ->add('user_rental', HiddenType::class, array('data' => $user_rental ))
            ->add('createdatstart', TimeType::class)
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
    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults(array(
            'data_class' => 'Infl\BackEnd\DBBundle\Entity\CategorySearch'
        ));
    }

    /**
     * @return string
     */
    public function getBlockPrefix()
    {
        return 'infl_backend_dbbundle_categorysearch';
    }
}