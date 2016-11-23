<%-- 
    Document   : new-produto
    Created on : 22/11/2016, 20:13:47
    Author     : horacio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Novo Produto</title>
    </head>
    <body>
        <div>
            <h2>Novo Produto</h2>            
        </div>
            
        <form action="${pageContext.request.contextPath}/novo-produto" method="post">
            <div>
                <input type="submit" name="submit" value="Salvar" />
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
    </body>
</html>
