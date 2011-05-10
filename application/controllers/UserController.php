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
                $user = new Application_Model_User();
                if($user->isUserExist($_POST['email']))
                {
                   $form = "Usuário existente.<br/><a href=\"/minicurso/\">Escolha um mini-curso.</a>"; 
                }else{
                    try{
                        $user = new Application_Model_User();
                        $user->insert($_POST);
                        $form = "Cadastro realizado com sucesso.<br/>".
                                "Favor confira no seu e-mail a chave de acesso.<br>".
                                "<a href=\"/minicurso\">Escolha um mini-curso.</a>";
                    }catch(Exception $e){
                        $form = $e->getMessage();
                    }
                }
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





