<div class="row news-post">
    <div class="featurette">
        <h1>
            <g:link action="show" id="${newsInstance.id}">
                ${newsInstance.headline}
            </g:link>
        </h1>

        <g:if test="${newsInstance?.tags}">
            <div class="form-group row">
                <label class="col-sm-2 control-label text-right">
                    Tags:
                </label>
                <div class="col-sm-10 text-left">
                    <g:each in="${newsInstance.tags}" var="t">
                        <g:link controller="tag" action="show" id="${t.id}" class="btn btn-default btn-xs">${t?.encodeAsHTML()}</g:link>
                    </g:each>
                </div>
            </div>
        </g:if>
        %{--<hr />--}%
        <div class="text-justify text-center panel panel-default news-content">
            %{--<% def content = raw(newsInstance.content)--}%
            %{--if(content != null)--}%
            %{--content = content.replaceAll('\n','<br />')--}%
            %{--%>--}%
            <markdown:renderHtml>${raw(newsInstance.content)}</markdown:renderHtml>

        </div>
    </div>
</div>
