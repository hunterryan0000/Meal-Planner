<template>
<div>
  <router-link v-bind:to="{name: 'create-recipe'}"> Create Recipe </router-link>
   <!-- goes to create-recipe -->
   <div class="cardWrapper">
     <recipe-card v-for="recipe in recipeList" :key="recipe.id" :recipe="recipe" class="recipe_card"></recipe-card>
   </div>
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
  },
  

}
</script>

<style>
body{
  background-image: url('https://cdn.discordapp.com/attachments/872641665314222100/963544684028895253/wood.jpg');
}
.cardWrapper{
  display: flex;
  flex-wrap: wrap;
  gap: 40px 40px;
  justify-content:center;
}
.recipe_card{
  background-color: white;
  width: 20%;
  padding-bottom: 30px;
  text-align: center;
  box-shadow: 5px 5px 5px #422424;
}

</style>