<?php

namespace Kulashare\Bundle\RentalBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Rentals
 *
 * @ORM\Table(name="kulashare_rentals")
 * @ORM\Entity(repositoryClass="Kulashare\Bundle\RentalBundle\Entity\RentalsRepository")
 */
class Rentals
{
    /**
     * @var integer
     *
     * @ORM\Column(name="id", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    private $id;

/**
     * @var Kulashare\Bundle\CustomerBundle\Entity\Customer
     *
     * @ORM\ManyToOne(targetEntity="Kulashare\Bundle\CustomerBundle\Entity\Customer")
     * @ORM\JoinColumn(name="user_rental", referencedColumnName="id")
     */
    private $userRental;

/**
     * @var Kulashare\Bundle\CustomerBundle\Entity\Customer
     *
     * @ORM\ManyToOne(targetEntity="Kulashare\Bundle\CustomerBundle\Entity\Customer")
     * @ORM\JoinColumn(name="user_lender", referencedColumnName="id")
     */
    private $userLender;

/**
     * @var Kulashare\Bundle\ProductBundle\Entity\Product
     *
     * @ORM\ManyToOne(targetEntity="Kulashare\Bundle\ProductBundle\Entity\Product")
     * @ORM\JoinColumn(name="product_id", referencedColumnName="id")
     */
    private $product;

/**
     * @var datetime
     *
     * @ORM\Column(name="start_date", type="datetime")
     */
    private $start_date;
/**
     * @var integer
     *
     * @ORM\Column(name="end_date", type="datetime")
     */
    private $end_date;

/**
     * @var string
     *
     * @ORM\Column(name="RentalState", type="string", length=20)
     */
    /*pending,aproved,rejected,completed*/
    private $rental_state;
  

    /**
     * Get id
     *
     * @return integer
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * Set startDate
     *
     * @param \DateTime $startDate
     *
     * @return Rentals
     */
    public function setStartDate($startDate)
    {
        $this->start_date = $startDate;

        return $this;
    }

    /**
     * Get startDate
     *
     * @return \DateTime
     */
    public function getStartDate()
    {
        return $this->start_date;
    }

    /**
     * Set endDate
     *
     * @param \DateTime $endDate
     *
     * @return Rentals
     */
    public function setEndDate($endDate)
    {
        $this->end_date = $endDate;

        return $this;
    }

    /**
     * Get endDate
     *
     * @return \DateTime
     */
    public function getEndDate()
    {
        return $this->end_date;
    }

    /**
     * Set rentalState
     *
     * @param string $rentalState
     *
     * @return Rentals
     */
    public function setRentalState($rentalState)
    {
        $this->rental_state = $rentalState;

        return $this;
    }

    /**
     * Get rentalState
     *
     * @return string
     */
    public function getRentalState()
    {
        return $this->rental_state;
    }

    /**
     * Set userRental
     *
     * @param \Kulashare\Bundle\CustomerBundle\Entity\Customer $userRental
     *
     * @return Rentals
     */
    public function setUserRental(\Kulashare\Bundle\CustomerBundle\Entity\Customer $userRental = null)
    {
        $this->userRental = $userRental;

        return $this;
    }

    /**
     * Get userRental
     *
     * @return \Kulashare\Bundle\CustomerBundle\Entity\Customer
     */
    public function getUserRental()
    {
        return $this->userRental;
    }

    /**
     * Set userLender
     *
     * @param \Kulashare\Bundle\CustomerBundle\Entity\Customer $userLender
     *
     * @return Rentals
     */
    public function setUserLender(\Kulashare\Bundle\CustomerBundle\Entity\Customer $userLender = null)
    {
        $this->userLender = $userLender;

        return $this;
    }

    /**
     * Get userLender
     *
     * @return \Kulashare\Bundle\CustomerBundle\Entity\Customer
     */
    public function getUserLender()
    {
        return $this->userLender;
    }

    /**
     * Set product
     *
     * @param \Kulashare\Bundle\ProductBundle\Entity\Product $product
     *
     * @return Rentals
     */
    public function setProduct(\Kulashare\Bundle\ProductBundle\Entity\Product $product = null)
    {
        $this->product = $product;

        return $this;
    }

    /**
     * Get product
     *
     * @return \Kulashare\Bundle\ProductBundle\Entity\Product
     */
    public function getProduct()
    {
        return $this->product;
    }
}
