<template>
  <div>
      <button>Edit</button>
      <div class="detailswrapper">
          <div class="namedesc">
              <span>{{recipe.name}}</span>
              <br>
              <p>{{recipe.description}}</p>
          </div>
        <div class="photo">
            <img :src="recipe.photo_url" >
        </div>
          <div class="apping">
            <p>Servings: {{recipe.servings}}</p>
            <p>Difficulty: {{recipe.difficulty}}</p> 
            <p v-for="appliance in recipe.applianceList" :key="appliance.id">
            {{appliance.name}}    
            </p> 
            <h5>Ingredients</h5>
            <ul>
                <li v-for="ingredient in recipe.ingredientList" :key="ingredient.id">
                    {{ingredient.quantity}} {{ingredient.measurement}} {{ingredient.name}}
                </li>
            </ul>
          </div>
          <div class="instructions">
              <h3>Instructions</h3>
              <p>{{recipe.instructions}}</p>
          </div>
      </div>
  </div>
</template>

<script>
import AuthService from '../services/AuthService.js'

export default {
    name: "details",
    data () {
      return{
         recipe: null 
      }
  },
    created() {
      AuthService.searchRecipe(this.$route.params.id)
      .then((response) => {
        console.log(response.data);
        this.recipe = response.data;
      })
  }
}
</script>

<style scoped>
h1{
    color: white;
}
.detailswrapper{
    display: flex;
    gap: 10px 10px;
    flex-wrap: wrap;
    justify-content: center;
    height: 100%;
    width: 100%;
}
.detailswrapper div {
    border: 5px solid rgb(230, 213, 195);;
    background-color: gray;
    height: 300px;
    width: 300px;
}
.namedesc {
    color: white;
    flex-basis: 50%;
    flex-grow: 0;
    flex-shrink: 0;
    border-radius: 10px;
    text-align: center;
    padding: 10px 10px 10px 10px;
    min-width: 0;
    min-height: 40vh;
    overflow: hidden;
}
.namedesc span {
    color: black;
    font-size: 150%;
    font-weight: bold;
}
.namedesc p {
    font-size: 100%;
    margin-top: 20px;
}
.photo{
    flex-basis: 44%;
    flex-grow: 0;
    flex-shrink: 0;
    max-width: 100%;
    max-height: 100%;
    overflow: hidden;
    min-height: 40vh;
}
.photo img {
    height: 100%;
    width: 100%;
}
.instructions, .apping{
    flex-basis: 47%;
    flex-grow: 0;
    flex-shrink: 0;
    min-height: 50vh;
    overflow-y: auto;
}

</style>