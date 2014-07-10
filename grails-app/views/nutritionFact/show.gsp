
<%@ page import="hipponade.NutritionFact" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="Nährwerte"/>
    <title>Nährwerte</title>
</head>

<body>
<div class="schnack container">
    <div class="nav" role="navigation">
        <ul>
            <a class="home" href="${createLink(uri: request.getHeader('referer'))}">Zurück</a>
            <sec:ifLoggedIn><br><g:link class="create" action="create"><g:message code="default.new.label"
                                                                  args="[entityName]"/></g:link>
            </sec:ifLoggedIn>
        </ul>
    </div>

    <div id="show-nutritionFact" class="content scaffold-show" role="main">
        <h1><g:message code="default.show.label" args="[entityName]"/></h1>
        <div class="col-md-4 lead">
            <div class="row">
                <div class="col-md-6">
                    <p>Kalorien</p>
                    <p>Kohlenhydrate</p>
                    <p>Proteine</p>
                    <p>Fett</p>
                    <p>Ballaststoffe</p>

                </div>
                <div class="col-md-6">
                    <p class="text-left">${nutritionFactInstance.calories} kcal</p>
                    <p class="text-left">${nutritionFactInstance.carbs} g</p>
                    <p class="text-left">${nutritionFactInstance.protein} g</p>
                    <p class="text-left">${nutritionFactInstance.fat} g</p>
                    <p class="text-left">${nutritionFactInstance.fiber} g</p>
                </div>
            </div>
        </div>
        <sec:ifLoggedIn>
        <g:form url="[resource: nutritionFactInstance, action: 'delete']" method="DELETE">
            <fieldset class="buttons pull-right">
                <g:link class="edit btn btn-warning" action="edit" resource="${nutritionFactInstance}"><g:message
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
