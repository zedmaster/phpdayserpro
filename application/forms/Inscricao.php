<?php

class Application_Form_Inscricao extends Zend_Form
{

    public function init()
    {
        $chave = new Core_Validate_Chave();

        $key = new Zend_Form_Element_Text('chave');
        $key->setLabel('Chave:')
            ->setRequired(true)
            ->addValidator($chave)
            ->addValidator('StringLength', true, array(4, 255));

        $submit = new Zend_Form_Element_Submit('enviar');
        $submit->class = 'formsubmit';
        $submit->setValue('Enviar');


        $this->addElements(array(
            $key,
            $submit
        ));

    }


}

