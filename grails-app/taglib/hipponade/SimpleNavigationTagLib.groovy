package hipponade

class SimpleNavigationTagLib {
    //static defaultEncodeAs = 'html'
    //static encodeAsForTags = [tagName: 'raw']
    /**
     * Checks if the current page equals the given controller (and action)
     *
     * @attr controller the controller currently in use
     * @attr action the action of the controller
     */
    def ifCurrentPage = { attrs, body ->
        if (isCurrentPage(attrs))
            out << body()
    }

    /**
     * create a list item element with every other attribute will be interpreted
     * as html attributes
     *
     * @attr controller
     * @attr action
     * @attr url
     * @attr linkOnly boolean
     */
    def navigationLink = { attrs, body ->

        def link = createLink(attrs);
        if(isCurrentPage(attrs)){
            if(attrs.class) {
                attrs.class <<= " active"
            } else {
                attrs.class = "active"
            }
        }

        def linkOnly = attrs.containsKey("linkOnly") && attrs.linkOnly != "" &&
                attrs.linkOnly.toString().equalsIgnoreCase("true")
        if(linkOnly) out << '<a'
        else out << '<li'
        attrs.each { key, value ->
            if(["controller", "action", "url", "linkOnly"].contains(key)) return
            out << " ${key}=\"${value}\""
        }
        if(!linkOnly) out << '><a'
        out << ' href="' << link <<'">'<< body() <<'</a>'
        if(!linkOnly) out << '</li>'

    }
    private isCurrentPage(attrs) {
        if(attrs?.controller == null && controllerName == null)
            return true
        if(controllerName == null) {
            return false
        }; // can't be equal
        if(controllerName.equals(attrs.controller)){
            if(attrs.containsKey("action") && attrs.action != null){
                return actionName != null && actionName.equals(attrs.action)
            }
            else {
                return true
            }
        }
        return false
    }

}
