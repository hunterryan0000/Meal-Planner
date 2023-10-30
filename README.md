# Meal-Planner 🍽️

## Overview

**Meal-Planner** is a robust full-stack application that offers a seamless meal planning experience. Users can register, login, create recipes, and meals, and eventually compile these into a weekly meal plan.

### Problem Statement

The central issue this application tackles is the cumbersome process of meal planning. Meal-Planner generates weekly meal plans divided into breakfast, lunch, dinner, and even snacks from Monday through Sunday. It also intelligently creates a grocery list based on the ingredients of the selected meals, ensuring you have everything you need for your weekly meals.

### Target Audience

The app is perfect for any adult eager to bring structure and organization to their meal planning.

---

## Technical Stack 🛠️

- **Backend**: Spring Boot, implemented in Java (OpenJDK 11.0.13)
- **Frontend**: Vue.js (@vue/cli 4.5.15)
- **Database**: PostgreSQL via PGAdmin
- **Authentication**: JSON Web Tokens for secure, stateless authentication and authorization
- **Third-Party APIs**: [Open Food Facts](https://world.openfoodfacts.org/ingredient) for ingredient information

---

## Installation & Setup 🔧

### Prerequisites

- Node.js and npm installed
- Java Development Kit (JDK) 11 or higher
- PostgreSQL installed and running

### Steps

1. Clone the repository.
2. Run the backend server using Spring Boot.
3. Navigate to the frontend directory and execute `npm install`.
4. Run `npm run serve` to start the frontend.

**Note**: The backend server must be running before you start the frontend application.

---

## Usage 🌐

### Example Flows

1. **Login/Register**: Securely log in or register a new account.
2. **Creating a Recipe**: Add a recipe with fields like name, photo, description, ingredients, servings, appliances, instructions, and a difficulty level.
3. **Creating a Meal**: Create a meal by naming it, describing it, categorizing it (breakfast, lunch, dinner, snack), and selecting the days you'll eat it. You can also drag recipes into the meal.
4. **Creating a Meal Plan**: Drag the created meals onto the days of the week on which you plan to eat those meals, and name the meal plan.

---

## Development and Contribution 🤝

We welcome contributions! Feel free to fork the repository and submit pull requests.

**Note**: For bug reports and feature suggestions, please open an issue in the GitHub repository.

---

## Miscellaneous 📝

*Badges, License, and Acknowledgments to be provided by the user*


