<?php

class App_View_Helper_ListaUsuarioEmail extends Zend_View_Helper_Abstract
{

    public function listaUsuarioEmail()
    {
        $html = "";

        $table = new Application_Model_DbTable_Minicurso();
        $db = $table->getAdapter();
        $stmt = $db->query('
                        SELECT email
                        FROM user 
                        ORDER BY email
        ');
        $rows = $stmt->fetchAll(PDO::FETCH_CLASS);
        

        foreach($rows as $val)
        {
            $html .= "{$val->email}, ";
        }

        return $html;
    }
}
