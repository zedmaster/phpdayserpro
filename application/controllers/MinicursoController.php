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
        $vchave = new Core_Validate_Chave();
        $form = new Application_Form_Minicurso();

        


        if($vcurso->isValid($curso))
        {
            $this->view->curso= $vcurso->dados['nome_minicurso'];
            $form->populate(array('id_minicurso'=>$curso)); 
        }else{
            return $this->_redirect('/minicurso');
        }


        //** Rotina de tratamento do formulario
        if($this->getRequest()->isPost())
        {
            if ($form->isValid($_POST)) {
                // success!

                try{
                $vchave->isValid($_POST['chave']);
                $_POST['id_user'] = $vchave->dados['id_user'];
                $_POST['user'] = $vchave->dados;
                $_POST['curso'] = $vcurso->dados;

                $minicurso = new Application_Model_Minicurso();
                $minicurso->cadastrarAluno($_POST);

                $form = "<strong>Inscrição Efetuada.</strong>";
                }catch(Exception $e){
                    $this->view->msg = $e->getMessage();
                    $form->populate($_POST); 
                }
            } else {
                // failure!
                $form->populate($_POST); 
            }
        }

        $this->view->form = $form;

    }




}





