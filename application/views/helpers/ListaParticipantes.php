<?php

class App_View_Helper_ListaParticipantes extends Zend_View_Helper_Abstract
{

    public function listaParticipantes()
    {
        $html = "";

        $table = new Application_Model_DbTable_Minicurso();
        $db = $table->getAdapter();
        $stmt = $db->query('SELECT * FROM  user ORDER BY nome');
        $rows = $stmt->fetchAll(PDO::FETCH_CLASS);
        

        $html .= "  <ul>";
        foreach($rows as $val)
        {
            $html .= "      <li>{$val->nome} - {$val->email}</li>";
        }
        $html .= "  </ul>";

        return $html;
    }
}
