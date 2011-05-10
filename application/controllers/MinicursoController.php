<?php

class MinicursoController extends Zend_Controller_Action
{

    public $nome_minicurso = null;
    public $nome = null;

    public function init()
    {
        /* Initialize action controller here */
    }

    public function indexAction()
    {
        // action body
    }

    public function cadastroAction()
    {
        $curso = $this->getRequest()->getParam('id_minicurso');
        $vcurso = new Core_Validate_Curso();
        $form = new Application_Form_Minicurso();

        


        if($vcurso->isValid($curso))
        {
            $this->view->curso= utf8_encode($vcurso->dados['nome_minicurso']);
            $form->populate(array('id_minicurso'=>$curso)); 
        }else{
            return $this->_redirect('/minicurso');
        }


        //** Rotina de tratamento do formulario
        if($this->getRequest()->isPost())
        {
            if ($form->isValid($_POST)) {
                // success!
                $form = "<strong>Inscrição Efetuada.</strong>";
            } else {
                // failure!
                $form->populate($_POST); 
            }
        }

        $this->view->form = $form;

    }




}





