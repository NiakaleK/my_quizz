<?php

namespace QuizBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * QuizCategory
 *
 * @ORM\Table(name="quiz_category")
 * @ORM\Entity
 */
class QuizCategory
{
    /**
     * @var string
     *
     * @ORM\Column(name="name", type="string", length=255, nullable=false)
     */
    private $name;

    /**
     * @var integer
     *
     * @ORM\Column(name="id", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $id;



    /**
     * Set name
     *
     * @param string $name
     * @return QuizCategory
     */
    public function setName($name)
    {
        $this->name = $name;

        return $this;
    }

    /**
     * Get name
     *
     * @return string 
     */
    public function getName()
    {
        return $this->name;
    }

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
     * @var varchar
     */
    private $image;


    /**
     * Set image
     *
     * @param \varchar $image
     * @return QuizCategory
     */
    public function setImage(\varchar $image)
    {
        $this->image = $image;

        return $this;
    }

    /**
     * Get image
     *
     * @return \varchar 
     */
    public function getImage()
    {
        return $this->image;
    }
}
