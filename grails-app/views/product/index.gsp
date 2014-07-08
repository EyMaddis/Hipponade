<%@ page import="hipponade.Product" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'product.label', default: 'Product')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<div class="container">
    <div id="list-product" class="content scaffold-list marketing" role="main">

        <div class="row">
            <g:each in="${productInstanceList}" status="i" var="productInstance">

                <div class="col-md-3">
                     <g:link action="show"
                            id="${productInstance.id}"><img class="img-responsive"
                                                            src="/Hipponade/assets/products/${productInstance?.images[0].fileName}"
                                                            alt="..."></g:link>

                    <div class="caption">

                        <p class="lead"><g:link action="show"
                                    id="${productInstance.id}">${fieldValue(bean: productInstance, field: "name")}</g:link></p>

                        <p>${fieldValue(bean: productInstance, field: "shortDescription")}</p>
                    </div>
                </div>
            </g:each>

        </div>
        <sec:ifLoggedIn>
            <p class="btn btn-default"> <g:link class="create" action="create">Produkt anlegen</g:link></p>
        </sec:ifLoggedIn>
        <div class="row schnack">
            <div class="col-md-4">
                <p class="lead">Der Umwelt zuliebe</p>

                <p class="blocktext">Unsere Getränke werden aus Zutaten hergestellt, die kontrolliert angebaut wurden.
                So achten wir auf Nachhaltigkeit und die Umwelt.
                Wir wählen gezielt unsere Partner und achten auf deren Produktionsprozesse.
                Biologischer Anbau steht hier an erster Stelle.
                Somit sind unsere Produkte frei von Pestiziden und jeglichen Sachen, die dir Sorgen bereiten können.</p>
            </div>


            <div class="col-md-4">
                <p class="lead">Mit reinem Gewissen genießen</p>

                <p class="blocktext">Alle Hipponaden werden aus frischem Obst und Gemüse hergestellt.
                So kannst du dir sicher sein, dass du bei uns nur das beste bekommst.
                Des Weiteren achten wir für dich darauf, dass alle Zutaten das FairTrade-Siegel tragen.
                Du kannst also, ohne schlechtes Gewissen, deine Hipponade genießen.
                Selbst exotische Zutaten kommen nur von Plantagen, die zu fairen Konditionen Arbeiter beschäftigen.</p>
            </div>

            <div class="col-md-4">
                <p class="lead">Alle guten Dinge sind Drei</p>

                <p class="blocktext">Kommt noch</p>
            </div>
        </div>
    </div>
</div>

</body>
</html>
