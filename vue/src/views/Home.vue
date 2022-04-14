<template>
  <div id="Home">
    <h1 id="welcome">Meals on Deals<span>Welcome, {{this.$store.state.user.username}}!!!!!!</span></h1>
  </div>
</template>

<script>
export default {
  name: "home"
};
</script>

<style scoped>

#Home h1 {
  text-align:center; font-size:50px; text-transform:uppercase; color:white; letter-spacing:1px;
  font-family:"Playfair Display", serif; font-weight:400;
}
#Home h1 span {
  margin-top: 5px;
    font-size:15px; color:white; word-spacing:1px; font-weight:normal; letter-spacing:2px;
    text-transform: uppercase; font-family:"Raleway", sans-serif; font-weight:500;

    display: grid;
    grid-template-columns: 1fr max-content 1fr;
    grid-template-rows: 27px 0;
    grid-gap: 20px;
    align-items: center;
}

#Home h1 span:after,#Home h1 span:before {
    content: " ";
    display: block;
    border-bottom: 1px solid #ccc;
    border-top: 1px solid #ccc;
    height: 5px;
  background-color:#f8f8f8;
}

/* #welcome{
  font-size: 75px;
  color: white;
  
} */
</style>

<style scoped>
