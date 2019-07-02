<?php

namespace QuizBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Questions
 *
 * @ORM\Table(name="questions")
 * @ORM\Entity
 */
class Questions
{
    /**
     * @var integer
     *
     * @ORM\Column(name="id_quiz_category", type="integer", nullable=false)
     */
    private $idQuizCategory;

    /**
     * @var string
     *
     * @ORM\Column(name="question", type="string", length=255, nullable=false)
     */
    private $question;

    /**
     * @var string
     *
     * @ORM\Column(name="reponse_A", type="string", length=255, nullable=false)
     */
    private $reponseA;

    /**
     * @var string
     *
     * @ORM\Column(name="reponse_B", type="string", length=255, nullable=false)
     */
    private $reponseB;

    /**
     * @var string
     *
     * @ORM\Column(name="reponse_C", type="string", length=255, nullable=false)
     */
    private $reponseC;

    /**
     * @var string
     *
     * @ORM\Column(name="reponse", type="string", length=255, nullable=false)
     */
    private $reponse;

    /**
     * @var integer
     *
     * @ORM\Column(name="id_question", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $idQuestion;



    /**
     * Set idQuizCategory
     *
     * @param integer $idQuizCategory
     * @return Questions
     */
    public function setIdQuizCategory($idQuizCategory)
    {
        $this->idQuizCategory = $idQuizCategory;

        return $this;
    }

    /**
     * Get idQuizCategory
     *
     * @return integer 
     */
    public function getIdQuizCategory()
    {
        return $this->idQuizCategory;
    }

    /**
     * Set question
     *
     * @param string $question
     * @return Questions
     */
    public function setQuestion($question)
    {
        $this->question = $question;

        return $this;
    }

    /**
     * Get question
     *
     * @return string 
     */
    public function getQuestion()
    {
        return $this->question;
    }

    /**
     * Set reponseA
     *
     * @param string $reponseA
     * @return Questions
     */
    public function setReponseA($reponseA)
    {
        $this->reponseA = $reponseA;

        return $this;
    }

    /**
     * Get reponseA
     *
     * @return string 
     */
    public function getReponseA()
    {
        return $this->reponseA;
    }

    /**
     * Set reponseB
     *
     * @param string $reponseB
     * @return Questions
     */
    public function setReponseB($reponseB)
    {
        $this->reponseB = $reponseB;

        return $this;
    }

    /**
     * Get reponseB
     *
     * @return string 
     */
    public function getReponseB()
    {
        return $this->reponseB;
    }

    /**
     * Set reponseC
     *
     * @param string $reponseC
     * @return Questions
     */
    public function setReponseC($reponseC)
    {
        $this->reponseC = $reponseC;

        return $this;
    }

    /**
     * Get reponseC
     *
     * @return string 
     */
    public function getReponseC()
    {
        return $this->reponseC;
    }

    /**
     * Set reponse
     *
     * @param string $reponse
     * @return Questions
     */
    public function setReponse($reponse)
    {
        $this->reponse = $reponse;

        return $this;
    }

    /**
     * Get reponse
     *
     * @return string 
     */
    public function getReponse()
    {
        return $this->reponse;
    }

    /**
     * Get idQuestion
     *
     * @return integer 
     */
    public function getIdQuestion()
    {
        return $this->idQuestion;
    }
}
