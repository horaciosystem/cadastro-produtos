<%--
    Document   : produtos
    Created on : 21/11/2016, 20:46:51
    Author     : horacio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.horacio.controller.CadastroProdutos" %>
<%@page import="com.horacio.model.Produto" %>
<!DOCTYPE html>
<html>
    <body>
        <table class="table is-striped">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Descrição</th>
                    <th>Categoria</th>
                    <th>Preço (R$)</th>
                    <th>Cor</th>
                    <th>Peso (Kg)</th>
                    <th>Fornecedor</th>
                    <th>Estoque</th>
              </tr>
            </thead>
            <tbody>
            <% for (Produto produto : CadastroProdutos.listProdutos()) { %>
            <tr>
                <td><%=produto.getId()%></td>
                <td><%=produto.getDescricao()%></td>
                <td><%=CadastroProdutos.listCategorias().get(String.valueOf(produto.getCategoria()))%></td>
                <td><%=produto.getPreco()%></td>
                <td><%=produto.getCor()%></td>
                <td><%=produto.getPeso()%></td>
                <td><%=produto.getFornecedor()%></td>
                <td><%=produto.getEstoque()%></td>
            </tr>
            <% } %>
            </tbody>
        </table>
    </body>
</html>
