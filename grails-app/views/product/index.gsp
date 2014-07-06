
<%@ page import="hipponade.Product" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'product.label', default: 'Product')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-product" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <div class="table-responsive">
            <table class="table table-striped">
			<thead>
					<tr>
					
						<g:sortableColumn property="css" title="${message(code: 'product.css.label', default: 'Css')}" />
					
						<g:sortableColumn property="description" title="${message(code: 'product.description.label', default: 'Description')}" />
					
						<th><g:message code="product.image.label" default="Image" /></th>
					
						<g:sortableColumn property="name" title="${message(code: 'product.name.label', default: 'Name')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${productInstanceList}" status="i" var="productInstance">
					<tr >
					
						<td><g:link action="show" id="${productInstance.id}">${fieldValue(bean: productInstance, field: "css")}</g:link></td>
					
						<td>${fieldValue(bean: productInstance, field: "description")}</td>
					
						<td>${fieldValue(bean: productInstance, field: "image")}</td>
					
						<td>${fieldValue(bean: productInstance, field: "name")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
            </div>
			<div class="pagination">
				<g:paginate total="${productInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
