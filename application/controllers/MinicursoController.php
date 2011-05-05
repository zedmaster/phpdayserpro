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
        $key = $this->getRequest()->getParam('key');
        $form = new Application_Form_Minicurso();

        try{
            $this->_validaKey($key);
            $this->view->nome = $this->nome;
        }catch(Exception $e){
            $this->view->form = $e->getMessage();
            return;
        }


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

    protected function _validaKey($key)
    {
        
    }


    public function keyAction()
    {
        $form = new Application_Form_Key();

        //** Rotina de tratamento do formulario
        if($this->getRequest()->isPost())
        {
            if ($form->isValid($_POST)) {
                // success!
                return $this->_forward('cadastro');
            } else {
                // failure!
                $form->populate($_POST); 
            }
        }

        $this->view->form = $form;
    }


}





