<?php

namespace QuizBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Component\HttpFoundation\Request;

class DefaultController extends Controller
{
    /**
     * @Route("/")
     */
    public function indexAction()
    {
    	$repository = $this->getDoctrine()->getRepository('QuizBundle:QuizCategory');
    	$quiz_category = $repository->findAll();
        return $this->render('QuizBundle:Default:index.html.twig',array("category"=>$quiz_category));
    }
    /**
     * @Route(path ="/quiz {category} {id}", name="selected_quiz", requirements = { "id" = "\d+" })
     */
    public function showQuiz($id)
    {
		$repository = $this->getDoctrine()->getRepository('QuizBundle:QuizCategory');
		$quiz_category = $repository->findBy(array('id' => $id ));

	    $repository2 = $this->getDoctrine()->getRepository('QuizBundle:Questions');
	    $questions= $repository2->findBy(array('idQuizCategory' => $id ));

	    return $this->render('QuizBundle:Default:show.html.twig',array("category"=>$quiz_category[0], "questions"=>$questions));

    }
    /**
     * @Route(path ="/answer {category} {id}", name="answer_quiz", requirements = { "id" = "\d+" })
     */

    public function showAnswer(Request $request, $id){

    	$repository = $this->getDoctrine()->getRepository('QuizBundle:QuizCategory');
		$quiz_category = $repository->findBy(array('id' => $id ));

	    $repository2 = $this->getDoctrine()->getRepository('QuizBundle:Questions');
	    $questions= $repository2->findBy(array('idQuizCategory' => $id ));
	    $answers=$request->request;
	    $score=0;
	    foreach ($questions as $question){
	    	$ganswer[]= $question->getReponse();
	    }
	    foreach ($answers as $answer){
	    	$userAnswers[]= $answer;
	    }
	    $numQuest=count($userAnswers);
	    for ($i=0; $i <$numQuest ; $i++) { 
	    	if(in_array($userAnswers[$i], $ganswer)){
	    		$score++;
	    	}
	    }
    	return $this->render('QuizBundle:Default:answer.html.twig',array("category"=>$quiz_category[0], "questions"=>$questions, "userAnswers"=>$userAnswers, "Score"=>$score));
    }
}
