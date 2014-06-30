<?php

/* 
 * 
 */
include_once './class.cancerws.php';
include_once './Entidades/Paciente.php';
require_once './php-wsdl-2.3/class.phpwsdl.php';


$soap = PhpWsdl::CreateInstance(
        null,
        null, //'http://schemas.xmlsoap.org/soap/encoding/',
        './cache',
        Array(
          './class.cancerws.php',
          './Entidades/Paciente.php'
        ),
        null,
        null,
        null,
        false,
        false
        );

ini_set('soap.wsdl_cache_enabled', 0);

PhpWsdl::$CacheTime = 0;

if ($soap->IsWsdlRequested()) {
    $soap->Optimize = false;
}

$soap->RunServer();