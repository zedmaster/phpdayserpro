<?php

class Application_Model_DbTable_User extends Zend_Db_Table_Abstract
{

    protected $_name = 'user';
    protected $_key = 'id_user';


    public function getCols()
    {
        return $this->_getCols();
    }
}

