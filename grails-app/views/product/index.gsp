
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


            <div class="row marketing">
				<g:each in="${productInstanceList}" status="i" var="productInstance">

                <div class="col-md-3">
                    <div class="thumbnail">
                        <img src="/Hipponade/assets/products/fritz-kola-breit.png" alt="...">
					    <div class="caption">

                            <h3>${fieldValue(bean: productInstance, field: "name")}</h3>
		    				<p>${fieldValue(bean: productInstance, field: "shortDescription")}</p>
                            <p class="btn btn-default"><g:link action="show" id="${productInstance.id}">Mehr dazu</g:link></p>
                        </div>
                    </div>
                </div>
				</g:each>

            </div>
			<div class="pagination">
				<g:paginate total="${productInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
