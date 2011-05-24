<?php

class App_View_Helper_ListaAlunos extends Zend_View_Helper_Abstract
{

    public function listaAlunos()
    {
        $html = "";

        $table = new Application_Model_DbTable_Minicurso();
        $db = $table->getAdapter();
        $stmt = $db->query(' 
                            SELECT 
                                   c.nome_minicurso,
                                   a.nome,
                                   a.email       
                            FROM user a INNER JOIN minicurso_aluno b USING(id_user)
                                 INNER JOIN minicurso c USING(id_minicurso)
                            ORDER BY c.nome_minicurso, a.nome
        ');
        $rows = $stmt->fetchAll(PDO::FETCH_CLASS);
        

        $html .= "<table>";
        $html .= "<thead>";
        $html .= "<tr><td>Mini-Curso</td><td>Nome</td><td>E-mail</td><td>Presença</td></tr>";
        $html .= "</thead>";
        $html .= "<tbody>";
        foreach($rows as $val)
        {
            $html .= "  <tr>";
            $html .= "      <td>{$val->nome_minicurso}</td>";
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
