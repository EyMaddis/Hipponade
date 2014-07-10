
<%@ page import="hipponade.NutritionFact" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'nutritionFact.label', default: 'NutritionFact')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<div class="schnack container">
    <div class="nav" role="navigation">
        <ul>
            <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
            <li><g:link class="create" action="create"><g:message code="default.new.label"
                                                                  args="[entityName]"/></g:link></li>
        </ul>
    </div>

    <div id="list-nutritionFact" class="content scaffold-list" role="main">
        <h1><g:message code="default.list.label" args="[entityName]"/></h1>

        <div class="table-responsive">
            <table class="table table-striped">
                <thead>
                <tr>
                    
                    <g:sortableColumn property="calories" title="${message(code: 'nutritionFact.calories.label', default: 'Calories')}"/>
                    
                    <g:sortableColumn property="protein" title="${message(code: 'nutritionFact.protein.label', default: 'Protein')}"/>
                    
                    <g:sortableColumn property="carbs" title="${message(code: 'nutritionFact.carbs.label', default: 'Carbs')}"/>
                    
                    <g:sortableColumn property="fiber" title="${message(code: 'nutritionFact.fiber.label', default: 'Fiber')}"/>
                    
                    <g:sortableColumn property="fat" title="${message(code: 'nutritionFact.fat.label', default: 'Fat')}"/>
                    
                </tr>
                </thead>
                <tbody>
                <g:each in="${nutritionFactInstanceList}" status="i" var="nutritionFactInstance">
                    <tr>
                        
                        <td><g:link action="show"
                                    id="${nutritionFactInstance.id}">${fieldValue(bean: nutritionFactInstance, field: "calories")}</g:link></td>
                        
                        <td>${fieldValue(bean: nutritionFactInstance, field: "protein")}</td>
                        
                        <td>${fieldValue(bean: nutritionFactInstance, field: "carbs")}</td>
                        
                        <td>${fieldValue(bean: nutritionFactInstance, field: "fiber")}</td>
                        
                        <td>${fieldValue(bean: nutritionFactInstance, field: "fat")}</td>
                        
                    </tr>
                </g:each>
                </tbody>
            </table>
        </div>

        <div class="pagination">
            <g:paginate total="${nutritionFactInstanceCount ?: 0}"/>
        </div>
    </div>
</div>
</body>
</html>
