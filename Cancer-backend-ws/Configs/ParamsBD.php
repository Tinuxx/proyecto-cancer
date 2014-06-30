<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

class Configuracion
{

    /* El valor de esta variable determina con cuál base de datos van a operar las
     * controladoras. Valores posibles son 'mysql' o 'neo4j'
     */
    public static $DBActiva = 'mysql';

    /* Configuración para base de datos MySQL */
    public static $config = array(
        "mysql" => array(
            "host" => "10.1.70.70",
            "dbname" => "bd_pruebasensibilidad",
            "username" => "tino",
            "password" => "tino123"
        )
);
}