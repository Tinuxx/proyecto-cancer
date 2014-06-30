<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of ControladorPacientes
 *
 * @author tinoba
 */

require_once __DIR__ . '/../ControladoresBD/ControladorBDPaciente.php';

class ControladorPaciente {
    private $controladorDB;
    
    public function __construct() {
        $this->controladorDB= new ControladoraBDPaciente();
    }
    public function agregarPaciente(Paciente $paciente) {
        $this->controladorDB->agregarPaciente($paciente);
        //Retornar valor de éxito/error
    }
    
    public function consultarPaciente(int $cedula) {
        $this->controladorDB->consultarPaciente($cedula);
    }
}
