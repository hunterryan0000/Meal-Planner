<template>
<div>
  <router-link v-bind:to="{name: 'create-recipe'}"> Create Recipe </router-link>
   <!-- goes to create-recipe -->
  <recipe-card v-for="recipe in recipeList" :key="recipe.id" :recipe="recipe"></recipe-card>
  <p> its working </p>
</div>
</template>

<script>
import AuthService from '../services/AuthService.js'
import RecipeCard from '../components/RecipeCard.vue';

export default  {
  name: 'recipes',
  components: {
    RecipeCard
  },
  data () {
      return{
         recipeList: [] 
      }
  },
  created() {
      AuthService.getRecipes()
      .then((response) => {
        console.log(response.data);
        this.recipeList = response.data;
      })
  }
  

}
</script>

<style>

</style>