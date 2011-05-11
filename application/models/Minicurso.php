<?php

class Application_Model_Minicurso
{
    
    public $tb;

    public function __construct()
    {

        $this->tb = new Application_Model_DbTable_MinicursoAluno();
    }

    public function cadastrarAluno($post)
    {
    
        $tb = $this->tb;
        
        $row['id_minicurso'] = $post['id_minicurso'];
        $row['id_user'] = $post['id_user'];

        $this->verificaAluno($row);

        try{
            $tb->insert($row);
            $this->enviarEmail($post);
        }catch(Exception $e){
            //throw new Exception($e->getMessage());
            throw new Exception("Ocorreu um problema no cadastro, tente novamente.");
        }
    }

    public function verificaAluno($values)
    {
        $tb = $this->tb;
        $select = $tb->select();
        $select->where('id_minicurso = ?',(int)$values['id_minicurso']);
        $select->where('id_user = ?',(int)$values['id_user']);
        $row = $tb->fetchRow($select);

        if($row['id_minicurso'] == $values['id_minicurso'])
        {
            throw new Exception("Você já esta cadastrado neste curso.");
        }
    }

    public function enviarEmail($post)
    {
        $user = $post['user'];
        $curso = $post['curso'];
        $data = $data = new Zend_Date($curso['data_hora']);
        $data = $data->get('dd/MM/YYYY hh:mm');

        $mail = new Zend_Mail('utf-8');

        $mail->setBodyText("Olá ".$user['nome'].",\r\n\r\n".
                           "Estamos confirmando a sua presença no mini-curso -- {$curso['nome_minicurso']} -- no evento PHP-Day SERPRO.\r\n".
                           "Data {$data}\r\n\r\n".
                           "Atenciosamente,\r\n".
                           "Organização PHP-Day SERPRO\r\n".
                           "http://serpro.phpday.com.br"
        );
        $mail->setFrom('zedmaster@gmail.com', 'PHP-Day SERPRO');
        $mail->addTo($user['email'], $user['nome']);
        //$mail->addTo("root"); // Testando o envio do email 
        $mail->setSubject('Confirmação de cadastro do mini-curso PHP-Day SERPRO');
        $mail->send();
    }


}

