<?php

class App_View_Helper_Palestras extends Zend_View_Helper_Abstract
{

    public function palestras()
    {
        $html = "";

        $table = new Application_Model_DbTable_Minicurso();
        $db = $table->getAdapter();
        $stmt = $db->query('SELECT * 
				            FROM palestra a INNER JOIN palestra_palestrante b USING(id_palestra)
             				INNER JOIN user c USING(id_user) ;');
        $rows = $stmt->fetchAll(PDO::FETCH_CLASS);
        

        foreach($rows as $val)
        {
            $data = new Zend_Date($val->data_hora);

            $html .= "<h3 id=\"{$val->id_palestra}\">".$val->nome_palestra."</h3>";
            $html .= "  <ul>";
            $html .= "      <li>Horário: ".$data->get('dd/MM/YYYY hh:mm')."h</li>";
            $html .= "      <li>Duração: 50min</li>";
            $html .= "      <li>Palestrante: <a href=\"/palestrante#{$val->id_user}\">{$val->nome}</a></li>";
            $html .= "      <li>Descrição:<p>".$val->descricao."</p></li>";
            $html .= "  </ul>";
        }

        return $html;
    }
}
