
<%@ page import="hipponade.Product" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'product.label', default: 'Product')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>

<body>
<div class="jumbotron marketing">
            <img src="/Hipponade/assets/products/${productInstance?.images[0].fileName}" alt="...">
</div>
<div class="container marketing">
    <div id="show-product" class="content scaffold-show" role="main">

        <p class="lead biglead">${productInstance?.name}</p>

                <p class="blocktext">
                    ${productInstance?.description}
                </p>


        <div class="row">

            <div class="col-md-4 col-md-offset-2">
        <div class="lead schnack">
            Passende Rezeptideen
        </div>

        <g:if test="${productInstance?.recipes}">
        <g:each in="${productInstance?.recipes}" status="i" var="recipe">
        <p><g:link action="show" controller="recipe"
                   id="${recipe.id}">${recipe.name}</g:link></p>
        </g:each>
        </g:if>
        <g:else>Noch keine da!<br/>Sende uns deine Idee an: <br/><a href="mailto:rezepte@hippona.de">rezepte@hippona.de</a></g:else>
        </div>

        <div class="col-md-4">
        <div class="lead schnack">
            Nährwerte
        </div>
            <div class="row">
                <div class="col-md-6">Dieses Produkt enthält durchschnittlich:</div>
                <div class="col-md-6">pro 100g:</div>
            </div>
        <div class="row">
            <div class="col-md-6">
            <p class="text-left">kcal</p>
            <p class="text-left">Fett</p>
            <p class="text-left">Kohlenhydrate</p>
            <p class="text-left">Eiweiß</p>
            <p class="text-left">Ballaststoffe</p></div>
            <div class="col-md-6">
                <p>${productInstance?.nutrition?.calories?:0}</p>
                <p>${productInstance?.nutrition?.fat?:0}</p>
                <p>${productInstance?.nutrition?.carbs?:0}</p>
                <p>${productInstance?.nutrition?.protein?:0}</p>
                <p>${productInstance?.nutrition?.fiber?:0}</p></div>
        </div>
    </div>
    </div>
        <div class="row schnack">
            <div class="col-md-4 col-md-offset-2">
                <div class="lead">Zutaten</div>
                <g:each in="${productInstance?.ingredients}" status="i" var="ingredient">
                    <p>${ingredient.name}</p>
                </g:each>
            </div>
            <div class="col-md-4">
                <div class="lead">Hier kannst du es kaufen</div>
                <g:each in="${productInstance?.store}" status="i" var="store">

                    <g:if test="${i == 5}"><div id="morestores" class="collapse"></g:if>
                        <p>${store.name}</p>
                    <g:if test="${i == productInstance.store.size() - 1 && i >= 5}"></div></g:if>


                </g:each>
                <g:if test="${productInstance?.store?.size() > 5}"><a data-toggle="collapse" data-parent="#accordion" href="#morestores">
                    <span class="btn btn-default glyphicon glyphicon-arrow-down">Mehr</span>
                </a></g:if>
                    </div>
            </div>
        </div>

        <sec:ifLoggedIn>
        <g:form url="[resource: productInstance, action: 'delete']" method="DELETE">
            <fieldset class="buttons pull-right">
                <g:link class="edit btn btn-warning" action="edit" resource="${productInstance}"><g:message
                        code="default.button.edit.label" default="Edit"/></g:link>
                <g:actionSubmit class="delete btn btn-danger" action="delete"
                                value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                                onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
            </fieldset>
        </g:form>
        </sec:ifLoggedIn>
    </div>
</div>
</body>
</html>
