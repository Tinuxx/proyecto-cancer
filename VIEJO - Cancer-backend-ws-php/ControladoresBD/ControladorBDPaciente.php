<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of ControladoraBDPaciente
 *
 * @author tinoba
 */

require __DIR__ . "/../Entidades/Paciente.php";
require __DIR__ . '/../Configs/ParamsDB.php';

class ControladoraBDPaciente {
    private $DB;
    public function __construct() {
        if (Configuracion::$DBActiva == "mysql")
        {
            try {
                $this->DB = PDO("mysql:host=" . Configuracion::$config["mysql"]["hostname"] . ";dbname=" . Configuracion::$config["mysql"]["dbname"], Configuracion::$config["mysql"]["username"], Configuracion::$config["mysql"]["password"]);
                $this->DB->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            } catch (Exception $ex) {
                file_put_contents('PDOErrors.txt', $ex->getMessage(), FILE_APPEND);
            }
        }
    }
    public function __destruct() {
        $this->DB = null;
    }
    public function agregarPaciente(Paciente $paciente) {
        $statement = $this->DB->prepare("INSERT INTO Pacientes (numeroCedula, nombre, genero, fechaNacimiento, observaciones) value (:numeroCedula, :nombre , :genero, :fechaNacimiento, :observaciones)");
        try {
            $statement->execute((array) $paciente);
        } catch (Exception $ex) {
            file_put_contents('PDOErrors.txt', $ex->getMessage(), FILE_APPEND);
        }
    }
    
    public function consultarPaciente(int $cedula) {
        $statement = $this->DB->query("SELECT numeroCedula, nombre, genero, fechaNacimiento, observaciones FROM Pacientes WHERE (numeroCedula = ?)", $cedula);
        $statement->setFetchMode(PDO::FETCH_CLASS, 'Paciente');
        $paciente = $statement->fetch();
        $statement->closeCursor();
        return $paciente;
    }
}
