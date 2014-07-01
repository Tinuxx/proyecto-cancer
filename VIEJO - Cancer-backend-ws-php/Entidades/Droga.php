<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Droga
 * 
 * @pw_set nillable=false
 * @pw_element int $idDroga Identificación interna de la droga
 * @pw_set nillable=false
 * @pw_element string $nombreDroga Nombre de la droga
 * @pw_set nillable=false
 * @pw_element string $nombreCasaComercial Nombre de la casa comercial
 * @pw_set nillable=false
 * @pw_element string $storage Información sobre el almacenamiento y estabilidad de la droga
 * @pw_set nillable=false
 * @pw_element float $TDC100 TODO: RELLENAR
 * @pw_set nillable=false
 * @pw_element float $stockSolution TODO: RELLENAR
 * @pw_complex Droga Entidad Droga
 */
class Droga {
    public $idDroga;
    public $nombreDroga;
    public $nombreCasaComercial;
    public $storage;
    public $TDC100;
    public $stockSolution;
    
    public function __construct($idDroga, $nombreDroga, $nombreCasaComercial, $storage, $TDC100, $stockSolution) {
        $this->idDroga = $idDroga;
        $this->nombreDroga = $nombreDroga;
        $this->nombreCasaComercial = $nombreCasaComercial;
        $this->storage = $storage;
        $this->TDC100 = $TDC100;
        $this->stockSolution = $stockSolution;
    } 
}
