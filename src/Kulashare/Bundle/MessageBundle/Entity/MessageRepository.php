<?php

namespace Kulashare\Bundle\MessageBundle\Entity;

use Sylius\Bundle\ResourceBundle\Doctrine\ORM\EntityRepository;

/**
 * RentalsRepository.
 *
 * This class was generated by the Doctrine ORM. Add your own custom
 * repository methods below.
 */
class MessageRepository extends EntityRepository
{
    public function findMessagesByUser($user)
    {
        return $this->getEntityManager()
            ->createQuery('
              SELECT m FROM KulashareMessageBundle:Message m
                LEFT JOIN m.userReceiver  r
                LEFT JOIN m.author a
                WHERE r.id = :user
                OR  a.id = :user
                ORDER BY m.createdAt DESC
            ')
            ->setParameter('user', $user)
            ->getResult();
    }
}
