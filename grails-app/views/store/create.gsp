<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'store.label', default: 'Store')}"/>
    <title><g:message code="default.create.label" args="[entityName]"/></title>
</head>

<body>
<div class="schnack container">

    <div id="create-store" class="content scaffold-create form-group" role="main">
        <h1><g:message code="default.create.label" args="[entityName]"/></h1>
        <g:hasErrors bean="${storeInstance}">
            <ul class="errors" role="alert">
                <g:eachError bean="${storeInstance}" var="error">
                    <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message
                            error="${error}"/></li>
                </g:eachError>
            </ul>
        </g:hasErrors>
        <g:form url="[resource: storeInstance, action: 'save']"  role="form" class="form-horizontal">
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
