<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Paciente
 *
 * @pw_set nillable=false
 * @pw_element int $id Identificacion interna del paciente
 * @pw_set nillable=false
 * @pw_element int $numeroCedula Cédula del paciente
 * @pw_set nillable=false
 * @pw_element string $nombre Nombre del paciente
 * @pw_set nillable=false
 * @pw_element boolean $genero Género del paciente
 * @pw_element string $observaciones Anotaciones hechas sobre el paciente
 * @pw_complex Paciente Entidad paciente
 */
class Paciente {
    public $id;
    public $numeroCedula;
    public $nombre;
    public $genero;
    public $fechaNacimiento;
    public $observaciones;
    
    public function __construct($numeroCedula, $nombre, $genero, $fechaNacimiento, $observaciones) {
        $this->numeroCedula = $numeroCedula;
        $this->nombre = $nombre;
        $this->genero = $genero;
        $this->fechaNacimiento = $fechaNacimiento;
        $this->observaciones = $observaciones;
    }
}
