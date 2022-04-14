!<template>
<div class="root">
  <div class="header">
      <h3 class="recipe_header">All Recipes</h3>
      <h3 class="meal_header">Meal List</h3>
  </div>
  <div class="wrapper">
      <!-- <div id="recipe_list"> -->
          <draggable class="list-group" :list="recipeList" group="recipes" id="recipe_list">
              <recipe-panel v-for="recipe in recipeList" :key="recipe.id" :recipe="recipe"></recipe-panel>
          </draggable>
      <!-- </div> -->
      <!-- <div id="meal_plan"> -->
          <div>
          <draggable class="list-group" :list="mealList" group="recipes" id="meal_plan">
              <recipe-panel v-for="recipe in mealList" :key="recipe.id" :recipe="recipe"></recipe-panel>
          </draggable>
          </div>
      <!-- </div> -->
  </div>
</div>
</template>

<script>
import AuthService from '../services/AuthService.js'
import RecipePanel from '../components/RecipePanel.vue';
import draggable from 'vuedraggable';


export default {
  name: 'create-meal',
  components: {
    RecipePanel,
    draggable
  },
  data () {
      return{
         recipeList: [] ,
         mealList: []
      }
  },
  created() {
      AuthService.getRecipes()
      .then((response) => {
        console.log(response.data);
        this.recipeList = response.data;
      })
  },
  

}
</script>

<style scoped>
div{
    border: 3px solid green;
}
.wrapper{
    display: flex;
    height: 80vh;
    margin-left: 5%;
    margin-right: 5%;
    gap: 30px;
}
.wrapper #recipe_list, .wrapper #meal_plan{
    width: 50%;
    overflow-y: auto;

}
#recipe_list,  #meal_plan{
    display: flex;
    flex-direction: column;
}
#recipe_list *, #meal_plan *{
    height: 200px;
}
.root{
    display: flex;
    flex-direction: column;
}
.header{
    display: flex;
    justify-content: space-evenly;
    margin-left: 5%;
    margin-right: 5%;
    gap: 30px;

}
.header *{
    color: white;
    width: 50%;
    text-align: center;
}
</style>