<?php

class App_View_Helper_ListaColaboradoresEmail extends Zend_View_Helper_Abstract
{

    public function listaColaboradoresEmail()
    {
        $html = "";

        $table = new Application_Model_DbTable_Minicurso();
        $db = $table->getAdapter();
        $stmt = $db->query('
                    SELECT a.email
                    FROM (
                        SELECT a.email
                        FROM user a INNER JOIN palestra_palestrante b USING(id_user)
                        UNION
                        SELECT c.email
                        FROM user c INNER JOIN minicurso_tutor d USING(id_user)
                    ) as a
                    ORDER BY a.email
        ');
        $rows = $stmt->fetchAll(PDO::FETCH_CLASS);
        

        foreach($rows as $val)
        {
            $html .= "{$val->email}, ";
        }

        return $html;
    }
}
