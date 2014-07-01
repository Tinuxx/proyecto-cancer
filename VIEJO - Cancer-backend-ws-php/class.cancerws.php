<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Esta clase sirve todos los métodos que se consumen mediante web services
 * 
 * @service Cancerws
 */

include_once './Controladores/ControladorPaciente.php';
include_once './Entidades/Paciente.php';

class Cancerws {
    private $controladoraPacientes;
    /**
     * Obtener una hilera de vuelta
     * 
     * @param string $hilera Hilera de la solicitud
     * @return string La misma hilera que fue enviada
     */
    
    public function __construct() {
        $this->controladoraPacientes = new ControladorPaciente();
    }
    
    public function hacerEcho(string $hilera)
    {
        return $hilera;
    }
    
    /**
     * Obtiene los datos de un paciente, según su cédula de identidad
     * 
     * @param int $numeroCedula Número de cédula del paciente
     * @return Paciente Entidad paciente con cédula correspondiente
     */
    public function getPaciente(int $numeroCedula)
    {
        return $this->controladoraPacientes->consultarPaciente($numeroCedula);        
    }
}