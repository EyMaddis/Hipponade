
<%@ page import="hipponade.Recipe" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'recipe.label', default: 'Recipe')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>

<body>
<div class="schnack container">
    <div class="row">
        <div class="col-md-8">
            <h1>${recipeInstance?.name}</h1>
        </div>
        <div class="col-md-4">
            <h1>Zutatenliste</h1>
        </div>
    </div>
    <div class="row">
        <div class="col-md-8">
            <g:if test="${recipeInstance?.images}">
                <img id="recipe" src="/Hipponade/assets/products/${recipeInstance?.images[0].fileName}" width="100%" max-width="500px" alt="...">
            </g:if>
            <g:else>
                <img src="/Hipponade/assets/products/standart.png" alt="...">
            </g:else>
        </div>
        <div class="col-md-4">
            <div class="row lead">
                <div class="col-md-6">
                    <g:each in="${recipeInstance.ingredients}" var="i">
                        <p class="text-left">${i?.amount} ${i?.type}</p>
                    </g:each>
                %{--<p class="text-left">${recipeInstance.product.name}</p>--}%
                </div>
                <div class="col-md-6">
                    <g:each in="${recipeInstance.ingredients}" var="i">
                        <p>${i?.ingredient.name}</p>
                    </g:each>
                </div>
            </div>
        </div>
    </div>
    <div class="row schnack">
        <div class="col-md-8">
            <div class="lead">
               <h2>Zubereitung</h2>
            </div>
        </div>
        <div class="col-md-4">
            <div class="lead">
                <h2>Nährwerte</h2>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-8">
            <g:if test="${recipeInstance?.instructions}">


                <span class="property-value lead" aria-labelledby="instructions-label"><g:fieldValue
                        bean="${recipeInstance}" field="instructions"/></span>

            </g:if>
        </div>
        <div class="col-md-4">
        <g:if test="${recipeInstance?.nutrition}">
            <g:render template="single" bean="${recipeInstance}" var="Instance" />
        </g:if>
            </div>
    </div>
        <div class="col-md-4">
        <p align="right" class="lead">
            <g:if test="${recipeInstance?.tags}">
                <div class="form-group row">
                    <label class="col-sm-2 control-label text-right">
                        Tags:
                    </label>
                    <div class="col-sm-10 text-left">
                        <g:each in="${recipeInstance.tags}" var="t">
                            <g:link controller="tag" action="show" id="${t.id}" class="btn btn-default btn-xs">${t?.encodeAsHTML()}</g:link>
                        </g:each>
                    </div>
                </div>
            </g:if>
        </p>
        </div>
    </div>


            



        <sec:ifLoggedIn>
        <g:form url="[resource: recipeInstance, action: 'delete']" method="DELETE">
            <fieldset class="buttons pull-right">
                <g:link class="edit btn btn-warning" action="edit" resource="${recipeInstance}"><g:message
                        code="default.button.edit.label" default="Edit"/></g:link>
                <g:actionSubmit class="delete btn btn-danger" action="delete"
                                value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                                onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
            </fieldset>
        </g:form>
        </sec:ifLoggedIn>
    </div>
%{--</div>--}%
</body>
</html>
