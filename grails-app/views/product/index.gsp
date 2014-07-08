<%@ page import="hipponade.Product" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'product.label', default: 'Product')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<div id="list-product" class="content scaffold-list marketing" role="main">
    <p class="lead">Alle Getränke im Überblick</p>
    <div class="row">
        <g:each in="${productInstanceList}" status="i" var="productInstance">

            <div class="col-md-3">
                <img class="img-responsive" src="/Hipponade/assets/products/${productInstance?.images[0].fileName}" alt="...">

                <div class="caption">

                    <h4><g:link action="show"
                                id="${productInstance.id}">${fieldValue(bean: productInstance, field: "name")}</g:link></h4>

                    <p>${fieldValue(bean: productInstance, field: "shortDescription")}</p>
                </div>
            </div>
        </g:each>

    </div>

    <div class="row schnack">
        <div class="col-md-4">
            <p class="lead">Getränke aus biologischen Anbau</p>

            <p class="blocktext">Unsere Getränke werden aus Zutaten hergestellt, die kontrolliert angebaut wurden. So achten wir auf Nachhaltigkeit und die Umwelt.</p>
        </div>


        <div class="col-md-4">
            <p class="lead">Mit reinem Gewissen genießen</p>
            <p class="blocktext">Alle Hipponaden werden aus frischem Obst und Gemüse hergestellt.
            So kannst du dir sicher sein, dass du etwas gesundes trinkst.</p>
        </div>

        <div class="col-md-4">
            <p class="lead">Alle guten Dinge sind Drei</p>
            <p class="blocktext">Kommt noch</p>
        </div>
    </div>
</div>

</body>
</html>
