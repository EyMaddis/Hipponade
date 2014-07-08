import hipponade.Image
import hipponade.Product
import hipponade.User
import hipponade.Event
import hipponade.Tag
import hipponade.Image

class BootStrap {

    def init = { servletContext ->

        def User user = new User(username: "test", password: "test")
        user.save(flush: true, failOnError: true)

        new File( './grails-app/assets/images/products' ).eachFile() {
            f ->
                // imports images
                def img = new Image(fileName: f.getName())
                img.save(flush: true, failOnError: true)

        }
        def img = Image.findByFileName("fritz-kola-breit.png")
        def Product prod = new Product(name: "Colanade", shortDescription: "Nullam id dolor id nibh ultricies vehicula ut id elit.")
        prod.addToImages(img)
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
