import hipponade.Image
import hipponade.Ingredient
import hipponade.NutritionFact
import hipponade.Product
import hipponade.Recipe
import hipponade.RecipeIngredient
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
                " Seid dabei, wenn wir mit den neusten Hits am Strand chillen. Freut euch auf HIPPONADE und jede Menge Spaß!!",
                location: "Strand Brasilien", date: new Date());
        if(e.validate()) e.save()

        //tags
        def t = new Tag(label: "erfrischend")
        if(t.validate()) t.save(flush: true)
        def lecker = new Tag(label: "superlecker")
        if(lecker.validate()) lecker.save(flush: true)
        def einfach = new Tag(label: "einfach")
        if(einfach.validate()) einfach.save(flush: true)
        def sweet = new Tag(label: "süß")
        if(sweet.validate()) sweet.save(flush: true)

        //nutritionFacts
        def nuts = new NutritionFact(fat: 0, carbs: 4, protein: 0, calories: 40, fiber: 0)  //for a -nade
        nuts.save(failOnError: true, flush: true)
        def recnuts = new NutritionFact(fat: 9, carbs: 65, protein: 8, calories: 316, fiber: 0).save(failOnError: true,flush: true) //kommt noch, für fantakuchen
        def nadanuts = new NutritionFact(fat: 1.88, carbs: 22.66, protein: 0.42, calories: 174, fiber: 0.3).save(failOnError: true, flush: true) //für cocktail colada

        //ingredients
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
        def recI1 = new RecipeIngredient(ingredient: sugar, amount: 2, type: "Tasse").save(failOnError: true, flush: true)
        def recI2 = new RecipeIngredient(ingredient: flour, amount: 3, type: "Tasse").save(failOnError: true, flush: true)
        def recI3 = new RecipeIngredient(ingredient: fat, amount: 1, type: "Tasse").save(failOnError: true, flush: true)
        def recI4 = new RecipeIngredient(ingredient: vanSugar, amount: 1, type: "Päckchen").save(failOnError: true, flush: true)
        def recI5 = new RecipeIngredient(ingredient: natron, amount: 1, type: "Päckchen").save(failOnError: true, flush: true)
        def recI6 = new RecipeIngredient(ingredient: egg, amount: 4, type: "g").save(failOnError: true, flush: true)
        def recI7 = new RecipeIngredient(ingredient: salt, amount: 1, type: "Päckchen").save(failOnError: true, flush: true)
        def recl9 = new RecipeIngredient(ingredient: rum, amount: 6, type: "cl")
        def recl10 = new RecipeIngredient(ingredient: cream, amount: 2, type: "cl")
        def recl11 = new RecipeIngredient(ingredient: coconutCream, amount: 4, type: "cl")



        //recipes
        def rec = new Recipe(name: "Hipponadenkuchen", shortDescription: "einfacher, leckerer Kuchen",
                instructions: "Einfach alle Zutaten vermischen und auf einem gefetteten Backblech oder in eine Springform geben. " +
                        "Bei 180°C circa 40-45 Minuten backen. In der Springform ein wenig länger. " +
                        "Besonder lecker mit selbstgemachter Sahne obendrauf und einer Hipponade nebenbei!!")  //fantakuchen
        rec.addToIngredients(recI1)
        rec.addToIngredients(recI2)
        rec.addToIngredients(recI3)
        rec.addToIngredients(recI4)
        rec.addToIngredients(recI5)
        rec.addToIngredients(recI6)
        rec.addToIngredients(recI7)
        rec.addToTags(lecker)
        rec.addToTags(einfach)
        rec.nutrition = recnuts
        rec.save(failOnError: true, flush: true)

        def hipponada = new Recipe(name: "Pina Hipponada", shortDescription: "leckerer Cocktail mit Hipponade!",
        instructions: "Zuerst den Rum in ein hübsches Cocktailglas geben. Dann Kokossirup und Sahne dazu! " +
                "Nun fehlt nur noch HIPPONANAS! Und dein Cocktail wird das Highlight jeder Party!!") //rezept für einen pinacolada mit hipponade(ananas)
        hipponada.addToTags(einfach)
        hipponada.addToTags(lecker)
        hipponada.addToTags(sweet)
        hipponada.addToIngredients(recl9)
        hipponada.addToIngredients(recl10)
        hipponada.addToIngredients(recl11)
        hipponada.nutrition = nadanuts
        hipponada.save(failOnError: true, flush: true)
    }
    def destroy = {
    }
}
