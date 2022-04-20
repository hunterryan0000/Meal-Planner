<template>
  <div class="mx-auto col-md-8 wrappervert">
    <div id="buttons">
      <span id="span" v-on:click.prevent="editMealPlan(plan)"><a href=""></a></span>
      <span id="delete" v-on:click.prevent="deleteMealPlan(plan)"><i class="fa fa-trash-o"></i></span>
    </div>
    <div class="wrapper">
    <div class="meal-plan-details-container">

      <div class="row align-items-start" id="headers-container">
        <div class="col">
          <h2 class="TotalDays">Total Days: {{ plan.totalDays }}</h2>
        </div>
        <div class="col">
          <h1>{{ plan.name }}</h1>
        </div>
      </div>

      <div v-for="day in plan.days" :key="day.id" id="daysList">
        <hr>
        <h4>Day {{ day.id }}</h4>
        <div id="plan_list">
          <div v-for="meal in day.mealList" :key="meal.id" id="mealCard">
            <p>{{meal.type_of_meal}}</p>
            <meal-card :meal="meal" class="card"></meal-card>
            <!-- <button v-on:click.prevent="removeCard(day.id, meal.id)">remove</button> -->
          </div>
        </div>
      </div>
    </div>

    <div class='groceryList'> 

      <h3>Grocery List</h3>

      <h6 v-for="ingredient in this.ingredientsFinal" :key="ingredient">{{ingredient.quantity}} {{ingredient.measurement}} {{ingredient.name}}</h6>
    </div>
    </div>
  </div>
</template>

<script>
import AuthService from "@/services/AuthService.js";
import MealCard from "@/components/MealCard.vue";

export default {
  name: "mealplan-details",
  components: {
    MealCard,
  },
  data() {
    return {
      mealList: [],
      plan: null,
      ingredientsList: [],
      ingredientsFinal: []
    };
  },
  created() {
    console.log("HECK YEAH");
    AuthService.searchPlan(this.$route.params.id).then((response) => {
      this.plan = response.data;

      this.plan.days.forEach(day => {
        day.mealList.forEach(meal => {
          meal.mealsRecipesList.forEach(recipe => {     
            AuthService.searchRecipe(recipe.recipe_id).then((response) => {
              response.data.ingredientList.forEach(ingredient => {
                if(this.ingredientsList.includes(ingredient.name)) {
                  //pass
                } else {
                  this.ingredientsFinal.push(ingredient);
                  this.ingredientsList.push(ingredient.name);
                }
              });
            });
          });
        });
      });

  




      console.log("console log - This is the plan's data: " + response.data);
      console.log(response.data);

      let days = response.data.days;

      days.forEach((meal) => {
        console.log(meal);
        console.log("console log - This is the meal id: " + meal.meal_id);

        meal.mealList.forEach((element) => {
          AuthService.searchMeal(element.id).then((response) => {
            this.mealList.push(response.data);
          });
        });
      });
    });

    
  },
  methods: {
    editMealPlan(mealPlan) {
      this.$router.push("/mealplan/edit/" + mealPlan.id);
    },
    deleteMealPlan(mealPlan){
      AuthService.deleteMealPlan(mealPlan)
      .then((r) => {
        console.log(r.data);
          this.$router.push('/mealplans');
      })
    },
  },

};
</script>

<style scoped>
.meal-plan-details-container, .groceryList {
  background-color: cornsilk;
  margin-top: 45px;
  border: 5px solid rgb(230, 213, 195);
  background-color: cornsilk;
  border-radius: 10px;
}

.meal-plan-details-container{
  width: 80vw;
}
.groceryList{
  width: 20vw;
}

#headers-container{
  padding: 5px;
}

.wrapper{
  display: flex;
  justify-content: center;
  column-gap: 10px;
  width: 100%;

}
#buttons{
  /* position: absolute; */
  right: 21%;
  top: 2.5%;
}
#mealCard {
  display: inline-flex;
  flex-direction: column;
  text-align: center;
  line-height: 0;
}
/* #span {
  margin-top: 20px;
} */

hr{
  border: 1px solid black;
}

#span {
  position: relative;
  display: inline-flex;
  width: 180px;
  height: 55px;
  margin: 20px;
  perspective: 1000px;
  float: right;
}
#span a {
  font-size: 19px;
  letter-spacing: 1px;
  transform-style: preserve-3d;
  transform: translateZ(-25px);
  transition: transform 0.25s;
  font-family: "Montserrat", sans-serif;
}
#span a:before,
#span a:after {
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
#span a:before {
  color: #fff;
  background: #000;
  transform: rotateY(0deg) translateZ(25px);
}
#span a:after {
  color: #000;
  background: #fff;
  border: 5px solid white;
  transform: rotateX(90deg) translateZ(25px);
}
#span a:hover {
  transform: translateZ(-25px) rotateX(-90deg);
}
#delete {
  float: right;
  background-color: rgb(146, 4, 4);
  width: 50px;
  height: 50px;
  text-align: center;
  border-radius: 5px;
  margin: 20px;
}
#delete i {
  position: relative;
  color: white;
  font-size: 30px;
  margin: 0;
  top: 20%;
}
</style>