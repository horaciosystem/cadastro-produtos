<%-- 
    Document   : new-produto
    Created on : 22/11/2016, 20:13:47
    Author     : horacio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="css/bulma.css" />
        <link rel="stylesheet" href="css/base.scss" />
        <title>Novo Produto</title>
    </head>
    <body>
        <div class="main-container">
            <div class="title-box">
                <h1 class="title">Novo Produto</h1>            
            </div>

        <form action="${pageContext.request.contextPath}/novo-produto" method="post">
            <div class="button-box">
                <a class="button is-primary" href="/cadastro-de-produtos">Voltar</a>
                <input class="button is-success" type="submit" name="submit" value="Salvar" />
            </div>
            <label class="label">Id</label>
            <p class="control">
                <input class="input" type="text" name="id" value="">
            </p>
            <label class="label">Descrição</label>
            <p class="control has-icon has-icon-right"> 
                <input class="input is-success" type="text" name="descricao" value="">
            </p>            
            <label class="label">Categoria</label>
            <p class="control">
                <span class="select">
                    <select>
                        <option>Select dropdown</option>
                        <option>With options</option>
                    </select>
                </span>
            </p>
            <label class="label">Preço</label>
            <p class="control has-icon has-icon-right"> 
                <input class="input is-success" type="text" name="preco" value="">
            </p>
            <label class="label">Cor</label>
            <p class="control has-icon has-icon-right"> 
                <input class="input is-success" type="text" name="cor" value="">
            </p>
            <label class="label">Peso</label>
            <p class="control has-icon has-icon-right"> 
                <input class="input is-success" type="text" name="peso" value="">
            </p>
            <label class="label">Fornecedor</label>
            <p class="control has-icon has-icon-right"> 
                <input class="input is-success" type="text" name="fornecedor" value="">
            </p>
            <label class="label">Estoque</label>
            <p class="control has-icon has-icon-right"> 
                <input class="input is-success" type="text" name="estoque" value="">
            </p>
        </form>
        </div>
    </body>
</html>
