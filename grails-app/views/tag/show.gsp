
<%@ page import="hipponade.Tag" %>
<%@ page import="hipponade.Event" %>
<%@ page import="hipponade.News" %>
<%@ page import="hipponade.Recipe" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'tag.label', default: 'Tag')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>

<body>
<div class="schnack container">

    <div id="show-tag" class="content scaffold-show" role="main">

        <h1>Inhalte mit dem Tag '${tagInstance.label}'</h1>
        <hr />

        <div class="col-md-3">
            <div class="panel panel-default ">
                <div class="panel-heading">
                    Produkte
                </div>
                <div class="panel-body">
                    <div class="list-group">
                        <g:if test="${products.size < 1}">
                            <span class="list-group-item disabled">
                                Keine Produkte gefunden
                            </span>
                        </g:if>
                        <g:each in="${products}" status="i" var="product">
                            <g:link class="list-group-item" controller="product" action="show" id="${product.id}">
                                ${product.name}
                            </g:link>
                        </g:each>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="panel panel-default ">
                <div class="panel-heading">
                    Neuigkeiten
                </div>
                <div class="panel-body">
                    <div class="list-group">
                        <g:if test="${news.size < 1}">
                            <span class="list-group-item disabled">
                                Keine Neuigkeiten gefunden
                            </span>
                        </g:if>
                        <g:each in="${news}" status="i" var="newsInstance">
                            <g:link class="list-group-item" controller="news" action="show" id="${newsInstance.id}">
                                ${newsInstance.headline}
                            </g:link>
                        </g:each>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-md-3">
            <div class="panel panel-default ">
                <div class="panel-heading">
                    Events
                </div>
                <div class="panel-body">
                    <div class="list-group">
                        <g:if test="${events.size < 1}">
                            <span class="list-group-item disabled">
                                Keine Events gefunden
                            </span>
                        </g:if>
                        <g:each in="${events}" status="i" var="event">
                            <g:link class="list-group-item" controller="event" action="show" id="${event.id}">
                                ${event.name}
                            </g:link>
                        </g:each>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="panel panel-default ">
                <div class="panel-heading">
                    Rezepte
                </div>
                <div class="panel-body">
                    <div class="list-group">
                        <g:if test="${recipes.size < 1}">
                            <span class="list-group-item disabled">
                                Keine Rezepte gefunden
                            </span>
                        </g:if>
                        <g:each in="${recipes}" status="i" var="recipe">
                            <g:link class="list-group-item" controller="recipe" action="show" id="${recipe.id}">
                                ${recipe.name}
                            </g:link>
                        </g:each>
                    </div>
                </div>
            </div>
        </div>
        <sec:ifLoggedIn>
        <g:form url="[resource: tagInstance, action: 'delete']" method="DELETE">
            <fieldset class="buttons pull-right">
                <g:link class="edit btn btn-warning" action="edit" resource="${tagInstance}"><g:message
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
