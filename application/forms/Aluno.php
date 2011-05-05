<?php

class Application_Form_Aluno extends Zend_Form
{
    public function init()
    {
        $nome = new Zend_Form_Element_Text('nome');
        $nome->setLabel('Nome:')
                        ->setRequired(true)
                        ->addValidator('StringLength', true, array(4, 255));


        $email = new Zend_Form_Element_Text('email');
        $email->setLabel('E-mail:')
                        ->setRequired(true)
                        ->addValidator('EmailAddress')
                        ->addValidator('StringLength', true, array(4, 255));


        $site = new Zend_Form_Element_Text('site');
        $site->setLabel('Site:')
                        ->addValidator('StringLength', false, array(0, 255));

        $twitter = new Zend_Form_Element_Text('twitter');
        $twitter->setLabel('Twitter:')
                        ->addValidator('StringLength', false, array(0, 255));

        $curriculo = new Zend_Form_Element_Textarea('minicurriculo');
        $curriculo->setLabel('Mini-Currículo:')
                        ->addValidator('StringLength', false, array(0, 3000));

        $cidade = new Zend_Form_Element_Text('cidade');
        $cidade->setLabel('cidade:')
                        ->addValidator('StringLength', false, array(0, 255));

        $estado = new Zend_Form_Element_Text('estado');
        $estado->setLabel('estado:')
                        ->addValidator('StringLength', false, array(0, 2));

    
        $submit = new Zend_Form_Element_Submit('enviar');
        $submit->class = 'formsubmit';
        $submit->setValue('Enviar');


        $this->addElements(array(
            $nome,
            $email,
            $site,
            $twitter,
            $curriculo,
            $cidade,
            $estado,
            $id_minicurso,
            $submit
        ));

    }


}

