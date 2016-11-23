/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.horacio.servlet;

import com.horacio.controller.CadastroProdutos;
import com.horacio.model.Produto;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author horacio
 */

public class ProdutosServlet extends HttpServlet {

    @Override
    protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doDelete(req, resp); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse resp) throws ServletException, IOException {
                
        String id = request.getParameter("id");
        String descricao = request.getParameter("descricao");  
//        String categoria = request.getParameter("categoria");  
        String preco = request.getParameter("preco");  
        String cor = request.getParameter("cor");  
        String peso = request.getParameter("peso");  
        String fornecedor = request.getParameter("fornecedor");  
        String estoque = request.getParameter("estoque");  
        
        Produto produto = new Produto();
        produto.setId(Integer.parseInt(id));
        produto.setDescricao(descricao);
//        produto.setCategoria(Integer.parseInt(categoria));
        produto.setPreco(Double.parseDouble(preco));
        produto.setCor(cor);
        produto.setPeso(Double.parseDouble(peso));
        produto.setFornecedor(fornecedor);
        produto.setEstoque(Integer.parseInt(estoque));
        CadastroProdutos.addProduto(produto);
        System.out.println(produto.toString());
    }

    @Override
    public void init() throws ServletException {
        super.init(); 
        System.out.println("INicializando...");
    }

    
}
