
<div class="navbar-wrapper">
    <div class="container">

        <div class="navbar navbar-inverse navbar-fixed-top" role="navigation">

            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <g:navigationLink linkOnly="true" class="navbar-brand" url="${createLink(uri: '/')}">Hipponade</g:navigationLink>
                </div>
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        %{-- Selbst geschriebenes Navigations Tag --}%
                        <g:navigationLink controller="product">Getränke</g:navigationLink>
                        <g:navigationLink controller="news">Neuigkeiten</g:navigationLink>
                        <g:navigationLink controller="about" action="index">Über Uns</g:navigationLink>
                        <g:navigationLink controller="about" action="story">Geschichte</g:navigationLink>
                        <g:navigationLink controller="recipe">Rezepte</g:navigationLink>
                    </ul>
                    <form class="navbar-form navbar-right" role="search">
                        <div class="input-group">
                            <input type="text" class="form-control" placeholder="Search">
                            <span class="input-group-btn">
                                <button type="submit" class="btn btn-default"><span class="glyphicon glyphicon-search"></span></button>
                            </span>
                        </div>
                    </form>
                </div>

            </div>
        </div>

    </div>
</div>