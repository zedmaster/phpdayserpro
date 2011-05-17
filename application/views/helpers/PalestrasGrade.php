<?php

class App_View_Helper_PalestrasGrade extends Zend_View_Helper_Abstract
{

    public function palestrasGrade()
    {
        $html = "";
        $ordem = array(
                    "31/05" => "1º",
                    "01/06" => "2º"
        );
        $tempo = array(
                    "08" => "Manhã",
                    "14" => "Tarde"
        );

        $table = new Application_Model_DbTable_Minicurso();
        $db = $table->getAdapter();
        $stmt = $db->query('SELECT * 
				            FROM v_grade_palestra');
        $rows = $stmt->fetchAll(PDO::FETCH_CLASS);
        $grade = array();
        

        foreach($rows as $val)
        {
            $grade[$val->dia][$val->hora] = array(
                    "nome_palestra" => $val->nome_palestra,
                    "id_palestra" => $val->id_palestra
            );
        }

        foreach($grade as $keyDia=>$valDia)
        {
            $html .= "<h3>".$ordem[$keyDia]." Dia - {$keyDia}</h3>";
            $html .= "<table>";
                foreach($valDia as $keyHora=>$valPalestra)
                {
                    if(array_key_exists($keyHora,$tempo))
                    {
                        $html .= '<td cols="2"><strong>'.$tempo[$keyHora].'</strong></td>';
                    }
                    $html .= '<tr><td>'.$keyHora.':00h</td><td><a href="/palestra#'.$valPalestra['id_palestra'].'">'.$valPalestra['nome_palestra'].'</a></td></tr>';
                }
            $html .= "</table>";
        }

        return $html;
    }
}
