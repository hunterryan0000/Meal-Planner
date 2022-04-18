<template>
  <div v-on:click.prevent="pushPlanDetails(mealPlan)">
      <span>{{mealPlan.name}}</span>
      <p>Lasts {{mealPlan.days}} days</p>
      <p>{{mealPlan.description}}</p>
  </div>
</template>

<script>
export default {
    name: "meal-plan-card",
    props: {
        mealPlan: Object
    },
    methods: {
    // pushPlanDetails(mealPlan){
    //   this.$router.push('/mealplans/' + mealPlan.id)
    // }
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
    padding-top: 30px;
    padding-left: 15px;
    padding-right: 15px;
    font-size: 100%;
}
img{
  width: 100%;
  max-height: 200px;
}
</style>