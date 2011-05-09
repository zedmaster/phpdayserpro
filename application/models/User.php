<?php

class Application_Model_User
{
    public $tb;

    /**
     * Construtor da classe.
     *
     */
    public function __construct()
    {
        $this->tb = new Application_Model_DbTable_User(); 
    }

    /**
     * Insere o usuário na base.
     *
     */
    public function insert($post)
    {
        $date = new Zend_Date();
        $rows= array();
        $rows['dt_cadastro'] = $date->get("YYYY-MM-dd hh:mm:ss");
        $rows['chave'] = MD5($date->get("YYYY-MM-dd hh:mm:ss").$rows['email'].rand());

        $cols = $this->tb->getCols();
        foreach($post as $key => $val)
        {
            if(in_array($key, $cols) && $val != "")
            {
                $rows[$key] = $val;
            }
        }

        //Zend_Debug::dump($rows);
        $this->tb->insert($rows);
        $this->enviarEmail($rows);
        
    }

    /** 
     * Verifica pelo e-mail se o usuário já esta cadastrado.
     *
     */
    public function isUserExist($email)
    {
        $select = $this->tb->select();
        $select->where('email = ?', $email);
 
        $row = $this->tb->fetchRow($select);

        if($row['email'] == $email)
        {
            return true;
        }

        return false;
    }

    public function enviarEmail($rows)
    {
        $mail = new Zend_Mail();

        $mail->setBodyText("Olá ".$rows['nome'].",\r".
                           "Parabéns pelo seu cadastro no evento PHP-Day SERPRO.\r".
                           "Utilize a sua chave para efetuar a inscrição nos mini cursos.\r\r".
                           "Sua chave: ".$rows['chave']."\r\r".
                           "Atenciosamente,\r".
                           "Organização PHP-Day SERPRO\r".
                           "http://serpro.phpday.com.br"
        );
        $mail->setFrom('zedmaster@gmail.com', 'PHP-Day SERPRO');
        $mail->addTo($rows['email'], $rows['nome']);
        //$mail->addTo("root"); // Testando o envio do email 
        $mail->setSubject('Confirmação de cadastro no PHP-Day SERPRO');
        $mail->send();
    }
}

