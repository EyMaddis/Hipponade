<div class="row news-post">
    <div class="featurette">
        <div class="row">
            <div class="jumbotron" style="<g:if test="${eventInstance?.images}">background-image: url(${createLink(uri: '/')}assets/products/${eventInstance?.images[0].fileName}</g:if>);
            background-repeat: no-repeat; background-size: cover; margin-left: 0px; height: 250px">
                <h1 class="marketing">
                    <g:link controller="event" action="show" id="${eventInstance.id}">
                        ${eventInstance.name}
                    </g:link>
                </h1>
                <div class="col-md-4 col-md-offset-4 schnack">
                    <g:if test="${eventInstance?.tags}">
                        <div class="row text-center" style="margin-bottom: 10px">
                            <g:each in="${eventInstance.tags}" var="t">
                                <g:link controller="tag" action="show" id="${t.id}" class="btn btn-default btn-xs">#${t?.encodeAsHTML()}</g:link>
                            </g:each>
                        </div>
                    </g:if>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-md-8">
                <div class="panel panel-default">
                    <div class="panel-body lead">
                        <markdown:renderHtml>${raw(eventInstance.description)}</markdown:renderHtml>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="panel panel-default">
                    <table class="table table-responsive">
                        <tr>
                            <td>
                                <strong>Zeit:</strong>
                            </td>
                            <td>
                                <g:formatDate format="dd.MM.yyyy" date="${eventInstance.date}"/>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <strong>Location:</strong>
                            </td>
                            <td>
                                ${eventInstance.location}
                            </td>
                        </tr>
                    </table>
                </div>

            </div>
        </div>
        %{--<a data-toggle="collapse" data-parent="#accordion" href="#eventInfo">
        <span class="btn btn-default glyphicon glyphicon-arrow-down">Mehr</span>
        </a>--}%
    </div>
</div>
