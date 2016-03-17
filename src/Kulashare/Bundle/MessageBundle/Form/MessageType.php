<?php

namespace Kulashare\Bundle\MessageBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class MessageType extends AbstractType
{
    /**
     * @param FormBuilderInterface $builder
     * @param array                $options
     */
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('author')
            ->add('userReceiver')
            ->add('state')
            ->add('subject')
            ->add('comment', TextareaType::class)
        ;
    }

    /**
     * @param OptionsResolverInterface $resolver
     */
    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults(array(
            'data_class' => 'Kulashare\Bundle\MessageBundle\Entity\Message',
        ));
    }

    /**
     * @return string
     */
    public function getBlockPrefix()
    {
        return 'kulashare_bundle_message';
    }
}
