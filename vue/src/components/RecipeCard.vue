<template>
  <div>
      <h3>{{recipe.name}}</h3>
      <p>{{recipe.description}}</p>
      <p>{{recipe.instructions}}</p>
      <h2>Ingredients</h2>
      <div v-for="ingredient in recipe.ingredientList" :key="ingredient.id" >
          {{ingredient.name}}
      </div>
      <h2>Appliances</h2>
      <div v-for="appliance in recipe.applianceList" :key="appliance.id">
          {{appliance.name}}
      </div>
      <div :style="{ 'background-image': 'url(' + recipe.photo_url + ')' }" class="parallax">
      </div>
  </div>
</template>

<script>
export default {
    name: "recipe-card",
    props: {
        recipe: Object
    }
}
</script>

<style>
.recipe_image{
    width: 10%;
}
.parallax {
  /* The image used */
  

  /* Set a specific height */
  min-height: 200px;

  /* Create the parallax scrolling effect */
  background-attachment: fixed;
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}
</style>