<?php

class App_View_Helper_ListaInscritos extends Zend_View_Helper_Abstract
{

    public function listaInscritos()
    {
        $html = "";

        $table = new Application_Model_DbTable_Minicurso();
        $db = $table->getAdapter();
        $stmt = $db->query(' 
                SELECT 
                       a.nome,
                       a.email
                FROM user a INNER JOIN inscricao b USING(id_user)
        ');
        $rows = $stmt->fetchAll(PDO::FETCH_CLASS);
        

        $html .= "<table>";
        $html .= "<thead>";
        $html .= "<tr><td>Nome</td><td>E-mail</td><td>Presença</td></tr>";
        $html .= "</thead>";
        $html .= "<tbody>";
        foreach($rows as $val)
        {
            $html .= "  <tr>";
            $html .= "      <td>{$val->nome}</td>";
            $html .= "      <td>{$val->email}</td>";
            $html .= "      <td></td>";
            $html .= "  <tr>";
        }
        $html .= "<tbody>";
        $html .= "</table>";

        return $html;
    }
}
