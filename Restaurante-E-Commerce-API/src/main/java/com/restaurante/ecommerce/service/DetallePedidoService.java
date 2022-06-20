package com.restaurante.ecommerce.service;

import com.restaurante.ecommerce.entity.DetallePedido;
import com.restaurante.ecommerce.repository.DetallePedidoRepository;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;

@Service
@Transactional
public class DetallePedidoService {
    private final DetallePedidoRepository repository;

    public DetallePedidoService(DetallePedidoRepository repository) {
        this.repository = repository;
    }
    //Método para guardar detalles del pedido
    public void guardarDetalles(Iterable<DetallePedido> detalle){
        this.repository.saveAll(detalle);
    }
}
