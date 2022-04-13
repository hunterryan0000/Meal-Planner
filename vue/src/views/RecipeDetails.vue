<template>
  <div>
      <span id="span"><a href=""></a></span>
      <div class="detailswrapper">
          <div class="namedesc">
              <span>{{recipe.name}}</span>
              <br>
              <p>{{recipe.description}}</p>
          </div>
          <div>

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

<style scss scoped>
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
    padding-left: 10vw;
    padding-right: 10vw;
}
.detailswrapper div {
    border: 5px solid rgb(230, 213, 195);;
    background-color: gray;
    height: 300px;
    width: 300px;
}
.namedesc {
    color: white;
    flex-basis: 40%;
    flex-grow: 0;
    flex-shrink: 0;
    text-align: center;
    padding: 10px 10px 10px 10px;
    min-width: 0;
    min-height: 30vh;
    overflow: hidden;
}
.namedesc span {
    color: black;
    font-size: 2vw;
    font-weight: bold;
}
.namedesc p {
    font-size: 100%;
    margin-top: 20px;
}
.photo{
    flex-basis: 34%;
    flex-grow: 0;
    flex-shrink: 0;
    max-width: 100%;
    max-height: 100%;
    overflow: hidden;
    min-height: 30vh;
}
.photo img {
    height: 100%;
    width: 100%;
}
.instructions, .apping{
    flex-basis: 47%;
    flex-grow: 0;
    flex-shrink: 0;
    min-height: 55vh;
    overflow-y: auto;
    padding: 10px 10px 10px 10px;
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

</style>