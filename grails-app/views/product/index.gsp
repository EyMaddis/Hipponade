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

    <div class="row">
        <g:each in="${productInstanceList}" status="i" var="productInstance">

            <div class="col-md-3">
                <img class="img-responsive" src="/Hipponade/assets/products/${productInstance?.images[0].fileName}" alt="...">

                <div class="caption">

                    <h3><g:link action="show"
                                id="${productInstance.id}">${fieldValue(bean: productInstance, field: "name")}</g:link></h3>

                    <p>${fieldValue(bean: productInstance, field: "shortDescription")}</p>
                </div>
            </div>
        </g:each>

    </div>

    <div class="row">
        <div class="col-md-4">
            <h4>Getränke aus biologischen Anbau</h4>

            <p class="blocktext">Unsere Getränke werden aus Zutaten hergestellt, die kontrolliert angebaut wurden. So achten wir auf Nachhaltigkeit und die Umwelt.</p>
        </div>


        <div class="col-md-4">
            <h4>Mit reinem Gewissen genießen</h4>
            <p class="blocktext">Alle Hipponaden werden aus frischem Obst und Gemüse hergestellt.
            So kannst du dir sicher sein, dass du was gesundes trinkst.</p>
        </div>

        <div class="col-md-4">
            <h4>Alle guten Dinge sind Drei</h4>
            <p class="blocktext">Kommt noch</p>
        </div>
    </div>
</div>

</body>
</html>
