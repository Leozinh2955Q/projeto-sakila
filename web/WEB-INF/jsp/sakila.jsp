<%-- 
    Document   : sakila
    Created on : 13/08/2024, 15:17:41
    Author     : Senai
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <link rel="stylesheet" href="./styles/style.css">
        <title>JSP Page</title>       
    </head>
    <body>
        <h1>SAKILA</h1>
        <div class="d-flex justify-content-center">
            <a href="./NovoFilme" class="btn btn-primary" id="cad"><i class="fa-solid fa-plus"></i></a> 
        </div>
        
        <table class="tabela-filmes m-auto" >
            <thead>
                <tr> 
                    <td class="p-3">ID</td>
                    <td class="p-3">TITULO</td>
                    <td class="p-3">DESCRICAO</td>
                    <td class="p-3">ANO</td>
                    <td>AÇÕES</td>
                    
                    
                </tr>
            </thead>
            <tbody>
                <c:forEach var="filme" items="${lista}">
            
                <tr>
                    <td class="p-3">${filme.film_id}</td>
                    <td class="p-3">${filme.title}</td>
                    <td class="p-3">${filme.description}</td>
                    <td class="p-3">${filme.release_year}</td>
                    <td>  
                        <a href="./editar?filme=${filme.film_id}"> <%-- O PONTO DE INTERROGAÇÃO SERVE PARA DEFINIR O PARÂMETRO--%>
                        <button type="button" class="btn btn-warning"><i class="fa-solid fa-pencil"></i></button>
                         
                        <a href="./excluir?filme=${filme.film_id}">
                        <button type="button" class="btn btn-danger"><i class="fa-solid fa-trash"></i></button> 
                        </a>
                    </td>
                </tr>
        

        </c:forEach>
            </tbody>
        </table>
          <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
          <script src="https://kit.fontawesome.com/cb49d812a6.js" crossorigin="anonymous"></script>
        </body>
</html>
