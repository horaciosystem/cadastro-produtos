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
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table>
            <tbody>
            <thead>
                <tr>
                    <th>Id</th>
                    <th>Descrição</th>
                    <th>Categoria</th>
                    <th>Preço</th>
                    <th>Cor</th>
                    <th>Peso</th>
                    <th>Fornecedor</th>
                    <th>Estoque</th>
              </tr>
            </thead>
            <% for (Produto produto : CadastroProdutos.listProdutos()) { %>
            <tr>
                <td><%=produto.getId()%></td>
                <td><%=produto.getDescricao()%></td>
                <td><%=produto.getCategoria()%></td>
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
