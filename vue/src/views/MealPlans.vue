<template>
<div>
    <div class="cardWrapper">
        <meal-plan-card class="card" v-for="plan in allMealPlans" :key="plan.id" :plan="plan"></meal-plan-card>
    </div>
</div>
</template>

<script>
import AuthService from '../services/AuthService.js'
import MealPlanCard from '../components/MealPlanCard.vue'

export default {
    name: 'meal-plans',
    components: {
        MealPlanCard
    },
    data () {
        return {
            allMealPlans: []
        }
    },
    created() {
        AuthService.getMealPlans()
        .then((response) => {
            console.log(response.data);
            this.allMealPlans = response.data;
        })
    },
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