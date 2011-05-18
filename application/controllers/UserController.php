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

    /**
     * Cadastro de Usuarios
     *
     *
     */
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

    /**
     * Formulário de reenvio de chave
     *
     *
     */
    public function reenviarAction()
    {
        $form = new Application_Form_Reenvio();

        //** Rotina de tratamento do formulario
        if($this->getRequest()->isPost())
        {
            if ($form->isValid($_POST)) {
                // success!
                try{
                    $user = new Application_Model_User();
                    $rows = $user->novaChave($_POST['email']);
                    $user->enviarChave($rows);
                    $form = "Confira no seu e-mail a nova chave.";
                }catch(Exception $e){
                    $this->view->msg = "Ocorreu um erro ao enviar, por favor tente novamente.";
                }
            } else {
                // failure!
                $form->populate($_POST); 
            }
        }

        $this->view->form = $form;
    }

    public function inscricaoAction()
    {
         $form = new Application_Form_Inscricao();

        //** Rotina de tratamento do formulario
        if($this->getRequest()->isPost())
        {
            if ($form->isValid($_POST)) {
                // success!
                try{
                    $inscricao = new Application_Model_Inscricao();
                    $rows = $inscricao->insert($_POST['chave']);
                    $form = "Inscrição realizada com sucesso.";
                }catch(Exception $e){
                    $this->view->msg = $e->getMessage();
                }
            } else {
                // failure!
                $form->populate($_POST); 
            }
        }

        $this->view->form = $form;
    }


}







