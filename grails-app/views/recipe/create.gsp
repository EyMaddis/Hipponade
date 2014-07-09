<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'recipe.label', default: 'Recipe')}"/>
    <title><g:message code="default.create.label" args="[entityName]"/></title>
</head>

<body>
<div class="container">
    <div class="nav" role="navigation">
        <ul>
            <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
            <li><g:link class="list" action="index"><g:message code="default.list.label"
                                                               args="[entityName]"/></g:link></li>
        </ul>
    </div>

    <div id="create-recipe" class="content scaffold-create form-group" role="main">
        <h1><g:message code="default.create.label" args="[entityName]"/></h1>
        <g:hasErrors bean="${recipeInstance}">
            <ul class="errors" role="alert">
                <g:eachError bean="${recipeInstance}" var="error">
                    <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message
                            error="${error}"/></li>
                </g:eachError>
            </ul>
        </g:hasErrors>
        <g:form url="[resource: recipeInstance, action             : 'save']"  role="form" class="form-horizontal">
        <fieldset>
            <g:render template="form"/>
        </fieldset>
        <fieldset class="buttons pull-right">
            <g:submitButton name="create" class="btn btn-success save"
                            value="${message(code: 'default.button.create.label', default: 'Create')}"/>
        </fieldset>
        </g:form>
    </div>
</div>
</body>
</html>
