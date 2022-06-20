package com.restaurante.ecommerce.service;

import com.restaurante.ecommerce.repository.CategoriaRepository;
import com.restaurante.ecommerce.utlis.GenericResponse;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;

import static com.restaurante.ecommerce.utlis.Global.*;

@Service
@Transactional
public class CategoriaService {
    private final CategoriaRepository repository;

    public CategoriaService(CategoriaRepository repository) {
        this.repository = repository;
    }
    public GenericResponse listarCategoriasActivas(){
        return new GenericResponse(TIPO_DATA, RPTA_OK, OPERACION_CORRECTA, this.repository.listarCategoriasActivas());
    }
}
