/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo.dto;

/**
 *
 * @author Joaquin
 */


public class Detalle_Pedido {
    private int detalleId;
    private int pedidoId;
    private int florId;
    private int cantidad;
    private double precio;

    public Detalle_Pedido() {}

    public Detalle_Pedido(int detalleId, int pedidoId, int florId, int cantidad, double precio) {
        this.detalleId = detalleId;
        this.pedidoId = pedidoId;
        this.florId = florId;
        this.cantidad = cantidad;
        this.precio = precio;
    }

    public int getDetalleId() {
        return detalleId;
    }

    public void setDetalleId(int detalleId) {
        this.detalleId = detalleId;
    }

    public int getPedidoId() {
        return pedidoId;
    }

    public void setPedidoId(int pedidoId) {
        this.pedidoId = pedidoId;
    }

    public int getFlorId() {
        return florId;
    }

    public void setFlorId(int florId) {
        this.florId = florId;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    public double getPrecio() {
        return precio;
    }

    public void setPrecio(double precio) {
        this.precio = precio;
    }
}


