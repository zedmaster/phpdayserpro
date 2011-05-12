<?php

class Bootstrap extends Zend_Application_Bootstrap_Bootstrap
{
    protected function _initSessionstart()
    {
        Zend_Session::start();
    }


}

