<%--
    Document   : new-produto
    Created on : 22/11/2016, 20:13:47
    Author     : horacio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.horacio.controller.CadastroProdutos" %>
<%@page import="java.util.Map.Entry" %>
<!DOCTYPE html>
<html>
    <head>
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
                    <input class="button is-success save-button" type="submit" name="submit"
                      value="Salvar" onClick="return isFilledFields()"
                     />
                    <a class="button is-primary" href="/cadastro-de-produtos">Voltar</a>
                </div>
                <div id="notification" class="notification is-danger hidden">
                  <h2 class="subtitle is-5"> Atênção! Todos os campos devem ser preenchidos.</h2>
                </div>
                <div class="columns">
                    <div class="column is-6">
                        <label class="label">ID</label>
                        <p class="control">
                            <input id="id" class="input" type="number" name="id" value="">
                        </p>
                    </div>
                    <div class="column is-6">
                        <label class="label">Categoria</label>
                        <p class="control">
                            <span class="select">
                                <select name="categoria">
                                    <% for (Entry<String, String> categoria : CadastroProdutos.listCategorias().entrySet()) { %>
                                      <option value=<%= categoria.getKey() %> label=<%= categoria.getValue() %> />
                                    <% } %>
                                </select>
                            </span>
                        </p>
                    </div>
                </div>
                <div class="columns">
                    <div class="column is-6">
                        <label class="label">Descrição</label>
                        <p class="control has-icon has-icon-right">
                            <input id="descricao" class="input" type="text" name="descricao" value="">
                        </p>
                    </div>
                    <div class="column is-6">
                        <label class="label">Preço (R$)</label>
                        <p class="control has-icon has-icon-right">
                            <input class="input" type="number" name="preco" value="" step="any">
                        </p>
                    </div>
                </div>
                <div class="columns">
                    <div class="column is-6">
                        <label class="label">Cor</label>
                        <p class="control has-icon has-icon-right">
                            <input class="input" type="text" name="cor" value="">
                        </p>
                    </div>
                    <div class="column is-6">
                        <label class="label">Peso (Kg)</label>
                        <p class="control has-icon has-icon-right">
                            <input class="input" type="number" name="peso" value="" step="any">
                        </p>
                    </div>
                </div>
                <div class="columns">
                    <div class="column is-6">
                        <label class="label">Fornecedor</label>
                        <p class="control has-icon has-icon-right">
                            <input class="input" type="text" name="fornecedor" value="">
                        </p>
                    </div>
                    <div class="column is-6">
                        <label class="label">Cód. Estoque</label>
                        <p class="control has-icon has-icon-right">
                            <input class="input" type="number" name="estoque" value="">
                        </p>
                    </div>
                </div>
            </form>
        </div>
        <script type="text/javascript" src="js/zepto.min.js"></script>
        <script type="text/javascript" src="js/form-validation.js"></script>
    </body>
</html>
