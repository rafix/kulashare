<?php

namespace Kulashare\Bundle\ProductBundle\Entity;

use Sylius\Component\Core\Model\ProductInterface;
use Sylius\Component\Core\Model\Product as BaseProduct;
use Sylius\Component\Core\Model\User;


use Doctrine\ORM\Mapping as ORM;

/**
 * Product
 *
 * @ORM\Table()
 * @ORM\Entity
 */
class Product extends BaseProduct
{
    
    /**
     * @var integer
     *
     * @ORM\Column(name="status", type="integer")
     */
    private $status;

    /**
     * @var string
     *
     * @ORM\Column(name="TypeRental", type="string", length=255)
     */
    private $typeRental;

    /**
     * @var float
     *
     * @ORM\Column(name="latitud", type="float")
     */
    private $latitud;

    /**
     * @var float
     *
     * @ORM\Column(name="longitud", type="float")
     */
    private $longitud;   

    /**
     * @var User
     */
    private $userCreated;
    


    public function getUserCreated()
    {
        return $this->userCreated;
    }

    public function setUserCreated(User $user = null)
    {
        if ($this->userCreated !== $user) {
            $this->userCreated = $user;            
        }
    }



    /**
     * Set status
     *
     * @param integer $status
     *
     * @return Product
     */
    public function setStatus($status)
    {
        $this->status = $status;

        return $this;
    }

    /**
     * Get status
     *
     * @return integer
     */
    public function getStatus()
    {
        return $this->status;
    }

    /**
     * Set typeRental
     *
     * @param string $typeRental
     *
     * @return Product
     */
    public function setTypeRental($typeRental)
    {
        $this->typeRental = $typeRental;

        return $this;
    }

    /**
     * Get typeRental
     *
     * @return string
     */
    public function getTypeRental()
    {
        return $this->typeRental;
    }

    /**
     * Set latitud
     *
     * @param float $latitud
     *
     * @return Product
     */
    public function setLatitud($latitud)
    {
        $this->latitud = $latitud;

        return $this;
    }

    /**
     * Get latitud
     *
     * @return float
     */
    public function getLatitud()
    {
        return $this->latitud;
    }

    /**
     * Set longitud
     *
     * @param float $longitud
     *
     * @return Product
     */
    public function setLongitud($longitud)
    {
        $this->longitud = $longitud;

        return $this;
    }

    /**
     * Get longitud
     *
     * @return float
     */
    public function getLongitud()
    {
        return $this->longitud;
    }
}

