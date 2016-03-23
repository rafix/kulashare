<?php

namespace Kulashare\Bundle\ProductBundle\Form\Type;

use Sylius\Bundle\CoreBundle\Form\Type\ProductTranslationType as BaseProductTranslationType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class ProductTranslationType extends BaseProductTranslationType
{
    /**
     * {@inheritdoc}
     */
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        parent::buildForm($builder, $options);
//        $builder->remove('metaKeywords');
//        $builder->remove('metaDescription');
    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults(array(
            'data_class' => 'Kulashare\Bundle\ProductBundle\Entity\ProductTranslation',
        ));
    }

    public function getName()
    {
        return 'sylius_product_translation';
    }
}
