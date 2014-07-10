<%@ page import="hipponade.Product" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'product.label', default: 'Product')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<div id="list-product" class="schnack content scaffold-list marketing container" role="main">

    <div class="row products">
        <g:each in="${productInstanceList}" status="i" var="productInstance">

            <div class="product">
                <div class="product-image">
                     <g:link action="show" id="${productInstance.id}">
                         <img class="img-responsive" src="${createLink(uri: '/')}assets/products/${productInstance?.images[0].fileName}">
                     </g:link>
                </div>
                <div class="caption">
                    <h2>
                        <g:link action="show" id="${productInstance.id}">
                            ${productInstance.name}
                        </g:link>
                    </h2>

                    <p class="lead">
                        ${fieldValue(bean: productInstance, field: "shortDescription")}
                    </p>
                </div>
            </div>
        </g:each>
    </div>
    <hr />
    <sec:ifLoggedIn>
        <p class="btn btn-default"> <g:link class="create" action="create">Produkt anlegen</g:link></p>
    </sec:ifLoggedIn>
    <div class="row schnack">
        <div class="col-md-4">
            <h2>Der Umwelt zuliebe</h2>
        </div>
        <div class="col-md-4">
            <h2>Mit reinem Gewissen genießen</h2>
        </div>
        <div class="col-md-4">
            <h2>Alle guten Dinge sind Drei</h2>
        </div>
    </div>
    <div class="row schnack">
        <div class="col-md-4">


            <p class="blocktext lead">Unsere Getränke werden aus Zutaten hergestellt, die kontrolliert angebaut wurden.
            So achten wir auf Nachhaltigkeit und die Umwelt.
            Wir wählen gezielt unsere Partner und achten auf deren Produktionsprozesse.
            Biologischer Anbau steht hier an erster Stelle.
            Somit sind unsere Produkte frei von Pestiziden und jeglichen Sachen, die dir Sorgen bereiten können.</p>
        </div>


        <div class="col-md-4">

            <p class="lead blocktext">Alle Hipponaden werden aus frischem Obst und Gemüse hergestellt.
            So kannst du dir sicher sein, dass du bei uns nur das beste bekommst.
            Des Weiteren achten wir für dich darauf, dass alle Zutaten das FairTrade-Siegel tragen.
            Du kannst also, ohne schlechtes Gewissen, deine Hipponade genießen.
            Selbst exotische Zutaten kommen nur von Plantagen, die zu fairen Konditionen Arbeiter beschäftigen.</p>
        </div>

        <div class="col-md-4">

            <p class="lead blocktext">Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor
            invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et
            ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum </p>
        </div>
    </div>
</div>

</body>
</html>
