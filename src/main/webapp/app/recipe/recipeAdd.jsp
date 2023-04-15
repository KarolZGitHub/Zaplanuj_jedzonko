<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ include file="/logged/header.jsp" %>
<%@ include file="/logged/sideMenu.jsp" %>

<body>
<div class="m-4 p-3 width-medium text-color-darker">
    <div class="dashboard-content border-dashed p-3 m-4 view-height">
        <form action="..." method="..." name="..." id="...">
            <div class="mt-4 ml-4 mr-4">
                <div class="row border-bottom border-3">
                    <div class="col"><h3 class="color-header text-uppercase">Nowy przepis</h3></div>
                </div>

                <table class="table borderless">
                    <tbody>
                    <!-- Kod formularza -->
                    <form action="/app/recipe/add" method="post">
                        <label for="title">Tytuł:</label>
                        <input type="text" id="title" name="title" required><br>
                        <label for="description">Opis:</label><br>
                        <textarea id="description" name="description" rows="4" cols="50" required></textarea><br>
                        <input type="submit" value="Wyślij">
                    </form>
                    </tbody>
                </table>
            </div>
        </form>
    </div>
</div>














</body>

<%@ include file="/footer.jsp" %>
