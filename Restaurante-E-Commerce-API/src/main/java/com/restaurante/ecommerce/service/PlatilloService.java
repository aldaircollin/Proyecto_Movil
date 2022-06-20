package com.restaurante.ecommerce.service;

import com.restaurante.ecommerce.repository.PlatilloRepository;
import com.restaurante.ecommerce.utlis.GenericResponse;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;

import static com.restaurante.ecommerce.utlis.Global.*;

@Service
@Transactional
public class PlatilloService {
    private final PlatilloRepository repository;

    public PlatilloService(PlatilloRepository repository) {
        this.repository = repository;
    }
    public GenericResponse listarPlatillosRecomendados(){
        return new GenericResponse(TIPO_DATA, RPTA_OK, OPERACION_CORRECTA, this.repository.listarPlatillosRecomendados());
    }
    public GenericResponse listarPlatillosPorCategoria(int idC){
        return new GenericResponse(TIPO_DATA, RPTA_OK, OPERACION_CORRECTA, this.repository.listarPlatillosPorCategoria(idC));
    }
}
