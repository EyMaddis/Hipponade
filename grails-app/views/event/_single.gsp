<div class="row news-post">
    <div class="featurette">

        <g:if test="${Instance?.images}">


        <div class="row jumbotron" style="background-image: url(${createLink(uri: '/')}assets/products/<g:if test="${Instance?.images}">${Instance?.images[0].fileName}</g:if>);
        background-repeat: no-repeat; background-size: 100%; margin-left: 0px">
            <h1 class="marketing">${Instance.name}</h1>
            <div class="col-md-4 col-md-offset-4 schnack">
                    <g:if test="${Instance?.tags}">
                        <div class="row text-center" style="margin-bottom: 10px">
                            <g:each in="${Instance.tags}" var="t">
                                <g:link controller="tag" action="show" id="${t.id}" class="btn btn-default btn-xs">#${t?.encodeAsHTML()}</g:link>
                            </g:each>
                        </div>
                    </g:if>
            </div>
        </div>
        </g:if>
        <div class="text-justify text-center panel panel-default news-content">
            <p class="lead">${Instance.description}</p>

            <p><strong>Location </strong>${Instance.location}</p>
            <p><strong>Wann </strong><g:formatDate format="dd.MM.yyyy" date="${Instance.date}"/>
            <strong>um </strong><g:formatDate date="${Instance.date}" type="time" style="SHORT"/></p>
            <p>${Instance.author.username} <strong>am</strong> <g:formatDate format="dd.MM.yyyy" date="${Instance.dateCreated}"/></p>

        </div>
    </div>
</div>
