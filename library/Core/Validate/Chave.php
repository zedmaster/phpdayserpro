<?php

class Core_Validate_Chave extends Zend_Validate_Abstract
{
    public $dados;

    protected $_messageTemplates = array(
        'invalida' => "Chave inválida."
    );


    public function isValid($value)
    {
        $this->_setValue($value);

        $tb = new Application_Model_DbTable_User(); 
        $select = $tb->select();
        $select->where('chave = ?', (string)$value);
        $row = $tb->fetchRow($select);

        if($row['chave'] != $value)
        {
            $this->_error('invalida');
            return false;
        }

        $this->dados = $row;

        return true;
    }
}
