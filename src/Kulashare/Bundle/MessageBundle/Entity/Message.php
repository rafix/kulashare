<?php 

namespace Kulashare\Bundle\MessageBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Message
 *
 * @ORM\Table(name="kulashare_messages")
 * @ORM\Entity(repositoryClass="Kulashare\Bundle\MessageBundle\Entity\MessageRepository")
 */
class Message
{   

    /**
     * @var integer
     *
     * @ORM\Column(name="id", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    protected $id;

    /**
     * @var string
     *
     * @ORM\Column(name="subject", type="string")
     */
    protected $subject;

    /**
     * @var Kulashare\Bundle\CustomerBundle\Entity\Customer
     *
     * @ORM\ManyToOne(targetEntity="Kulashare\Bundle\CustomerBundle\Entity\Customer")
     * @ORM\JoinColumn(name="user_receiver", referencedColumnName="id")
     */
    private $userReceiver;

/**
     * @var Kulashare\Bundle\CustomerBundle\Entity\Customer
     *
     * @ORM\ManyToOne(targetEntity="Kulashare\Bundle\CustomerBundle\Entity\Customer")
     * @ORM\JoinColumn(name="user_author", referencedColumnName="id")
     */
    protected $author;

     /**
     * @var string
     *
     * @ORM\Column(name="comment", type="string")
     */
    protected $comment;

    /**
     * @var string
     *
     * @ORM\Column(name="state", type="string")
     */
    protected $state;

    
    

   /**
     * @var datetime
     *
     * @ORM\Column(name="createAt", type="datetime")
     */
    protected $createdAt;

    /**
     * @var datetime
     *
     * @ORM\Column(name="updateAt", type="datetime")
     */
    protected $updatedAt;

    /**
     * Constructor.
     */
    public function __construct()
    {
        $this->createdAt = new \DateTime();
        $this->updateAt = new \DateTime();
    }

    /**
     * {@inheritdoc}
     */
    public function getId()
    {
        return $this->id;
    }

   

   

    /**
     * {@inheritdoc}
     */
    public function getComment()
    {
        return $this->comment;
    }

    /**
     * {@inheritdoc}
     */
    public function setComment($comment = null)
    {
        $this->comment = $comment;

        return $this;
    }

    /**
     * {@inheritdoc}
     */
    public function getState()
    {
        return $this->state;
    }

    /**
     * {@inheritdoc}
     */
    public function setState($state)
    {
        $this->state = $state;

        return $this;
    }

   /**
     * Get Author
     *
     * @return \Kulashare\Bundle\CustomerBundle\Entity\Customer
     */
    public function getAuthor()
    {
        return $this->author;
    }

    /**
     * Set Author
     *
     * @param \Kulashare\Bundle\CustomerBundle\Entity\Customer $author
     *
     * @return Message
     */
    public function setAuthor($author)
    {
        $this->author = $author;

        return $this;
    }
    /**
     * Get userReceiver
     *
     * @return \Kulashare\Bundle\CustomerBundle\Entity\Customer
     */
    public function getReceiver()
    {
        return $this->userReceiver;
    }

    /**
     * Set Receiver
     *
     * @param \Kulashare\Bundle\CustomerBundle\Entity\Customer $userReceiver
     *
     * @return Message
     */
    public function setReceiver($userReceiver)
    {
        $this->userReceiver = $userReceiver;

        return $this;
    }
    /**
     * Get endDate
     *
     * @return \DateTime
     */
    public function getCreatedAt()
    {
        return $this->createdAt;
    }

    /**
    * @param \DateTime $createAt
     *
     * @return Message
     */
    public function setCreatedAt(\DateTime $createdAt)
    {
        $this->createdAt = $createdAt;

        return $this;
    }

    /**
     * Get endDate
     *
     * @return \DateTime
     */
    public function getUpdatedAt()
    {
        return $this->updatedAt;
    }

    /**
    * @param \DateTime $updateAt
     *
     * @return Message
     */

    public function setUpdatedAt(\DateTime $updatedAt)
    {
        $this->updatedAt = $updatedAt;

        return $this;
    }

    /**
     * @return Kulashare\Bundle\CustomerBundle\Entity\Customer
     */
    public function getUserReceiver()
    {
        return $this->userReceiver;
    }

    /**
     * @param Kulashare\Bundle\CustomerBundle\Entity\Customer $userReceiver
     */
    public function setUserReceiver($userReceiver)
    {
        $this->userReceiver = $userReceiver;
    }

    /**
     * @return string
     */
    public function getSubject()
    {
        return $this->subject;
    }

    /**
     * @param string $subject
     */
    public function setSubject($subject)
    {
        $this->subject = $subject;
    }


}
 ?>