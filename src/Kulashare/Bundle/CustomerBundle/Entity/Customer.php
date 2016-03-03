<?php

namespace Kulashare\Bundle\CustomerBundle\Entity;

use Doctrine\ORM\Mapping as ORM;
//use Sylius\Component\User\Model\Customer as BaseCustomer;
use Sylius\Component\Core\Model\Customer as BaseCustomer;

/**
 * Customer.
 *
 * @ORM\Table()
 * @ORM\Entity
 */
class Customer extends BaseCustomer
{
    /**
     * @var string
     *
     * @ORM\Column(name="streetAddress1", type="string", length=255)
     */
    private $phone;

    /**
     * @var string
     */
    private $streetAddress1;

    /**
     * @var string
     * @ORM\Column(name="billingStreetAddress1", type="string", length=255)
     */
    private $billingStreetAddress1;

    /**
     * @var string
     * @ORM\Column(name="city", type="string", length=255)
     */
    private $city;

    /**
     * @var string
     * @ORM\Column(name="state", type="string", length=255)
     */
    private $state;

    /**
     * @var string
     * @ORM\Column(name="postalCode", type="string", length=255)
     */
    private $postalCode;

    /**
     * @var int
     * @ORM\Column(name="notifyOnLead", type="integer")
     */
    private $notifyOnLead;

    /**
     * @var int
     * @ORM\Column(name="notifyOnSale", type="integer")
     */
    private $notifyOnSale;

    /**
     * @var string
     * @ORM\Column(name="country", type="string", length=255)
     */
    private $country;

    /**
     * Set phone.
     *
     * @param string $phone
     *
     * @return Customer
     */
    public function setPhone($phone)
    {
        $this->phone = $phone;

        return $this;
    }

    /**
     * Get phone.
     *
     * @return string
     */
    public function getPhone()
    {
        return $this->phone;
    }

    /**
     * Set billingStreetAddress1.
     *
     * @param string $billingStreetAddress1
     *
     * @return Customer
     */
    public function setBillingStreetAddress1($billingStreetAddress1)
    {
        $this->billingStreetAddress1 = $billingStreetAddress1;

        return $this;
    }

    /**
     * Get billingStreetAddress1.
     *
     * @return string
     */
    public function getBillingStreetAddress1()
    {
        return $this->billingStreetAddress1;
    }

    /**
     * Set billingStreetAddress1.
     *
     * @param string $billingStreetAddress1
     *
     * @return Customer
     */
    public function setStreetAddress1($streetAddress1)
    {
        $this->streetAddress1 = $streetAddress1;

        return $this;
    }

    /**
     * Get billingStreetAddress1.
     *
     * @return string
     */
    public function getStreetAddress1()
    {
        return $this->streetAddress1;
    }

    /**
     * Set city.
     *
     * @param string $city
     *
     * @return Customer
     */
    public function setCity($city)
    {
        $this->city = $city;

        return $this;
    }

    /**
     * Get city.
     *
     * @return string
     */
    public function getCity()
    {
        return $this->city;
    }

    /**
     * Set state.
     *
     * @param string $state
     *
     * @return Customer
     */
    public function setState($state)
    {
        $this->state = $state;

        return $this;
    }

    /**
     * Get state.
     *
     * @return string
     */
    public function getState()
    {
        return $this->state;
    }

    /**
     * Set postalCode.
     *
     * @param string $postalCode
     *
     * @return Customer
     */
    public function setPostalCode($postalCode)
    {
        $this->postalCode = $postalCode;

        return $this;
    }

    /**
     * Get postalCode.
     *
     * @return string
     */
    public function getPostalCode()
    {
        return $this->postalCode;
    }

    /**
     * Set notifyOnLead.
     *
     * @param int $notifyOnLead
     *
     * @return Customer
     */
    public function setNotifyOnLead($notifyOnLead)
    {
        $this->notifyOnLead = $notifyOnLead;

        return $this;
    }

    /**
     * Get notifyOnLead.
     *
     * @return int
     */
    public function getNotifyOnLead()
    {
        return $this->notifyOnLead;
    }

    /**
     * Set notifyOnSale.
     *
     * @param int $notifyOnSale
     *
     * @return Customer
     */
    public function setNotifyOnSale($notifyOnSale)
    {
        $this->notifyOnSale = $notifyOnSale;

        return $this;
    }

    /**
     * Get notifyOnSale.
     *
     * @return int
     */
    public function getNotifyOnSale()
    {
        return $this->notifyOnSale;
    }

    /**
     * Set country.
     *
     * @param string $country
     *
     * @return Customer
     */
    public function setCountry($country)
    {
        $this->country = $country;

        return $this;
    }

    /**
     * Get country.
     *
     * @return string
     */
    public function getCountry()
    {
        return $this->country;
    }

    /**
     * Add order.
     *
     * @param \Sylius\Component\Core\Model\Order $order
     *
     * @return Customer
     */
    public function addOrder(\Sylius\Component\Core\Model\Order $order)
    {
        $this->orders[] = $order;

        return $this;
    }

    /**
     * Remove order.
     *
     * @param \Sylius\Component\Core\Model\Order $order
     */
    public function removeOrder(\Sylius\Component\Core\Model\Order $order)
    {
        $this->orders->removeElement($order);
    }

    // public function __toString(){
    //     return $thist->getName();
    // }
}
