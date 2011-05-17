<?php

class App_View_Helper_Palestrantes extends Zend_View_Helper_Abstract
{

    public function palestrantes()
    {
        $html = "";

        $table = new Application_Model_DbTable_Minicurso();
        $db = $table->getAdapter();
        $stmt = $db->query('SELECT DISTINCT 
        						   a.id_user, a.nome, a.site, a.twitter, a.curriculo
				            FROM user a INNER JOIN palestra_palestrante b USING(id_user)
				            ORDER BY a.nome');
        $rows = $stmt->fetchAll(PDO::FETCH_CLASS);
        

        foreach($rows as $val)
        {
            $html .= "<h3 id=\"{$val->id_user}\">".$val->nome."</h3>";
            $html .= "  <ul>";
            $html .= "      <dd><img src\"/img/user/{$val->id_user}.jpg\"></dd>";
            $html .= "      <dd><strong>Blog/Site:</strong> <a href=\"{$val->site}\">{$val->site}</a></dd>";
            $html .= "      <dd><strong>Twitter:</strong> ".$val->twitter."</dd>";
            $html .= "      <dd><strong>Sobre:</strong> <p>".str_replace("\r","<br/>",$val->curriculo)."</p></dd>";
            $html .= "  </ul>";
        }

        return $html;
    }
}
