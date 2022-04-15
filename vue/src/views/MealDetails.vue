!<template>
  <div>
      <span id="span" v-on:click.prevent="editMeal(meal)"> <a href=""></a> </span>
    <span id="delete" v-on:click.prevent="deleteMeal(meal)"><i class="fa fa-trash-o"></i></span>
    <p>{{meal}}</p>
  </div>
</template>

<script>
import AuthService from '../services/AuthService.js'

export default {
    name: 'mealdetails',
    data(){
        return{
            meal: null
        }
    },
    created(){
        console.log(this.$route.params.id);
        AuthService.searchMeal(this.$route.params.id)
        .then((response) => {
            console.log(response.data);
            this.meal = response.data;
        })
    },
    methods: {
        editMeal(meal){
            this.$router.push('/meals/edit/'+meal.id)
        },
        deleteMeal(meal){
            AuthService.deleteMeal(meal)
            .then(() => {
                this.$router.push('/Meals');
            })
        }
    }
}
</script>

<style scoped>
p{
    color: white
}
#span{
  position: relative;
  display: inline-flex;
  width: 180px;
  height: 55px;
  margin: 0 15px;
  perspective: 1000px;
  float: right;
  margin-right: 3vw;
  margin-bottom: 10px;
}
#span a{
  font-size: 19px;
  letter-spacing: 1px;
  transform-style: preserve-3d;
  transform: translateZ(-25px);
  transition: transform .25s;
  font-family: 'Montserrat', sans-serif;
  
}
#span a:before,
#span a:after{
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
#span a:before{
  color: #fff;
  background: #000;
  transform: rotateY(0deg) translateZ(25px);
}
#span a:after{
  color: #000;
  background: #fff;
  border: 5px solid white;
  transform: rotateX(90deg) translateZ(25px);
}
#span a:hover{
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
#delete i{
  position: relative;
  color: white;
  font-size: 30px;
  margin: 0;
  top:20%;
}
</style>