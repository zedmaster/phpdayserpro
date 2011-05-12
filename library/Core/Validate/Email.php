<?php

class Core_Validate_Email extends Zend_Validate_Abstract
{
    public $dados;

    protected $_messageTemplates = array(
        'invalida' => "E-mail não consta."
    );


    public function isValid($value)
    {
        $this->_setValue($value);

        $tb = new Application_Model_DbTable_User(); 
        $select = $tb->select();
        $select->where('email = ?', (string)$value);
        $row = $tb->fetchRow($select);

        if($row['email'] != $value)
        {
            $this->_error('invalida');
            return false;
        }

        $this->dados = $row;

        return true;
    }
}
