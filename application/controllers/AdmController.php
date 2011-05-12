<?php

class AdmController extends Zend_Controller_Action
{

    public function init()
    {
        $request = $this->getRequest()->getParams();
        if($_SESSION['adm'] == "" && $request["action"]!="login")
        {
            return $this->_redirect('/adm/login');
        }
    }

    public function indexAction()
    {
        // action body
    }

    public function loginAction()
    {
        $config = array(
                'accept_schemes' => 'basic',
                'realm'          => 'Adm',
                'nonce_timeout'  => 3600,
                );

        $adapter = new Zend_Auth_Adapter_Http($config);

        
        $basicResolver = new Zend_Auth_Adapter_Http_Resolver_File();
        $basicResolver->setFile(APPLICATION_PATH."/configs/adm.txt");

        $adapter->setBasicResolver($basicResolver);
        

        $adapter->setRequest($this->getRequest());
        $adapter->setResponse($this->getResponse());


        $result = $adapter->authenticate();


        if (!$result->isValid()) {
            // Bad userame/password, or canceled password prompt
        }else{
            $_SESSION["adm"] = "adm";
            return $this->_redirect('/adm/index');
        }
    }


}



