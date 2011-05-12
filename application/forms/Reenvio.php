<?php

class Application_Form_Reenvio extends Zend_Form
{

    public function init()
    {
        
        $vemail = new Core_Validate_Email();

        $email = new Zend_Form_Element_Text('email');
        $email->setLabel('E-mail:')
            ->setRequired(true)
            ->addValidator('EmailAddress')
            ->addValidator($vemail)
            ->addValidator('StringLength', true, array(4, 255));



        $submit = new Zend_Form_Element_Submit('enviar');
        $submit->class = 'formsubmit';
        $submit->setValue('Enviar');


        $this->addElements(array(
            $email,
            $submit
        ));

    }


}

