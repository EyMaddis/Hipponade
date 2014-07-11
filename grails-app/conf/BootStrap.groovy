import hipponade.Image
import hipponade.Ingredient
import hipponade.News
import hipponade.NutritionFact
import hipponade.Product
import hipponade.Recipe
import hipponade.RecipeIngredient
import hipponade.Role
import hipponade.Store
import hipponade.User
import hipponade.Event
import hipponade.Tag
import hipponade.Image
import hipponade.UserRole

class BootStrap {

    def init = { servletContext ->

        def Role role = new Role(authority: "ROLE_ADMIN")
        role.save(flush: true, failOnError: true)


        def User user = new User(username: "test", password: "test")
        user.save(flush: true, failOnError: true)


        UserRole.create(user, role, true)

        new File( './grails-app/assets/images/products' ).eachFile() {
            f ->
                // imports images
                def img = new Image(fileName: f.getName())
                img.save(flush: true, failOnError: true)

        }
        //tags
        def vegan = new Tag(label: "vegan").save(flush: true)
        def bio = new Tag(label: "bio").save(flush: true)
        def fairtrade = new Tag(label: "fairtrade").save(flush: true)
        def refreshing = new Tag(label: "erfrischend").save(flush: true)
        def delicious = new Tag(label: "lecker").save(flush: true)
        def simple = new Tag(label: "einfach").save(flush: true)
        def sweet = new Tag(label: "süß").save(flush: true)
        def sour = new Tag(label: "sauer").save(flush: true)
        def sun = new Tag(label: "sonnig").save(failOnError: true, flush: true)
        def cocktails = new Tag(label: "Cocktail").save(failOnError: true, flush: true)
        def party = new Tag(label: "Party").save(failOnError: true, flush: true)
        def concert = new Tag(label: "Konzert").save(failOnError: true, flush: true)
        def fun = new Tag(label: "Spaß").save(failOnError: true, flush: true)

        //events
        def e = new Event(name:"Hipponade bei Strandparty", description:"Heute geht die Strandparty mit HIPPONADE ab!!" +
                " Seid dabei, wenn wir mit den neusten Hits am Strand chillen. Freut euch auf HIPPONADE und jede Menge Spaß!!",
                location: "Strand Brasilien", date: new Date(), author: user, tags: [sun,fun, party], images: [Image.findByFileName("strandparty.jpg")]);
        e.addToTags(sun)
        if(e.validate()) e.save(flush: true)
        new Event(name: "Mit Hipponade nach Flensburg", description: "Sei dabei, wenn Hipponade sich am Kieler Bahnhof trifft und nach Flensburg fährt! DAS Event von dem alle sprechen! SOMMER, SONNE, FLENSBURG!!",
                location: "Flensburg", date: new Date(), author: user, images: [Image.findByFileName("felsnburgstrand.jpg")], tags: [refreshing, sun]).save(failOnError: true, flush: true)
        new Event(name: "Hipponade Strandfestival", description: "Bald beginnt das Hipponade Strandfestival! \n" +
                "Wir bieten euch jede Menge Spaß, gute Musik und tolle Getränke. Die Karten sind bereits ausverkauft, wir freuen uns also auf euch. \n" +
                "Bringt gute Laune mit und freut euch auf folgende Music-Acts:\n\n" +
                "* Backstreet Boys\n" +
                "* Bro'Sis\n" +
                "* No Angels\n" +
                "* Overground\n" +
                "* Preluders\n" +
                "* Nu Pagadi\n" +
                "* Monrose\n" +
                "* Room2012\n" +
                "* Queensberry\n" +
                "* LaVive\n\n" +
                "Sichert euch jetzt schon die Shirts des Strandfestivals und chillt mit einer Hipponade bis das Festival beginnt!",
                location: "Falckensteiner Strand", date: new Date(), author: user,
                images: [Image.findByFileName("strandfestival.jpg")], tags: [sun, fun, concert, party, cocktails]).save(failOnError: true, flush: true)

        //nutritionFacts
        def nuts = new NutritionFact(fat: 0, carbs: 4, protein: 0, calories: 40, fiber: 0)  //for a -nade
        nuts.save(failOnError: true, flush: true)
        def recnuts = new NutritionFact(fat: 9, carbs: 65, protein: 8, calories: 316, fiber: 0).save(failOnError: true,flush: true) //kommt noch, für fantakuchen
        def nadanuts = new NutritionFact(fat: 1.88, carbs: 22.66, protein: 0.42, calories: 174, fiber: 0.3).save(failOnError: true, flush: true) //für cocktail colada

        //ingredients
        def Ingredient cocanut = new Ingredient(name: "Coca-Nuss").save(flush: true, failOnError: true)
        def Ingredient strawberry = new Ingredient(name: "Erdbeere").save(flush: true, failOnError: true)
        def Ingredient tomato = new Ingredient(name: "Tomate").save(flush: true, failOnError: true)
        def Ingredient cherry = new Ingredient(name: "Kirsche").save(flush: true, failOnError: true)
        def Ingredient apple = new Ingredient(name: "Apfel").save(flush: true, failOnError: true)
        def Ingredient pear = new Ingredient(name: "Birne").save(flush: true, failOnError: true)
        def Ingredient banana = new Ingredient(name: "Banane").save(flush: true, failOnError: true)
        def Ingredient lemon = new Ingredient(name: "Zitrone").save(flush: true, failOnError: true)
        def Ingredient elder = new Ingredient(name: "Holunder").save(flush: true, failOnError: true)
        def Ingredient orange = new Ingredient(name: "Orange").save(flush: true, failOnError: true)
        def sugar = new Ingredient(name: "Zucker").save(failOnError: true, flush: true)
        def flour = new Ingredient(name: "Mehl").save(failOnError: true, flush: true)
        def fat =  new Ingredient(name: "Öl").save(failOnError: true, flush: true)
        def natron = new Ingredient(name: "Backpulver").save(failOnError: true, flush: true)
        def vanSugar = new Ingredient(name: "Vanillezucker").save(failOnError: true, flush: true)
        def egg = new Ingredient(name: "Ei").save(failOnError: true, flush: true)
        def salt = new Ingredient(name: "Salz").save(failOnError: true, flush: true)
        def cream = new Ingredient(name: "Sahne").save(failOnError: true, flush: true)
        def rum = new Ingredient(name: "Rum").save(failOnError: true, flush: true)
        def coconutCream = new Ingredient(name: "Kokossirup").save(failOnError: true, flush: true)

        //RecipeIngredients
        def recI1 = new RecipeIngredient(ingredient: sugar, amount: 2, type: "Tasse(n)").save(failOnError: true, flush: true)
        def recI2 = new RecipeIngredient(ingredient: flour, amount: 3, type: "Tasse(n)").save(failOnError: true, flush: true)
        def recI3 = new RecipeIngredient(ingredient: fat, amount: 1, type: "Tasse(n)").save(failOnError: true, flush: true)
        def recI4 = new RecipeIngredient(ingredient: vanSugar, amount: 1, type: "Päckchen").save(failOnError: true, flush: true)
        def recI5 = new RecipeIngredient(ingredient: natron, amount: 1, type: "Päckchen").save(failOnError: true, flush: true)
        def recI6 = new RecipeIngredient(ingredient: egg, amount: 4, type: "Stück(e)").save(failOnError: true, flush: true)
        def recI7 = new RecipeIngredient(ingredient: salt, amount: 1, type: "Päckchen").save(failOnError: true, flush: true)
        def recl9 = new RecipeIngredient(ingredient: rum, amount: 6, type: "cl").save(failOnError: true, flush: true)
        def recl10 = new RecipeIngredient(ingredient: cream, amount: 2, type: "cl").save(failOnError: true, flush: true)
        def recl11 = new RecipeIngredient(ingredient: coconutCream, amount: 4, type: "cl").save(failOnError: true, flush: true)



        //recipes
        new Recipe(name: "Hipponadenkuchen", nutrition: recnuts, shortDescription: "einfacher, leckerer Kuchen",
                instructions: "Einfach alle Zutaten vermischen und auf einem gefetteten Backblech oder in eine Springform geben. " +
                        "Bei 180°C circa 40-45 Minuten backen. In der Springform ein wenig länger. " +
                        "Besonders lecker mit selbstgemachter Sahne obendrauf und einer Hipponade nebenbei!!")  //fantakuchen
        .addToIngredients(recI1)
        .addToIngredients(recI2)
        .addToIngredients(recI3)
        .addToIngredients(recI4)
        .addToIngredients(recI5)
        .addToIngredients(recI6)
        .addToIngredients(recI7)
        .addToTags(delicious)
        .addToTags(simple)
        .addToImages(Image.findByFileName("hipponadenkuchen.jpg"))
        .addToImages(Image.findByFileName("pie.jpg"))
        .addToImages(Image.findByFileName("pie2.jpg"))
        .save(failOnError: true, flush: true)

        def hipponada = new Recipe(name: "Pina Hipponada", shortDescription: "leckerer Cocktail mit Hipponade!",
        instructions: "Zuerst den Rum in ein hübsches Cocktailglas geben. Dann Kokossirup und Sahne dazu! " +
                "Nun fehlt nur noch HIPPONANAS! Und dein Cocktail wird das Highlight jeder Party!!") //rezept für einen pinacolada mit hipponade(ananas)
        hipponada.addToTags(simple)
        hipponada.addToTags(delicious)
        hipponada.addToTags(sweet)
        hipponada.addToIngredients(recl9)
        hipponada.addToIngredients(recl10)
        hipponada.addToIngredients(recl11)
        hipponada.nutrition = nadanuts
        hipponada.addToImages(Image.findByFileName("hipponada.jpg"))
        hipponada.save(failOnError: true, flush: true)


        def Recipe cubanaLibre = new Recipe(name: "Cubanade Libre", instructions: "1. Colanade 2. Rum")
        .addToImages(Image.findByFileName('cubalibre.jpg'))
        .save(flush: true, failOnError: true)

        def Recipe sunrise = new Recipe(name: "Hipponade Sunrise", instructions: "1. Colanade 2. Cherrynade")
        .addToImages(Image.findByFileName('sunrise.jpg'))
        .addToImages(Image.findByFileName('sunrise2.jpg'))
        .addToImages(Image.findByFileName('sunrise3.jpg'))
        .save(flush: true, failOnError: true)

        // Stores
        def Store s1 = new Store(name: "Sky Coop", street1: "Weißenburgstr. 15", city: "Kiel", zipCode: 24116, longitude: 10.1184345, latitude: 54.3252079, website: "http://www.sky.coop")
        s1.save(flush: true, failOnError: true)
        def Store s2 = new Store(name: "Mensa Uni Kiel", street1: "Christian-Albrechts-Platz 4", city: "Kiel", zipCode: 24118, longitude: 10.1226603, latitude: 54.3375707, website: "http://www.studentenwerk.sh")
        s2.save(flush: true, failOnError: true)
        def Store s3 = new Store(name: "Lidl", street1: "Kirchhofallee 68", city: "Kiel", zipCode: 24114, longitude: 10.1194585, latitude: 54.3161869, website: "http://www.lidl.de")
        s3.save(flush: true, failOnError: true)
        def Store s4 = new Store(name: "Penny", street1: "Holtenauer Straße 84", city: "Kiel", zipCode: 24105, longitude: 10.13323, latitude: 54.33357, website: "http://www.penny.de")
        s4.save(flush: true, failOnError: true)
        def Store s5 = new Store(name: "real,- SB Warenhaus", street1: "Mergenthalerstraße 21", city: "Schwentinental-Raisdorf", zipCode: 24223, longitude: 10.2231331, latitude: 54.2879833, website: "http://www.real.de")
        s5.save(flush: true, failOnError: true)
        def Store s6 = new Store(name: "Rewe City", street1: "Wilhelminenstraße 10", city: "Kiel", zipCode: 24103, longitude: 10.1334313, latitude: 54.3283649, website:"http://www.rewe.de")
        s6.save(flush: true, failOnError: true)
        def Store s7 = new Store(name: "E Neukauf Kiel", street1: "Sophienhof 20", city: "Kiel", zipCode: 24103, longitude: 10.131532, latitude: 54.316668, website: "http://www.edeka.de")
        s7.save(flush: true, failOnError: true)
        def Store s8 = new Store(name: "Aldi", street1: "Kirchhofallee 25", city: "Kiel", zipCode: 24103, longitude: 10.1248777, latitude: 54.3177336, website: "http://www.aldi.de")
        s8.save(flush: true, failOnError: true)
        def Store s9 = new Store(name: "CITTI-Markt Kiel", street1: "Mühlendamm 1", city: "Kiel", zipCode: 24113, longitude: 10.099299, latitude: 54.313529)
        s9.save(flush: true, failOnError: true)

        // news
        new News(headline: 'Eine Markdown News!',
                author: User.first(),
                date: new Date((long)new Date().getTime() - 86400), // yesterday
                content: "Super Überschrift\n" +
                        "=========\n" +
                        "\n" +
                        "A identity site for a fake beverage manufacturer\n" +
                        "\n" +
                        "\n" +
                        "A project for the course Webinformationsystems at the University of Kiel, summer term 2014\n" +
                        "\n" +
                        "Collaborators:\n" +
                        "\n" +
                        "* Maria-Anna Kandsorra\n" +
                        "* Nelson Tavares de Sousa\n" +
                        "* Mathis Neumann\n")
                .addToTags(vegan)
                .addToTags(refreshing)
                .save(flush: true)
        new News(headline: 'Eine weitere tolle Markdown News!',
                author: User.first(),
                content: "Dieses Beispiel stammt von [unexpected-vortices.com](http://www.unexpected-vortices.com/sw/rippledoc/quick-markdown-example.html)\n" +
                        "\n" +
                        "Paragraphs are separated by a blank line.\n" +
                        "\n" +
                        "2nd paragraph. *Italic*, **bold**, and `monospace`. Itemized lists\n" +
                        "look like:\n" +
                        "\n" +
                        "  * this one\n" +
                        "  * that one\n" +
                        "  * the other one\n" +
                        "\n" +
                        "Note that --- not considering the asterisk --- the actual text\n" +
                        "content starts at 4-columns in.\n" +
                        "\n" +
                        "> Block quotes are\n" +
                        "> written like so.\n" +
                        ">\n" +
                        "> They can span multiple paragraphs,\n" +
                        "> if you like.\n" +
                        "\n" +
                        "Use 3 dashes for an em-dash. Use 2 dashes for ranges (ex., \"it's all\n" +
                        "in chapters 12--14\"). Three dots ... will be converted to an ellipsis.\n" +
                        "\n" +
                        "\n" +
                        "\n" +
                        "An h2 header\n" +
                        "------------\n" +
                        "\n" +
                        "Here's a numbered list:\n" +
                        "\n" +
                        " 1. first item\n" +
                        " 2. second item\n" +
                        " 3. third item\n" +
                        "\n" +
                        "Note again how the actual text starts at 4 columns in (4 characters\n" +
                        "from the left side). Here's a code sample:\n" +
                        "\n" +
                        "    # Let me re-iterate ...\n" +
                        "    for i in 1 .. 10 { do-something(i) }\n" +
                        "\n" +
                        "As you probably guessed, indented 4 spaces. By the way, instead of\n" +
                        "indenting the block, you can use delimited blocks, if you like:\n" +
                        "\n" +
                        "~~~\n" +
                        "define foobar() {\n" +
                        "    print \"Welcome to flavor country!\";\n" +
                        "}\n" +
                        "~~~\n" +
                        "\n" +
                        "(which makes copying & pasting easier). You can optionally mark the\n" +
                        "delimited block for Pandoc to syntax highlight it:\n" +
                        "\n" +
                        "~~~python\n" +
                        "import time\n" +
                        "# Quick, count to ten!\n" +
                        "for i in range(10):\n" +
                        "    # (but not *too* quick)\n" +
                        "    time.sleep(0.5)\n" +
                        "    print i\n" +
                        "~~~")
                .addToTags(vegan)
                .addToTags(simple)
                .addToTags(sweet)
                .save(flush: true)

        // products
        new Product(name: "Colanade", shortDescription: "Der frische Geschmack von Cola ohne Kompromisse",
                description: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. " +
                "At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. " +
                        "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, " +
                        "sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est " +
                        "Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et" +
                        " dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea " +
                        "takimata sanctus est Lorem ipsum dolor sit amet.")
        .addToImages(Image.findByFileName("fritz-kola-breit.png"))
        .addToRecipes(cubanaLibre)
        .addToRecipes(sunrise)

        .addToStore(s1)
        .addToStore(s2)
        .addToStore(s3)
        .addToStore(s4)
        .addToStore(s5)
        .addToStore(s6)

        .addToIngredients(sugar)
        .addToIngredients(cocanut)

        .addToTags(vegan)
        .addToTags(bio)
        .addToTags(fairtrade)
        .addToTags(sweet)
        .addToTags(refreshing)

        .save(flush: true, failOnError: true)


        new Product(name: "Hipponade Rot", shortDescription: "Frisch, fruchtig, wie es sein muss",
                description: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, " +
                        "sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit " +
                        "amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam " +
                        "voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. " +
                        "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua." +
                        "At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.\n\n" +
                        "Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat.",
        css: "body {" +
                "color: rgb(170, 0, 0);" +
                "}")
        .addToImages(Image.findByFileName("fritz-limo-breit.png"))

        .addToStore(s2)
        .addToStore(s3)
        .addToStore(s4)

        .addToIngredients(apple)
        .addToIngredients(cherry)
        .addToIngredients(elder)
        .addToIngredients(lemon)
        .addToIngredients(sugar)

        .addToTags(vegan)
        .addToTags(bio)
        .addToTags(fairtrade)
        .addToTags(sour)
        .addToTags(refreshing)
        .addToTags(refreshing)

        .save(flush: true, failOnError: true)


        new Product(name: "Hipponade Kielwasser", shortDescription: "Das feinste aus Frucht und Cola",
                description: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, " +
                        "sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit " +
                        "amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam " +
                        "voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. " +
                        "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua." +
                        "At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.\n\n" +
                        "Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat.",
                css: "body {" +
                        "color: brown;" +
                        "}")
        .addToImages(Image.findByFileName("mischmasch-breit.png"))

        .addToStore(s1)
        .addToStore(s4)
        .addToStore(s7)
        .addToStore(s8)
        .addToStore(s9)

        .addToIngredients(orange)
        .addToIngredients(lemon)
        .addToIngredients(sugar)
        .addToIngredients(cocanut)

        .addToTags(vegan)
        .addToTags(bio)
        .addToTags(fairtrade)
        .addToTags(sour)
        .addToTags(refreshing)
        .save(flush: true, failOnError: true)
    }
    def destroy = {
    }
}
