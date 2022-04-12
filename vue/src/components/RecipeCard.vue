<template>
  <div>
      <h3>{{recipe.name}}</h3>
      <p>{{recipe.description}}</p>
      <p>{{recipe.instructions}}</p>
      <h2>Ingredients</h2>
      <div v-for="ingredient in recipe.ingredientList" :key="ingredient.id">
          {{ingredient.name}}
      </div>
      <h2>Appliances</h2>
      <div v-for="appliance in recipe.applianceList" :key="appliance.id">
          {{appliance.name}}
      </div>
      <img :src="`${recipe.photo_url}`">
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

</style>