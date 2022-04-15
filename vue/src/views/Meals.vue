<template>
<div>
    <h1 class="text-center" v-if="allBreakFast.length">Breakfast</h1>
    <div class="cardWrapper" v-if="allBreakFast.length">
        <meal-card class="meal_card" v-for="meal in allBreakFast" :key="meal.id" :meal="meal"></meal-card>
    </div>
    <h1 class="text-center" v-if="allLunch.length">Lunch</h1>
    <div class="cardWrapper" v-if="allLunch.length">
        <meal-card class="meal_card" v-for="meal in allLunch" :key="meal.id" :meal="meal"></meal-card>
    </div>
    <h1 class="text-center" v-if="allDinner.length">Dinner</h1>
    <div class="cardWrapper" v-if="allDinner.length">
        <meal-card class="meal_card" v-for="meal in allDinner" :key="meal.id" :meal="meal"></meal-card>
    </div>
    <h1 class="text-center" v-if="allSnack.length">Snack</h1>
    <div class="cardWrapper" v-if="allSnack.length">
        <meal-card class="meal_card" v-for="meal in allSnack" :key="meal.id" :meal="meal"></meal-card>
    </div>
    <h1 class="text-center" v-if="otherMeals.length">Other</h1>
    <div class="cardWrapper" v-if="otherMeals.length">
        <meal-card class="meal_card" v-for="meal in otherMeals" :key="meal.id" :meal="meal"></meal-card>
    </div>
</div>
</template>

<script>
import AuthService from '../services/AuthService.js'
import MealCard from '../components/MealCard'

export default {
    name: 'meals',
    components: {
        MealCard
    },
    data () {
        return {
            mealList: []
        }
    },
    created() {
        AuthService.getMeals()
        .then((response) => {
            console.log(response.data);
            this.mealList = response.data;
        })
    },
     computed: {
        allBreakFast() {
            return this.mealList.filter( meal => {
                return meal.type_of_meal === "Breakfast";
            })
        },
        allLunch() {
            return this.mealList.filter( meal => {
                return meal.type_of_meal === "Lunch";
            })
        },
        allDinner() {
            return this.mealList.filter( meal => {
                return meal.type_of_meal === "Dinner";
            })
        },
        allSnack() {
            return this.mealList.filter( meal => {
                return meal.type_of_meal === "Snack";
            })
        },
        otherMeals() {
            return this.mealList.filter( meal => {
                return meal.type_of_meal === "Other";
            })
        },
    }
}
</script>

<style scoped>

.cardWrapper{
  display: flex;
  flex-wrap: wrap;
  gap: 40px 40px;
  justify-content:center;
  padding-top: 2%;
  padding-bottom: 5%;
}
.card{
  background-color: white;
  width: 20%;
  padding-bottom: 30px;
  text-align: center;
  box-shadow: 5px 5px 5px #422424;
}

h1 {
    color: whitesmoke;
}

</style>