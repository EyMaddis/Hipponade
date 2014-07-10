
    <div class="featurette">
        <g:if test="${Instance?.nutrition}">
            <div class="col-md-4">
                <h2>
                    Nährwerte
                </h2>
                <div class="row">
                    <div class="col-md-6 lead">
                        <p>${Instance?.nutrition?.calories?:0}</p>
                        <p>${Instance?.nutrition?.fat?:0}</p>
                        <p>${Instance?.nutrition?.carbs?:0}</p>
                        <p>${Instance?.nutrition?.protein?:0}</p>
                        <p>${Instance?.nutrition?.fiber?:0}</p>
                    </div>
                    <div class="col-md-6 lead">
                        <p>kcal</p>
                        <p>Fett</p>
                        <p>Kohlenhydrate</p>
                        <p>Eiweiß</p>
                        <p>Ballaststoffe</p>
                    </div>
                </div>
            </div>
        </g:if>
    </div>

