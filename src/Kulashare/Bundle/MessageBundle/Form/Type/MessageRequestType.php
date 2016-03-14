<?php

namespace Kulashare\Bundle\KulashareMessageBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\DateTimeType;
use Symfony\Component\Form\Extension\Core\Type\HiddenType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolverInterface;

class MessageRequestType extends AbstractType
{
    /**
     * @param FormBuilderInterface $builder
     * @param array $options
     */
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('subject', TextType::class)
            ->add('comment', TextType::class)
            ->add('state', HiddenType::class, array('data' => 'sent' )
            )
            ->add('author', HiddenType::class, array('data' => $user_author )
            )
            ->add('user_receiver', HiddenType::class, array('data' => $user_receiver )
            )
            ->add('createdat', DateTimeType::class)
           ->add('updatedat', 'date')
        ;
           
            
    }

    

    /**
     * @return string
     */
    public function getBlockPrefix()
    {
        return 'kulashare_messages';
    }
}