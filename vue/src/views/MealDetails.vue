<template>
  <div class="mx-auto col-md-8">
    <div id="buttons">
      <span id="span" v-on:click.prevent="editMeal(meal)"> <a href=""></a> </span>
      <span id="delete" v-on:click.prevent="deleteMeal(meal)"><i class="fa fa-trash-o"></i></span>
    </div>

    <div class="meal-details-container">
      <h1 class="text-center">{{meal.name}}</h1>

      <div class="container">
        <div class="row align-items-start text-center">
          <div class="col">
            <h4>Meal Type: {{meal.type_of_meal}}</h4>
          </div>

          <div class="col">
            <h4>Servings: {{meal.servings}}</h4>
          </div>
        </div>

        <h6 class="text-center">{{meal.description}}</h6>
      </div>

      <div class="list-group" id="recipe_list">
        <recipe-panel class="recipe-panel" v-for="recipe in recipeList" :key="recipe.id" :recipe="recipe"></recipe-panel>
      </div>
    </div>

  </div>
</template>

<script>
import AuthService from '../services/AuthService.js'
import RecipePanel from '@/components/RecipePanel.vue'

export default {
    name: 'mealdetails',
    components: {
      RecipePanel
    },
    data(){
        return{
          recipeList: [],
          meal: null
        }
    },
    created(){
        AuthService.searchMeal(this.$route.params.id)
        .then((response) => {
            this.meal = response.data;
            // console.log(response.data);

            let recipes = response.data.mealsRecipesList;

            recipes.forEach((recipe) => {
              // console.log(recipe.recipe_id);
              AuthService.searchRecipe(recipe.recipe_id)
              .then((response) => {
              this.recipeList.push(response.data);
              })
            });
        });
    },
    methods: {
        editMeal(meal){
            this.$router.push('/meals/edit/'+meal.id)
        },
        deleteMeal(meal){
            AuthService.deleteMeal(meal)
            .then(() => {
                this.$router.push('/Meals');
            })
        }
    }
}
</script>

<style scoped>
p, h1, li{
    color: black;
}

.meal-details-container{
  background-color: cornsilk;
  margin-top: 45px;
  border: 5px solid rgb(230, 213, 195);
  background-color: cornsilk;
  border-radius: 10px;
}


#recipe_list, #meal_plan{
    width: 100%;
    overflow-y: auto;
    background-color: white;
}

#recipe_list *, #meal_plan *{
    height: 100px;
    border: 2px solid black;
}

#span {
  position: relative;
  display: inline-flex;
  width: 180px;
  height: 55px;
  margin: 20px;
  perspective: 1000px;
  float: right;
}
#span a{
  font-size: 19px;
  letter-spacing: 1px;
  transform-style: preserve-3d;
  transform: translateZ(-25px);
  transition: transform .25s;
  font-family: 'Montserrat', sans-serif;
  
}
#span a:before,
#span a:after{
  position: absolute;
  content: "EDIT";
  height: 55px;
  width: 180px;
  display: flex;
  align-items: center;
  justify-content: center;
  border: 5px solid black;
  box-sizing: border-box;
  border-radius: 5px;
}
#span a:before{
  color: #fff;
  background: #000;
  transform: rotateY(0deg) translateZ(25px);
}
#span a:after{
  color: #000;
  background: #fff;
  border: 5px solid white;
  transform: rotateX(90deg) translateZ(25px);
}
#span a:hover{
  transform: translateZ(-25px) rotateX(-90deg);
}
#delete {
  float: right;
  background-color: rgb(146, 4, 4);
  width: 50px;
  height: 50px;
  text-align: center;
  border-radius: 5px;
  margin: 20px;
}
#delete i{
  position: relative;
  color: white;
  font-size: 30px;
  margin: 0;
  top:20%;
}

.recipe-panel {
    border: 5px solid rgb(230, 213, 195);
    background-color: cornsilk;
    border-radius: 10px;
}

h6, h1 {
  padding: 3%;
}
</style>