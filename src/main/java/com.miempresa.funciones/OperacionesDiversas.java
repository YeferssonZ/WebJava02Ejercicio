/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.miempresa;

/**
 *
 * @author Zaph
 */
public class OperacionesDiversas {
    public double raizCuadrada(double num) {
        return Math.sqrt(num);
    }
    
    public double raizCubica(double num) {
        return Math.cbrt(num);
    }
    
    public double potencia(double base, double exponente) {
        return Math.pow(base, exponente);
    }
    
    public double valorAbsoluto(double num) {
        return Math.abs(num);
    }
}
