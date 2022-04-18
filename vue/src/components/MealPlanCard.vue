<template>
  <div v-on:click.prevent="pushMealPlanDetails(mealplan)">
      <span>{{mealplan.name}}</span>
      <p>{{mealplan.description}}</p>
  </div>
</template>

<script>
export default {
    name: "mealplan-card",
    props: {
        mealplan: Object
    },
    methods: {
    pushMealPlanDetails(mealplan){
      console.log("hit");
      this.$router.push('/mealplans/'+mealplan.id)
    }
  }
}
</script>

<style scoped>
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

</style>