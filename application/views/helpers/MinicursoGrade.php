<?php

class App_View_Helper_MinicursoGrade extends Zend_View_Helper_Abstract
{

    public function minicursoGrade()
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
        $stmt = $db->query('SELECT * FROM  v_minicurso ORDER BY data_hora');
        $rows = $stmt->fetchAll(PDO::FETCH_CLASS);

		foreach($rows as $val)
		{
			$grade[$val->dia][$val->hora][$val->sala] = array(
					"nome_minicurso" => $val->nome_minicurso,
					"id_palestra" => $val->id_minicurso
					);
		}

		foreach($grade as $keyDia=>$valDia)
		{
			$html .= "<h3>".$ordem[$keyDia]." Dia - {$keyDia}</h3>";
			$html .= "<table>";
			$html .= "<tr><td></td><td><strong>Sala 1</strong></td><td></td><td><strong>Sala 2</strong></td></tr>";
			foreach($valDia as $keyHora=>$valPalestra)
			{
				if(array_key_exists($keyHora,$tempo))
				{
					$html .= '<tr><td cols="3"><strong>'.$tempo[$keyHora].'</strong></td></tr>';
				}
				$html .= '<tr>';
				$html .= '<td>'.$keyHora.':00h</td><td><a href="/minicurso#'.$valPalestra[1]['id_minicurso'].'">'.$valPalestra[1]['nome_minicurso'].'</a></td>';
				$html .= '<td>'.$keyHora.':00h</td><td><a href="/minicurso#'.$valPalestra[2]['id_minicurso'].'">'.$valPalestra[2]['nome_minicurso'].'</a></td>';
				$html .= '</tr>';
			}
			$html .= "</table>";
		}



        return $html;
    }
}
