package com.restaurante.e_commerceapp.api;

import com.restaurante.e_commerceapp.entity.GenericResponse;
import com.restaurante.e_commerceapp.entity.service.Platillo;

import java.util.List;

import retrofit2.Call;
import retrofit2.http.GET;
import retrofit2.http.Path;

public interface PlatilloApi {
    String base = "api/platillo";

    @GET(base)
    Call<GenericResponse<List<Platillo>>> listarPlatillosRecomendados();

    @GET(base + "/{idC}")
    Call<GenericResponse<List<Platillo>>> listarPlatillosPorCategoria(@Path("idC") int idC);
}
