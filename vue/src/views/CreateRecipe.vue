<template>
  <div class="mx-auto col-md-7">
  <h1 class="text-center"> Create Recipe </h1>

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
        placeholder=""
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
      placeholder=""
      rows="6"
      max-rows="12"
    ></b-form-textarea>
    <br>
    
    <label for="servings">Servings:</label>
    <b-form-select id="servings" v-model="serving" :options="servingOptions">
        <template #first>
        <b-form-select-option :value="null" disabled>-- How many servings does this recipe make? --</b-form-select-option>
      </template>
    </b-form-select>
    <br><br>


    <br>
    <label for="ingredient-input" >Ingredients:</label> 
    <ul id="ingredient-list" style="list-style-type:none;">
        <div style="margin: 2px;" class="d-flex" v-for="ingredient in ingredients" v-bind:key="ingredient">
        <div>
            <li>{{ingredient}}</li>
        </div>
        <div class="ml-auto">
            <button class="btn btn-danger btn-sm" v-on:click.prevent="removeIngredientFromArray(ingredient)">X</button>
        </div>
        </div>
    </ul>
    <b-container fluid>
        <b-row>
             <b-col sm="11">
                <b-form-input list="ingredient-list" id="ingredient-input" v-model="ingredient" v-on:keyup="searchIngredientList()"  placeholder="Add ingredient"></b-form-input>
            </b-col>
        </b-row>
        <b-row>
             <b-col sm="11">
                <b-form-input v-model="ingredientMeasurement" placeholder="Measurement"></b-form-input>
            </b-col>
        </b-row>
        <b-row class="my-1">
            <b-col sm="11">
            <b-form-input v-model="ingredientQuantity" placeholder="Quantity"></b-form-input>
            </b-col>
            <b-col sm="1">
                <button class="btn btn-success" v-on:click.prevent="addIngredientToArray()">Add</button>
            </b-col>
        </b-row>
        <datalist id="ingredient-list">
            <option v-for="ingredient in ingredientList" v-bind:key="ingredient">
                {{ingredient}}
            </option>
        </datalist>
    </b-container>
    
    <br>
    <label for="appliance-input">Appliances:</label> 
    <ul id="appliance-list" style="list-style-type:none;">
        <div style="margin: 2px;" class="d-flex" v-for="appliance in appliances" v-bind:key="appliance">
        <div>
            <li>{{appliance}}</li>
        </div>
        <div class="ml-auto">
            <button class="btn btn-danger btn-sm" v-on:click.prevent="removeApplianceFromArray(appliance)">X</button>
        </div>
        </div>
    </ul>
    <b-container fluid>
        <b-row class="my-1">
            <b-col sm="11">
                <b-form-input list="appliance-list" id="appliance-input" v-model="appliance" v-on:keyup="searchApplianceList()"  placeholder="Add appliance"></b-form-input>
            </b-col>
            <b-col sm="1">
                <button class="btn btn-success" v-on:click.prevent="addApplianceToArray()">Add</button>
            </b-col>
        </b-row>
    </b-container>

    <datalist id="appliance-list">
        <option v-for="appliance in applianceList" v-bind:key="appliance">
            {{appliance}}
        </option>
    </datalist>
   
    
    <br>
    <label for="difficulty-range">Difficulty: {{ difficulty }}</label>
    <b-form-input id="difficulty-range" v-model="difficulty" type="range" min="1" max="10"></b-form-input>

    <br><br>
    <div class="text-center">
        <button class="btn btn-primary" v-on:click.prevent="consoleLogRecipeList()">Save to Recipe List</button>
    </div>
    <br>
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
            ingredientMeasurement: '',
            ingredientQuantity: null,
            appliances: [],
            appliance: '',
            name: '',
            description: '',
            instructions: '',
            serving: null,
            difficulty: 1,
            ingredientList: [],
            applianceList: [],
            servingOptions: [
                {value: '1', text: '1'}, 
                {value: '2', text: '2'},
                {value: '3', text: '3'},
                {value: '4', text: '4'},
                {value: '5', text: '5'},
                {value: '6', text: '6'},
                {value: '7', text: '7'},
                {value: '8', text: '8'},
                {value: '9', text: '9'},
                {value: '10', text: '10'},
                {value: '11', text: '11'},
                {value: '12', text: '12'},
                {value: '13', text: '13'},
                {value: '14', text: '14'},
                {value: '15', text: '15'},
            ]
        }
    },
    methods: {
        addIngredientToArray(){
            if(!this.ingredients.includes(this.ingredient)) {
                this.ingredients.push(this.ingredient);
                this.ingredient = "";
            }
        },
        removeIngredientFromArray(ingredient) {
            this.ingredients = this.ingredients.filter( element => {
                return element !== ingredient;
            })
        },
        addApplianceToArray(){
            if(!this.appliances.includes(this.appliance)) {
                this.appliances.push(this.appliance);
                this.appliance = "";
            }
        },
        removeApplianceFromArray(appliance) {
            this.appliances = this.appliances.filter( element => {
                return element !== appliance;
            })
        },
        consoleLogRecipeList(){
            console.log(this.getRecipe);
            console.log(typeof this.difficulty);
        },
        searchIngredientList(){
            this.ingredientList = [];
            if(this.ingredient !== '') {
                console.log(this.ingredient);
                AuthService.findIngredient(this.ingredient)
                .then((response) => {
                    response.data.forEach(element => {
                        this.ingredientList.push(element.name);
                    });
                })
                console.log(this.ingredientList);
            }
        },
        searchApplianceList(){
            this.applianceList = [];
            if(this.appliance !== '') { 
                AuthService.findAppliance(this.appliance)
                .then((response) => {
                    response.data.forEach(element => {
                        this.applianceList.push(element.name);
                    });
                })
                console.log(this.applianceList);
            }
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
label {
    font-weight: bold;
}
</style>
