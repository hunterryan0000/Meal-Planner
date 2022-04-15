!<template>
  <div>
    <div id="buttons">
      <span id="span" v-on:click.prevent="editMeal(meal)"> <a href=""></a> </span>
      <span id="delete" v-on:click.prevent="deleteMeal(meal)"><i class="fa fa-trash-o"></i></span>
    </div>

    <div class="meal-details-container">
      <!-- <p> {{meal}} </p> -->
      <div class="container">
        <div class="row align-items-start text-center">

          <div class="col">
            <h1>{{meal.name}}</h1>
            <p>{{meal.description}}</p>
          </div>

          <div class="col">
            <h3>{{meal.type_of_meal}}</h3>
            <h3>Servings: {{meal.servings}}</h3>
          </div>

        </div>
      </div>

      <recipe-panel v-for="recipe in recipeList" :key="recipe.id" :recipe="recipe"></recipe-panel>

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
        console.log(this.$route.params.id);
        AuthService.searchMeal(this.$route.params.id)
        .then((response) => {
            console.log(response.data);
            this.meal = response.data;
        });
        this.meal.recipeList.forEach((recipe) => {
          console.log(recipe.recipe_id);
          AuthService.searchRecipe(recipe.recipe_id)
          .then((response) => {
          console.log(recipe.recipe_id);
          console.log(response.data);
          this.recipeList.push(response.data);
          })
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
}

#buttons{
  padding: 20px;
}

#span{
  position: relative;
  display: inline-flex;
  width: 180px;
  height: 55px;
  margin: 0 15px;
  perspective: 1000px;
  float: right;
  margin-right: 3vw;
  margin-bottom: 10px;
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
}
#delete i{
  position: relative;
  color: white;
  font-size: 30px;
  margin: 0;
  top:20%;
}
</style>