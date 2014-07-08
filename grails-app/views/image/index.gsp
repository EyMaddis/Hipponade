
<%@ page import="hipponade.Image" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'image.label', default: 'Image')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-image" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <div class="table-responsive">
            <table class="table table-striped">
			<thead>
					<tr>
					
						<g:sortableColumn property="fileName" title="${message(code: 'image.fileName.label', default: 'File Name')}" />
					
						<th><g:message code="image.recipe.label" default="Recipe" /></th>
					
						<th><g:message code="image.event.label" default="Event" /></th>
					
						<th><g:message code="image.product.label" default="Product" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${imageInstanceList}" status="i" var="imageInstance">
					<tr >
					
						<td><g:link action="show" id="${imageInstance.id}">${fieldValue(bean: imageInstance, field: "fileName")}</g:link></td>
					
						<td>${fieldValue(bean: imageInstance, field: "recipe")}</td>
					
						<td>${fieldValue(bean: imageInstance, field: "event")}</td>
					
						<td>${fieldValue(bean: imageInstance, field: "product")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
            </div>
			<div class="pagination">
				<g:paginate total="${imageInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
