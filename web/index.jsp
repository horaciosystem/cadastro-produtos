<%-- 
    Document   : index
    Created on : 21/11/2016, 20:11:52
    Author     : horacio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div>
            <h1>Cadastro de Produtos</h1>            
        </div>
        <div>
            <a href="novo-produto.jsp">Novo Produto</a>
        </div>
        <div>
            <jsp:include page="lista-produtos.jsp" />
        </div>
    </body>
</html>

