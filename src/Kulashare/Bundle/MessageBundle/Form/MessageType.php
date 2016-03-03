<?php

namespace Kulashare\Bundle\MessageBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolverInterface;

class MessageType extends AbstractType
{
    /**
     * @param FormBuilderInterface $builder
     * @param array                $options
     */
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('subject')
            ->add('comment')
            ->add('state')
            ->add('createdAt')
            ->add('updatedAt')
            ->add('userReceiver')
            ->add('author')
        ;
    }

    /**
     * @param OptionsResolverInterface $resolver
     */
    public function setDefaultOptions(OptionsResolverInterface $resolver)
    {
        $resolver->setDefaults(array(
            'data_class' => 'Kulashare\Bundle\MessageBundle\Entity\Message',
        ));
    }

    /**
     * @return string
     */
    public function getName()
    {
        return 'kulashare_bundle_messagebundle_message';
    }
}
