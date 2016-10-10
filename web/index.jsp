<%-- 
    Document   : index
    Created on : 9/10/2016, 04:57:25 PM
    Author     : jhone
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pagina de Inicio CRUD</title>
        <link rel="stylesheet" type="text/css" href="style.css">
    </head>
    <body>
        <h1>Hello World!</h1>
        <table border="0">
            <thead>
                <tr>
                    <th>Mensaje recueda que no siempre sera de esta forma solo es una guia</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td><form action="Response.jsp">
                            <strong>selecione un tema:</strong>
                            <select name="subject_id">
                                <option></option>
                                <option></option>
                            </select>
                            <input type="submit" value="Enviar" name="submit" />
                        </form></td>
                </tr>
                <tr>
                    <td></td>
                </tr>
            </tbody>
        </table>

    </body>
</html>
