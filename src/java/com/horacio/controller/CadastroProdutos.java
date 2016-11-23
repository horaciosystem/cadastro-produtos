/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.horacio.controller;

import com.horacio.model.Produto;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author horacio
 */
public class CadastroProdutos {
    private static List<Produto> produtos = new ArrayList<Produto>();
    
    public static List<Produto> listProdutos() {    
        return produtos;
    }
    
    public static void addProduto(Produto produto) {
        produtos.add(produto);
    }

}
