
<%@ page import="hipponade.Product" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'product.label', default: 'Product')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div id="list-product" class="content scaffold-list marketing" role="main">
			<h1>Unsere Getränke</h1>


            <div class="row">
				<g:each in="${productInstanceList}" status="i" var="productInstance">

                <div class="col-md-3">
                        <img class="img-responsive" src="/Hipponade/assets/products/fritz-kola-breit.png" alt="...">
					    <div class="caption">

                            <h3>${fieldValue(bean: productInstance, field: "name")}</h3>
		    				<p>${fieldValue(bean: productInstance, field: "shortDescription")}</p>
                            <p class="btn btn-default"><g:link action="show" id="${productInstance.id}">Mehr dazu</g:link></p>
                        </div>
                </div>
				</g:each>

            </div>
		</div>
	</body>
</html>
