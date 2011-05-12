<?php

class App_View_Helper_ListaColaboradores extends Zend_View_Helper_Abstract
{

    public function listaColaboradores()
    {
        $html = $this->listaPalestrantes();
        $html.= $this->listaTutores();

        return $html;
    } 

    public function listaPalestrantes()
    {
        $html = "";

        $table = new Application_Model_DbTable_Minicurso();
        $db = $table->getAdapter();
        $stmt = $db->query('SELECT * 
                            FROM  user a INNER JOIN palestra_palestrante b ON a.id_user=b.id_user 
                                  INNER JOIN palestra c ON b.id_palestra=c.id_palestra
                            ORDER BY a.nome');
        $rows = $stmt->fetchAll(PDO::FETCH_CLASS);
        

        $html .= "<h3>Palestrantes</h3>";
        $html .= "  <ul>";
        foreach($rows as $val)
        {
            $html .= "      <li>{$val->nome} - {$val->email} - {$val->nome_palestra}</li>";
        }
        $html .= "  </ul>";

        return $html;
    }

    public function listaTutores()
    {
        $html = "";

        $table = new Application_Model_DbTable_Minicurso();
        $db = $table->getAdapter();
        $stmt = $db->query('SELECT * 
                            FROM  user a INNER JOIN minicurso_tutor b ON a.id_user=b.id_user 
                                  INNER JOIN minicurso c ON b.id_minicurso=c.id_minicurso         
                            ORDER BY a.nome');
        $rows = $stmt->fetchAll(PDO::FETCH_CLASS);
        

        $html .= "<h3>Tutores</h3>";
        $html .= "  <ul>";
        foreach($rows as $val)
        {
            $html .= "      <li>{$val->nome} - {$val->email} - {$val->nome_minicurso}</li>";
        }
        $html .= "  </ul>";

        return $html;
    }
}
