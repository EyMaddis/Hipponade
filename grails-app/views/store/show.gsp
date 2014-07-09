
<%@ page import="hipponade.Store" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'store.label', default: 'Store')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>

<body>
<div id="map-canvas" class="jumbotron"></div>
<div class="container">

    <div id="show-store" class="content marketing scaffold-show" role="main">
        <div class="row">
            <div class="col-md-6">
                <h1>
                    ${storeInstance?.name}
                </h1>
                <p class="lead schnack">
                    ${storeInstance?.street1}
                </p>
                <g:if test="${storeInstance?.street2}">
                <p class="lead">
                    ${storeInstance?.street2}
                </p>

                </g:if>
                <p class="lead">
                    ${storeInstance?.country} - ${storeInstance?.zipCode} ${storeInstance?.city}
                </p>
                <g:if test="${storeInstance?.website}">
                <p class="lead schnack">
                    Internetseite:
                </p>
                <a class="lead" target="_blank" href="${storeInstance?.website}">${storeInstance?.website}</a>
                </g:if>

            </div>
            <div class="col-md-6">
                <h2>Hier findest du</h2>
                <div class="schnack">
                <g:each in="${storeInstance.products}" status="i" var="productInstance">
                    <p class="lead"><g:link controller="product" action="show" id="${productInstance.id}">${productInstance.name}</g:link></p>
                </g:each>
                </div>
            </div>
        </div>
        <script type="text/javascript"
                src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBNak3LTdIVKHuVptVka_s4aAHQt9PqgKg&sensor=true">
        </script>
        <sec:ifLoggedIn>
        <g:form url="[resource: storeInstance, action: 'delete']" method="DELETE">
            <fieldset class="buttons pull-right">
                <g:link class="edit btn btn-warning" action="edit" resource="${storeInstance}"><g:message
                        code="default.button.edit.label" default="Edit"/></g:link>
                <g:actionSubmit class="delete btn btn-danger" action="delete"
                                value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                                onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
            </fieldset>
        </g:form>
        </sec:ifLoggedIn>
    </div>
    <script type="text/javascript">
        var map;
        function initialize() {
            var mapOptions = {
                center: new google.maps.LatLng(${storeInstance.latitude}, ${storeInstance.longitude}),
                zoom: 14,
                disableDefaultUI: false,
                // Nicht zoomen beim scrollen
                scrollwheel: false,
                mapTypeId: google.maps.MapTypeId.ROADMAP
            };

            map = new google.maps.Map(document.getElementById("map-canvas"),
                    mapOptions);

            var marker = new google.maps.Marker(
                    { position: new google.maps.LatLng(${storeInstance.latitude}, ${storeInstance.longitude}),
                        map: map,
                        title: "${fieldValue(bean: storeInstance, field: "name")}"});
        }



        google.maps.event.addDomListener(window, 'load', initialize);
        </script>
</div>

</body>
</html>
