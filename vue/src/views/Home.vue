<template>
  <div id="Home">
    <h1 id="welcome">Welcome, {{this.$store.state.user.username}}!!!!!!</h1>
  </div>
  <!-- <div class="row">
      <div class="side">
        <h2>Recipe</h2>
          <h5>Photo of Recipe:</h5>
            <div class="img">Image</div>
              <p>Description</p>
                <h3>More Text</h3>
                  <p>List of recipes?</p>
      </div>

      <div class="main">
        <h1>Meal Planner</h1>
          <div class="img">Image</div>
            <p>Description of image? what goes on in meal planner?</p>
        <br>
          <h4>TITLE HEADING</h4>
             <div class="img">Image</div>
                <p>description of meals? or something about ingredients</p>
      </div>
    </div>

    <div class="footer">
      <h2>Footer?</h2>
    </div> -->
</template>

<script>
export default {
  name: "home"
};
</script>

<style scoped>
#Home {
  /* background-image: url('https://media.istockphoto.com/photos/table-top-view-of-spicy-food-picture-id1316145932?s=612x612');
  height: 100vh;
  width: 100vw;
  background-repeat: no-repeat;
  background-size: cover; */
  
}
#welcome{
  font-size: 75px;
  color: white;
}
</style>

<style scoped>


/* * {
  box-sizing: border-box;
}

.row {  
  display: flex;
  flex-wrap: wrap;
}

.side {
  flex: 20%;
  background-color: #f1f1f1;
  padding: 20px;
}
.main {   
  flex: 80%;
  background-color: white;
  padding: 20px;
}

.img {
  background-color: #aaa;
  width: 100%;
  padding: 20px;
  height:200px;
}
.footer {
  padding: 20px;
  text-align: center;
  background: #ddd;
} */
</style>