
<%@ page import="hipponade.Tag" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'tag.label', default: 'Tag')}"/>
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

    <div id="list-tag" class="content scaffold-list" role="main">
        <h1><g:message code="default.list.label" args="[entityName]"/></h1>

        <div class="table-responsive">
            <table class="table table-striped">
                <thead>
                <tr>
                    
                    <g:sortableColumn property="label" title="${message(code: 'tag.label.label', default: 'Label')}"/>
                    
                </tr>
                </thead>
                <tbody>
                <g:each in="${tagInstanceList}" status="i" var="tagInstance">
                    <tr>
                        
                        <td><g:link action="show"
                                    id="${tagInstance.id}">${fieldValue(bean: tagInstance, field: "label")}</g:link></td>
                        
                    </tr>
                </g:each>
                </tbody>
            </table>
        </div>

        <div class="pagination">
            <g:paginate total="${tagInstanceCount ?: 0}"/>
        </div>
    </div>
</div>
</body>
</html>
