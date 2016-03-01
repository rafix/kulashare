<?php

namespace Kulashare\Bundle\ProductBundle\Form\Type;


use Sylius\Bundle\CoreBundle\Form\Type\ProductVariantType as BaseVariantType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\Form\FormEvent;
use Symfony\Component\Form\FormEvents;
use Sylius\Bundle\CoreBundle\EventListener;
use Sylius\Component\Core\Model\ImageInterface;
use Sylius\Bundle\CoreBundle\EventListener\ImageUploadListener;
use Sylius\Component\Core\Uploader\ImageUploader;
use Sylius\Component\Core\Model\Image;

class ProductVariantType extends BaseVariantType
{

    

    /**
     * {@inheritdoc}
     */
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        parent::buildForm($builder, $options);
        //$builder->remove('sku');
        //$builder->remove('pricingCalculator');
        $builder->remove('width');
        $builder->remove('height');
        //$builder->remove('depth');
        $builder->remove('weight');
        $builder->remove('availableOnDemand');
        //$builder->remove('availableOn');
        //$builder->remove('presentation');  
        $builder->addEventListener(
            FormEvents::PRE_SUBMIT,
            function (FormEvent $event) {
                // $help = new ImageUploader();
                // $image_= new ImageUploadListener($help);
                // $image_->uploadProductImage($event);
                $form = $event->getForm();
               
                // this would be your entity, i.e. SportMeetup
                // $data = $event->getData();
                // $variant = $form->getData(); 
                // print_r($event->getData());
                // die();
                 
            }
        );
         
        

    }
}