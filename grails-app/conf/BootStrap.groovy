import hipponade.Image
import hipponade.Ingredient
import hipponade.Product
import hipponade.Recipe
import hipponade.User
import hipponade.Event
import hipponade.Tag
import hipponade.Image

class BootStrap {

    def init = { servletContext ->

        def Ingredient ing1 = new Ingredient(name: "Erdbeere")
        def Ingredient ing2 = new Ingredient(name: "Tomate")
        def Ingredient ing3 = new Ingredient(name: "Kirsche")
        def Ingredient ing4 = new Ingredient(name: "Apfel")
        def Ingredient ing5 = new Ingredient(name: "Birne")
        def Ingredient ing6 = new Ingredient(name: "Banane")
        ing1.save(flush: true, failOnError: true)
        ing2.save(flush: true, failOnError: true)
        ing3.save(flush: true, failOnError: true)
        ing4.save(flush: true, failOnError: true)
        ing5.save(flush: true, failOnError: true)
        ing6.save(flush: true, failOnError: true)

        def User user = new User(username: "test", password: "test")
        user.save(flush: true, failOnError: true)

        def Recipe recipe1 = new Recipe(name: "Cubanade Libre", instructions: "1. Colanade 2. Rum")
        recipe1.save(flush: true, failOnError: true)

        def Recipe recipe2 = new Recipe(name: "Hipponade Sunrise", instructions: "1. Colanade 2. Cherrynade")
        recipe2.save(flush: true, failOnError: true)

        new File( './grails-app/assets/images/products' ).eachFile() {
            f ->
                // imports images
                def img = new Image(fileName: f.getName())
                img.save(flush: true, failOnError: true)

        }
        def img = Image.findByFileName("fritz-kola-breit.png")
        def Product prod = new Product(name: "Colanade", shortDescription: "Nullam id dolor id nibh ultricies vehicula ut id elit.", description: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.   \n" +
                "\n" +
                "Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.   \n" +
                "\n" +
                "Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse")
        prod.addToImages(img)
        prod.addToRecipes(recipe1)
        prod.addToRecipes(recipe2)
        prod.save(flush: true, failOnError: true)

        def e = new Event(name:"Hipponade bei Strandparty", description:"Heute geht die Strandparty mit HIPPONADE ab!!" +
                " Seid dabei, wenn wir mit den neusten Hits den Strand unsicher machen. Freut euch auf HIPPONADE und jede Menge Spaß!!",
                location: "Strand Brasilien", date: new Date());
        if(e.validate()) e.save()
        def t = new Tag(label: "erfrischend");
        if(t.validate()) {
            t.save(flush: true)
        }
        t.save(failOnError: true, flush: true)
    }
    def destroy = {
    }
}
