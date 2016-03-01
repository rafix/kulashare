<?php

namespace Kulashare\Bundle\KulashareMessageBundle\Form;

use Symfony\Component\Form\AbstractType;
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
            ->add('subject', 'text'),
            ->add('comment', 'text'),
            ->add('state', 'hidden', array('data' => 'sent' ),
            ))
            ->add('author', 'hidden', array('data' => $user_author ),
            ))
            ->add('user_receiver', 'hidden', array('data' => $user_receiver ),
            ))
            ->add('createdat', 'datetime')
           ->add('updatedat', 'date')
           
            
    }

    

    /**
     * @return string
     */
    public function getName()
    {
        return 'kulashare_messages';
    }
}