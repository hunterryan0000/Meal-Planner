import Vue from 'vue'
import Router from 'vue-router'
import Home from '../views/Home.vue'
import Login from '../views/Login.vue'
import Logout from '../views/Logout.vue'
import Register from '../views/Register.vue'
import store from '../store/index'
import Recipes from '../views/Recipes.vue'
import CreateRecipe from '../views/CreateRecipe.vue'
import RecipeDetails from '../views/RecipeDetails.vue'
import EditRecipe from '../views/EditRecipe.vue'
import CreateMeal from '../views/CreateMeal.vue'
import Meals from '../views/Meals.vue'
import MealDetails from '../views/MealDetails.vue'
import EditMeal from '../views/EditMeal.vue'
import CreateMealPlan from '../views/CreateMealPlan.vue'
import MealPlanDetails from '../views/MealPlanDetails.vue'
import MealPlans from '../views/MealPlans.vue'

Vue.use(Router)

/**
 * The Vue Router is used to "direct" the browser to render a specific view component
 * inside of App.vue depending on the URL.
 *
 * It also is used to detect whether or not a route requires the user to have first authenticated.
 * If the user has not yet authenticated (and needs to) they are redirected to /login
 * If they have (or don't need to) they're allowed to go about their way.
 */

const router = new Router({
  mode: 'history',
  base: process.env.BASE_URL,
  routes: [
    {
      path: '/',
      name: 'home',
      component: Home,
      meta: {
        requiresAuth: true
      }
    },
    {
      path: "/login",
      name: "login",
      component: Login,
      meta: {
        requiresAuth: false
      }
    },
    {
      path: "/logout",
      name: "logout",
      component: Logout,
      meta: {
        requiresAuth: false
      }
    },
    {
      path: "/register",
      name: "register",
      component: Register,
      meta: {
        requiresAuth: false
      }
    },
    {
      path: "/recipes",
      name: "recipes",
      component: Recipes,
      meta: {
        requiresAuth: true
      }
    },
    {
      path: "/create-recipe",
      name: "create-recipe",
      component: CreateRecipe,
      meta: {
        requiresAuth: true
      }
    },
    {
      path: "/recipes/:id",
      name: "details",
      component: RecipeDetails,
      meta: {
        requiresAuth: true
      }
    },
    {
      path: "/meals/:id",
      name: "mealdetails",
      component: MealDetails,
      meta: {
        requiresAuth: true
      }
    },
    {
      path: "/recipes/edit/:id",
      name: "edit-recipe",
      component: EditRecipe,
      meta: {
        requiresAuth: true
      }
    },
    {
      path: "/create-meal",
      name: "create-meal",
      component: CreateMeal,
      meta: {
        requiresAuth: true
      }
    },
    {
      path: '/meals',
      name: 'meals',
      component: Meals,
      meta: {
        requiresAuth: true
      }
    },
    {
      path: "/meals/edit/:id",
      name: "edit-meal",
      component: EditMeal,
      meta: {
        requiresAuth: true
      }
    },
    {
      path: '/create-mealplan',
      name: 'create-mealplan',
      component: CreateMealPlan,
      meta: {
        requiresAuth: true
      }
    },
    {
      path: '/mealplan-details/:id',
      name: 'mealplan-details',
      component: MealPlanDetails,
      meta: {
        requiresAuth: true
      }
    },
    {
      path: '/mealplans',
      name: 'meal-plans',
      component: MealPlans,
      meta: {
        requiresAuth: true
      }
    }
      
  ]
})

router.beforeEach((to, from, next) => {
  // Determine if the route requires Authentication
  const requiresAuth = to.matched.some(x => x.meta.requiresAuth);

  // If it does and they are not logged in, send the user to "/login"
  if (requiresAuth && store.state.token === '') {
    next("/login");
  } else {
    // Else let them go to their next destination
    next();
  }
});

export default router;