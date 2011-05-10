<?php

class Application_Form_Chave extends Zend_Form
{



    public function init()
    {
        //$this->addElementPrefixPath('Core_Validate',APPLICATION_PATH.'../library/Core/Validate/','validate');
        $chave = new Core_Validate_Chave();

        $key = new Zend_Form_Element_Text('chave');
        $key->setLabel('Chave:')
            ->setRequired(true)
            ->addValidator($chave)
            ->addValidator('StringLength', true, array(4, 255));

        $idcurso = new Zend_Form_Element_Text('id_minicurso');
        $idcurso->setRequired(true)
            ->addValidator($curso)
            ->addValidator('StringLength', true, array(4, 255));



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

