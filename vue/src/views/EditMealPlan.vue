<template>
  <div class="parent">
  
    <h1> Edit Meal Plan </h1>

  <div id="root">

      

      <div class="mealsWrapper">
        <h3>Meals:</h3>  
        <draggable class="dragArea list-group" :list="mealList" :group="{ name: 'meals', pull: 'clone', put: 'false' }" id="meal_list">
            <meal-card class="meal-card" v-for="meal in mealList" :key="meal.id" :meal="meal"></meal-card>
        </draggable>
      </div>
      <div class="plansWrapper">
          <div class="plansHeader">
              <h3 id="DayCounter">Days: </h3>
              <input type="number" id="days" min="0" max="31" v-model="days" @change.prevent="updateDays">
              <h3 id="Name">Plan Name: </h3>
              <input type="text" id="name" v-model="name">
              
              <button class="btn-success btn" v-on:click="savePlan">Save</button>
          </div>
          <div v-for="day in planList" :key="day.id" id="daysList">
                <p>Day{{day.id}}</p>
                <draggable class="dragArea list-group" :list="day.mealList" group="meals" id="plan_list">
                    <div v-for="meal in day.mealList" :key="meal.id" id="mealCard">
                       <meal-card  :meal="meal"></meal-card> 
                       <button v-on:click.prevent="removeCard(day.id, meal.id)">remove</button>
                    </div>
                </draggable>  
          </div>
          
      </div>


  </div>
  </div>
</template>

<script>
import AuthService from '../services/AuthService.js'
import draggable from 'vuedraggable';
import MealCard from '../components/MealCard.vue'

export default {
    name: 'edit-mealplan',
    components: {
        MealCard,
        draggable
    },
    data() {
        return {
            mealplan: null,
            mealList: [],
            planList: [],
            days: 0,
            name: ''
        }
    },
    created() {
        AuthService.searchPlan(this.$route.params.id)
        .then((r) => {
            // console.log(r.data);
            this.name = r.data.name;
            this.planList = [];
            this.mealplan = r.data;
            this.days = r.data.totalDays;
            for(let day of r.data.days){
                this.planList.push(day);
            }
            // console.log(this.planList);
            AuthService.getMeals().then((re) => {
                this.mealList = [];
                for (let plan of re.data) {
                    this.mealList.push(plan);
                }
            }
            )
        })
    },
    methods: {
        updateDays(){
            this.planList = [];
            for(let l=1; l<=this.days; l++){
                this.planList.push({id: l, mealList: []})
            }
        },
        removeCard(dayId, cardId){
            // console.log(`${dayId} ${cardId}`);
            // console.log(this.planList[dayId-1].mealList);

            let removeIndex = this.planList[dayId-1].mealList.map(item => item.id).indexOf(cardId);
            // console.log(removeIndex);
            ~removeIndex && this.planList[dayId-1].mealList.splice(removeIndex, 1)
        },
        savePlan(){
            
            if(this.name !== ''){
                AuthService.editPlan(this.getPlan)
                .then((r) => {
                    // console.log(r.data);
                     this.$router.push('/mealplan-details/'+r.data.id);
                })
            }
        }
    },
    computed: {
        getPlan() {
            return {
                id: this.mealplan.id,
                name: this.name,
                totalDays: this.days,
                days: this.planList
            }
        }
    }
}
</script>

<style scoped>
.mealsWrapper{
    /* border: 4px solid white; */
    width: 30%

}
.plansWrapper{
    width: 70%;
    /* border: 4px solid red; */
    overflow-y: scroll;
}
.plansHeader{
    display: flex;
    justify-content: start;
    align-items: center;
}
.plansHeader button{
    margin-left: auto;
}
#Name{
    margin-left: 30%;
}
#days{
    width: 3vw;
}
#meal_list{
    /* border: 5px solid blue; */
    height: 95%;
    background-color: white;
}
#plan_list{
    /* border: 5px solid blue; */
    height: 100%;
    background-color: white;
    display: flex;
    flex-direction: row;
    justify-content: space-evenly;
}
#root{
    display: flex;
    /* border: 5px solid black; */
    height: 80vh;
}
#daysList{
    display: flex;
    width: 100%;
    border: 4px dotted beige;
}
#daysList p{
    writing-mode: vertical-rl;
    text-orientation: upright;
    border: 1px solid purple;
    margin: 0;
    font-size: 180%;
    text-align: center;
    width: 5%;
}
#daysList #plan_list{
    width: 95%;
    height: 170px;
    
}

#mealCard{
    display: flex;
    flex-direction: column;
    height: 100%;
    border: 5px solid gray;
    
}
#mealCard button{
    margin-top: auto;
}

.parent {
    display: flex;
    flex-direction: column;
    align-content: center;
}

h1 {

    text-align: center;
    padding: 10px;
    
}

.meal-card {
    border: 2px solid black;
}

#daysList {
    border: 2px solid black;
}

</style>