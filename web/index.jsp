<%-- 
    Document   : index
    Created on : 21/11/2016, 20:11:52
    Author     : horacio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>    
    <head>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <link rel="stylesheet" href="css/base.scss" />
        <title>Cadastro de Produtos</title>
    </head>
    <body>        
        <div class="main-container">
            <div class="title-box">
                <h1 class="title">Cadastro de Produtos</h1>            
            </div>
            <div class="button-box">
                <a id="novo-produto" class="button is-primary" href="novo-produto.jsp">Novo Produto</a>
            </div>
            <jsp:include page="lista-produtos.jsp" />
        </div>
    </body>
</html>

