package com.horacio.controller;

import com.horacio.model.Produto;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 *
 * @author horacio
 */
public class CadastroProdutos {
    private static List<Produto> produtos = new ArrayList<Produto>();
    private static Map<String, String> categorias;
    
    public static List<Produto> listProdutos() {    
        return produtos;
    }
    
    public static void addProduto(Produto produto) {
        produtos.add(produto);
    }
    
    public static Map<String, String> listCategorias() {
        if (categorias != null)
            return categorias;
        else 
            return loadDefaultCategories();
    }
    
    private static Map<String, String> loadDefaultCategories() {        
        categorias = new HashMap<>();
        categorias.put("1", "Eletrônicos");
        categorias.put("2", "Roupas");
        categorias.put("3", "Calçados");        
        return categorias;
    }
    
}
