<template>
  <div v-on:click.prevent="pushPlanDetails(plan)">
      <span>{{plan.name}}</span>
      <p>Lasts {{plan.totalDays}} day(s)</p>
      <p>{{plan.description}}</p> 
      <h6>Includes meals: </h6>
      <p v-for="meal in mealSet" :key="meal">{{meal}}</p>
  </div>
</template>

<script>
export default {
    name: "meal-plan-card",
    props: {
        plan: Object
    },
    data () {
        return {
            mealSet: new Set()
        }
    },
    created() {
        const days = this.plan.days;
        days.forEach(day => {
          day.mealList.forEach(meal => {
            this.mealSet.add(meal.name);
          });
        });
    },
    methods: {
    pushPlanDetails(plan){
      this.$router.push('/mealplan-details/' + plan.id)
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
    padding-top: 15px;
    padding-left: 15px;
    padding-right: 15px;
    font-size: 100%;
}
img{
  width: 100%;
  max-height: 200px;
}
</style>