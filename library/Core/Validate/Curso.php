<?php

class Core_Validate_Curso extends Zend_Validate_Abstract
{
    public $dados;

    protected $_messageTemplates = array(
        'invalido' => "Curso inválido."
    );


    public function isValid($value)
    {
        $this->_setValue($value);

        if($value == "")
        {
            $this->_error('invalido');
            return false;
        }


        $tb = new Application_Model_DbTable_Vminicurso(); 
        $select = $tb->select();
        $select->where('id_minicurso = ?', (string)$value);
        $row = $tb->fetchRow($select);

        if($row['id_minicurso'] != $value)
        {
            $this->_error('invalido');
            return false;
        }

        $this->dados = $row;

        return true;
    }
}
