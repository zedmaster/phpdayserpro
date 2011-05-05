<?php

class Application_Form_Minicurso extends Zend_Form
{

    public function init()
    {
        $key = new Zend_Form_Element_Hidden('key');
        $key->setLabel('Key:')
            ->setRequired(true)
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

