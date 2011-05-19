<?php

class Application_Model_Inscricao
{
    public $tb;
    public $user;

    public function __construct()
    {
        $this->tb = new Application_Model_DbTable_Inscricao(); 
    }


    public function insert($chave)
    {
        $this->getUser($chave);

        $tb = $this->tb;


        $row['id_user'] = $this->user['id_user'];

        try{
            $tb->insert($row);
        }catch(Exception $e){
            throw new Exception('Erro ao realizar a inscrição, favor tente novamente.');
        }

    }

    public function getUser($chave)
    {
        $db = $this->tb->getAdapter();
        $sql = $db->quoteInto('SELECT * FROM user WHERE chave = ?', $chave);
        $stmt = $db->query($sql);
        $user = $stmt->fetch();
 
        $sql = $db->quoteInto('SELECT * FROM inscricao WHERE id_user = ?', $user['id_user']);
        $stmt = $db->query($sql);
        $inscricao = $stmt->fetch();

        if($inscricao['id_user'] == $user['id_user'])
        {
            throw new Exception('Você já esta inscrito.');
        }

        $this->user = $user;
    }


    
}

