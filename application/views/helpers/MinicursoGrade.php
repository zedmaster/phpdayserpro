<?php

class App_View_Helper_MinicursoGrade extends Zend_View_Helper_Abstract
{

    public function minicursoGrade()
    {
        $html = "";

        $table = new Application_Model_DbTable_Minicurso();
        $db = $table->getAdapter();
        $stmt = $db->query('SELECT * FROM  v_minicurso ORDER BY data_hora');
        $rows = $stmt->fetchAll(PDO::FETCH_CLASS);
        
        //$rows = array();

        foreach($rows as $val)
        {
            //Zend_Debug::dump($val);
            $data = new Zend_Date($val->data_hora);
            $vagas = 12 - (int)$val->alunos;
            if($vagas > 0)
            {
                $vagas = $vagas." vagas disponíveis <a href=\"/minicurso/key/id/{$val->id_minicurso}\">[Inscrição]</a>";
            }else{
                $vagas = "<strong>Vagas esgotadas</strong>";
            }


            $html .= "<h3>{$val->nome_minicurso}</h3>";
            $html .= "  <ul>";
            $html .= "      <li>{$vagas}</li>";
            $html .= "      <li>Horário: ".$data->get('dd/MM/YYYY hh:mm')."h</li>";
            $html .= "      <li>Duração: ".$val->duracao."h</li>";
            $html .= "      <li>Sala ".$val->sala."</li>";
            $html .= "      <li>Palestrante: ".$val->nome."</li>";
            $html .= "      <li>Descrição:<p>".$val->descricao."</p></li>";
            $html .= "  </ul>";
        }

        return $html;
    }
}
