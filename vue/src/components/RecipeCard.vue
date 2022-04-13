<template>
  <div v-on:click.prevent="pushRecipeDetails(recipe)">
      <div :style="{ 'background-image': 'url(' + recipe.photo_url + ')' }" class="parallax">
      </div>
      <span>{{recipe.name}}</span>
      <p>{{recipe.description}}</p>
  </div>
</template>

<script>
export default {
    name: "recipe-card",
    props: {
        recipe: Object
    },
    methods: {
    pushRecipeDetails(recipe){
      console.log("hit");
      this.$router.push('/recipes/'+recipe.id)
    }
  }
}
</script>

<style scoped>
.recipe_image{
    width: 10%;
}
.parallax {
  

  min-height: 200px;

  background-attachment: fixed;
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;

  margin-bottom: 15px;

}
span{
    font-weight: bolder;
    font-size: 150%;
    line-height: 30px;
}
p{
    padding-top: 30px;
    padding-left: 15px;
    padding-right: 15px;
    font-size: 100%;
}
</style>