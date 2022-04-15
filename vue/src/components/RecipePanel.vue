<template>
  <div class="wrapper">
      <!-- <div :style="{ 'background-image': 'url(' + recipe.photo_url + ')' }" class="parallax">
      </div> -->
      <img class="recipe_image" :src="recipe.photo_url" >
      <div class="wrapperhaha">
        <span>{{recipe.name}}</span>
        <p>Servings: {{recipe.servings}}</p>
      </div>
  </div>
</template>

<script>
export default {
    name: "recipe-panel",
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
div{
  display: flex;
}
.wrapperhaha{
  display: flex;
  flex-direction: column;
}
.wrapper{
  background-color: white;
}
.recipe_image{
    width: 10vw;
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