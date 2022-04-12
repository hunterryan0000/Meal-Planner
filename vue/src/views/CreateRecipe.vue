<template>
  <div class="mx-auto col-md-5">
  <h1 class=""> Create Recipe </h1>

  <br>
  <form>
    <b-form-group
    id="fieldset-1"
    description="What is your recipe called?"
    label="Recipe Name:"
    label-for="recipe-name">
    <b-form-input id="recipe-name" v-model="name" trim></b-form-input>
    </b-form-group>

    <!-- <label class="form-label" for="recipe-name">Recipe Name:</label>
    <input class="form-label" id="recipe-name" v-model="name"> -->

    <br>
    <label for="description">Description:</label>
    <b-form-textarea
      id="description"
      v-model="description"
      placeholder="Enter something..."
      rows="3"
      max-rows="6"
    ></b-form-textarea>

    <!-- <label for="description">Description:</label>
    <textarea id="description" v-model="description"> </textarea> -->


    <br>
    <label for="instructions">Instructions:</label>
    <b-form-textarea
      id="instructions"
      v-model="instructions"
      placeholder="Enter something..."
      rows="6"
      max-rows="12"
    ></b-form-textarea>
    <br>
    <!-- <label for="instructions">Instructions:</label>
    <textarea id="instructions" v-model="instructions"> </textarea> -->

    <b-form-group
    id="add-ingredient"
    description="Add an ingredient"
    label="Ingredient:"
    label-for="add-ingredient">
    <b-form-input list="ingredient-list" id="recipe-name" v-model="ingredient" v-on:keyup="searchIngredientList()" trim></b-form-input>
    </b-form-group>

    <!-- <label for="add-ingredient">Ingredient:</label>
    <input list="ingredient-list" id="add-ingredient" v-model="ingredient" v-on:keyup="searchIngredientList()"> -->

    <button id="add-ingredient" v-on:click.prevent="addIngredientToArray()">Add</button>
    <datalist id="ingredient-list">
        <option v-for="ingredient in ingredientList" v-bind:key="ingredient">
            {{ingredient}}
        </option>
    </datalist>
    <p>Ingredients</p>
    <ul id="ingredient-list">
        <li v-for="ingredient in ingredients" v-bind:key="ingredient">{{ingredient}}</li>
    </ul>

    <b-form-group
    id="add-appliance"
    description="Add an appliance"
    label="Appliance:"
    label-for="add-appliance">
    <b-form-input list="appliance-list" id="add-appliance" v-model="appliance" v-on:keyup="searchApplianceList()" trim></b-form-input>
    </b-form-group>

    <!-- <label for="add-appliance">Appliance:</label>
    <input list="appliance-list" id="add-appliance" v-model="appliance" v-on:keyup="searchApplianceList()"> -->
    <button id="add-appliance" v-on:click.prevent="addApplianceToArray()">Add</button>
     <datalist id="appliance-list">
        <option v-for="appliance in applianceList" v-bind:key="appliance">
            {{appliance}}
        </option>
    </datalist>
    <p>Appliances</p>
    <ul id="appliance-list">
        <li v-for="appliance in appliances" v-bind:key="appliance">{{appliance}}</li>
    </ul>

    <label for="serving-size">Serving Size:</label>
    <select id="serving-size" v-model="serving">
        <option value="1">1</option>
        <option value="2">2</option>
        <option value="3">3</option>
        <option value="4">4</option>
        <option value="5">5</option>
        <option value="6">6</option>
        <option value="7">7</option>
        <option value="8">8</option>
        <option value="9">9</option>
        <option value="10">10</option>
    </select>

    <p>Difficulty:</p>
    <input type="radio" id="1" value="1" name="difficulty" v-model="difficulty">
    <label for="1">1</label>
    <input type="radio" id="2" value="2" name="difficulty" v-model="difficulty">
    <label for="1">2</label>
    <input type="radio" id="3" value="3" name="difficulty" v-model="difficulty">
    <label for="1">3</label>
    <input type="radio" id="4" value="4" name="difficulty" v-model="difficulty">
    <label for="1">4</label>
    <input type="radio" id="5" value="5" name="difficulty" v-model="difficulty">
    <label for="1">5</label>
    <br>

    <button v-on:click.prevent="consoleLogRecipeList()">Save to Recipe List</button>

  </form>

  </div>
</template>

<script>
import AuthService from '../services/AuthService.js'

export default {
    name: 'create-recipe',
    data () {
        return {
        ingredients: [],
        ingredient: '',

        appliances: [],
        appliance: '',

        name: '',
        description: '',
        instructions: '',
        serving: 0,
        difficulty: 0,

        ingredientList: [],

        applianceList: []
        }
    },
    methods: {
        addIngredientToArray(){

            this.ingredients.push(this.ingredient);
            console.log(this.ingredients);
        },
        addApplianceToArray(){
            this.appliances.push(this.appliance);
        },
        consoleLogRecipeList(){
            console.log(this.getRecipe);
            console.log(typeof this.difficulty);
        },
        searchIngredientList(){
            this.ingredientList = [];
            AuthService.findIngredient(this.ingredient)
            .then((response) => {
                response.data.forEach(element => {
                    this.ingredientList.push(element.name);
                });
            })
            console.log(this.ingredientList);
        },
        searchApplianceList(){
            this.applianceList = [];
            AuthService.findAppliance(this.appliance)
            .then((response) => {
                response.data.forEach(element => {
                    this.applianceList.push(element.name);
                });
            })
            console.log(this.applianceList);
        }
    },
    computed: {
        getRecipe() {
            return {
                name: this.name,
                description: this.description,
                instructions: this.instructions,
                serving: Number(this.serving),
                difficulty: Number(this.difficulty),
                ingredients: this.ingredients,
                appliances: this.appliances
            }
        }
    }
}
</script>

<style>

</style>