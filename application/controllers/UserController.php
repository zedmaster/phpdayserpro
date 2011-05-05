<?php

class UserController extends Zend_Controller_Action
{

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
        $form = new Application_Form_Aluno();

        //** Rotina de tratamento do formulario
        if($this->getRequest()->isPost())
        {
            if ($form->isValid($_POST)) {
                // success!
                return $this->_forward('key','minicurso');
            } else {
                // failure!
                $form->populate($_POST); 
            }
        }

        $this->view->form = $form;
        $this->view->nome_minicurso = $this->nome_minicurso;
    }

    public function reenviarAction()
    {
        $form = new Application_Form_Reenvio();

        //** Rotina de tratamento do formulario
        if($this->getRequest()->isPost())
        {
            if ($form->isValid($_POST)) {
                // success!
            } else {
                // failure!
                $form->populate($_POST); 
            }
        }

        $this->view->form = $form;
    }


}





