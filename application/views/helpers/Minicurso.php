<?php

class App_View_Helper_Minicurso extends Zend_View_Helper_Abstract
{

    public function minicurso()
    {
        $html = "";

        $table = new Application_Model_DbTable_Minicurso();
        $db = $table->getAdapter();
        $stmt = $db->query('SELECT * FROM  v_minicurso ORDER BY data_hora');
        $rows = $stmt->fetchAll(PDO::FETCH_CLASS);
        

        foreach($rows as $val)
        {
            $data = new Zend_Date($val->data_hora);
            $vagas = 12 - (int)$val->alunos;
            if($vagas > 0)
            {
                $vagas = "<strong>".$vagas."</strong> vagas disponíveis <a href=\"/default/minicurso/cadastro/id_minicurso/{$val->id_minicurso}\">[Inscrição]</a>";
            }else{
                $vagas = "<strong>Vagas esgotadas</strong>";
            }


            $html .= "<h3>".$val->nome_minicurso."</h3>";
            $html .= "  <ul>";
            $html .= "      <li>{$vagas}</li>";
            $html .= "      <li>Horário: ".$data->get('dd/MM/YYYY hh:mm')."h</li>";
            $html .= "      <li>Duração: ".$val->duracao."h</li>";
            $html .= "      <li>Sala ".$val->sala."</li>";
            $html .= "      <li>Palestrante: <a href=\"/tutor#{$val->id_user}\">".$val->nome."</a></li>";
            $html .= "      <li>Descrição:<p>".$val->descricao."</p></li>";
            $html .= "  </ul>";
        }

        return $html;
    }
}
