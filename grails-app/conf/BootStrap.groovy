import hipponade.Image
import hipponade.Ingredient
import hipponade.NutritionFact
import hipponade.Product
import hipponade.Recipe
import hipponade.RecipeIngredient
import hipponade.Store
import hipponade.User
import hipponade.Event
import hipponade.Tag
import hipponade.Image

class BootStrap {

    def init = { servletContext ->

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
        def e = new Event(name:"Hipponade bei Strandparty", description:"Heute geht die Strandparty mit HIPPONADE ab!!" +
                " Seid dabei, wenn wir mit den neusten Hits am Strand chillen. Freut euch auf HIPPONADE und jede Menge Spaß!!",
                location: "Strand Brasilien", date: new Date());
        if(e.validate()) e.save()

        //tags
        def vegan = new Tag(label: "vegan").save(flush: true)
        def bio = new Tag(label: "bio").save(flush: true)
        def fairtrade = new Tag(label: "fairtrade").save(flush: true)
        def refreshing = new Tag(label: "erfrischend").save(flush: true)
        def delicious = new Tag(label: "lecker").save(flush: true)
        def simple = new Tag(label: "einfach").save(flush: true)
        def sweet = new Tag(label: "süß").save(flush: true)
        def sour = new Tag(label: "sauer").save(flush: true)

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
        def recl9 = new RecipeIngredient(ingredient: rum, amount: 6, type: "cl")
        def recl10 = new RecipeIngredient(ingredient: cream, amount: 2, type: "cl")
        def recl11 = new RecipeIngredient(ingredient: coconutCream, amount: 4, type: "cl")



        //recipes
        def rec = new Recipe(name: "Hipponadenkuchen", shortDescription: "einfacher, leckerer Kuchen",
                instructions: "Einfach alle Zutaten vermischen und auf einem gefetteten Backblech oder in eine Springform geben. " +
                        "Bei 180°C circa 40-45 Minuten backen. In der Springform ein wenig länger. " +
                        "Besonders lecker mit selbstgemachter Sahne obendrauf und einer Hipponade nebenbei!!")  //fantakuchen
        rec.addToIngredients(recI1)
        rec.addToIngredients(recI2)
        rec.addToIngredients(recI3)
        rec.addToIngredients(recI4)
        rec.addToIngredients(recI5)
        rec.addToIngredients(recI6)
        rec.addToIngredients(recI7)
        rec.addToTags(delicious)
        rec.addToTags(simple)
        rec.nutrition = recnuts
        rec.addToImages(Image.findByFileName("hipponadenkuchen.jpg"))
        rec.save(failOnError: true, flush: true)

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
        hipponada.save(failOnError: true, flush: true)


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
        .addToRecipes(recipe1)
        .addToRecipes(recipe2)

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


        new Product(name: "Hipponade Braun", shortDescription: "Das feinste aus Frucht und Cola",
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
