<template>
  <div class="mx-auto col-md-8">
    <div id="buttons">
      <span id="span" v-on:click.prevent="editMealPlan(plan)">
        <a href=""></a>
      </span>
      <span id="delete" v-on:click.prevent="deleteMealPlan(plan)"
        ><i class="fa fa-trash-o"></i
      ></span>
    </div>

    <div class="meal-plan-details-container">
      <div class="row align-items-start" id="headers-container">
        <div class="col">
          <h4>Days: {{ plan.totalDays }}</h4>
        </div>
        <div class="col">
          <h1>{{ plan.name }}</h1>
        </div>
      </div>

      <div v-for="day in plan.days" :key="day.id" id="daysList">
        <p>Day {{ day.id }}</p>
        <div id="plan_list">
          <div v-for="meal in day.mealList" :key="meal.id" id="mealCard">
            <meal-card :meal="meal"></meal-card>
            <!-- <button v-on:click.prevent="removeCard(day.id, meal.id)">remove</button> -->
          </div>
        </div>
      </div>

      <!-- <div class="list-group" id="meal_list">
            <meal-card class="meal-card" v-for="meal in mealList" :meal="meal" :key="meal.id" />
        </div> -->
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
    };
  },
  created() {
    console.log("HECK YEAH");
    AuthService.searchPlan(this.$route.params.id).then((response) => {
      this.plan = response.data;
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
.meal-plan-details-container {
  background-color: cornsilk;
  margin-top: 45px;
  border: 5px solid rgb(230, 213, 195);
  background-color: cornsilk;
  border-radius: 10px;
  /* height: 300px;
    width: 300px; */
}

#buttons {
  padding-top: 2%;
}
#span {
  position: relative;
  display: inline-flex;
  width: 180px;
  height: 55px;
  margin: 0 15px;
  margin-right: 0;
  perspective: 1000px;
  float: right;
  margin-bottom: 10px;
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
}
#delete i {
  position: relative;
  color: white;
  font-size: 30px;
  margin: 0;
  top: 20%;
}
</style>