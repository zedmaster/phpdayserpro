<?php

class Application_Form_Minicurso extends Zend_Form
{

    public function init()
    {
        $chave = new Core_Validate_Chave();
        $curso = new Core_Validate_Curso();

        $key = new Zend_Form_Element_Text('chave');
        $key->setLabel('Chave:')
            ->setRequired(true)
            ->addValidator($chave)
            ->addValidator('StringLength', true, array(4, 255));

        $idcurso = new Zend_Form_Element_Hidden('id_minicurso');
        $idcurso->setRequired(true)
            ->addValidator($curso);



        $submit = new Zend_Form_Element_Submit('enviar');
        $submit->class = 'formsubmit';
        $submit->setValue('Enviar');


        $this->addElements(array(
            $key,
            $idcurso,
            $submit
        ));

    }


}

