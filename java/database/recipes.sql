insert into recipes values 
(default, (select user_id from users where username = 'Matthew'), 'The Best Chocolate Chip Cookie Recipe Ever', 'This is the best chocolate chip cookie recipe ever. No funny ingredients, no chilling time, etc. Just a simple, straightforward, amazingly delicious, doughy yet still fully cooked, chocolate chip cookie that turns out perfectly every single time! ', 'Preheat oven to 375 degrees F.\n Line a baking pan with parchment paper and set aside.
In a separate bowl mix flour, baking soda, salt, baking powder. Set aside.
Cream together butter and sugars until combined.
Beat in eggs and vanilla until fluffy.
Mix in the dry ingredients until combined.
Add 12 oz package of chocolate chips and mix well.
Roll 2-3 TBS (depending on how large you like your cookies) of dough at a time into balls and place them evenly spaced on your prepared cookie sheets. (alternately, use a small cookie scoop to make your cookies).
Bake in preheated oven for approximately 8-10 minutes. Take them out when they are just BARELY starting to turn brown.
Let them sit on the baking pan for 2 minutes before removing to cooling rack', 36, 1, 'https://cdn.discordapp.com/attachments/872641665314222100/963886762789306368/cooju.webp');

insert into recipe_ingredients values ((select recipe_id from recipes where name = 'The Best Chocolate Chip Cookie Recipe Ever'), (select ingredient_id from ingredients where name = 'salted butter'), 'salted butter', 1, 'cup');
insert into recipe_ingredients values ((select recipe_id from recipes where name = 'The Best Chocolate Chip Cookie Recipe Ever'), (select ingredient_id from ingredients where name = 'granulated sugar'), 'granulated sugar', 1, 'cup');
insert into recipe_ingredients values ((select recipe_id from recipes where name = 'The Best Chocolate Chip Cookie Recipe Ever'), (select ingredient_id from ingredients where name = 'light-brown-sugar'), 'light-brown-sugar', 1, 'cup');
insert into recipe_ingredients values ((select recipe_id from recipes where name = 'The Best Chocolate Chip Cookie Recipe Ever'), (select ingredient_id from ingredients where name = 'vanilla extract'), 'granulated sugar', 2, 'tsp');
insert into recipe_ingredients values ((select recipe_id from recipes where name = 'The Best Chocolate Chip Cookie Recipe Ever'), (select ingredient_id from ingredients where name = 'egg'), 'egg', 2, 'whole');
insert into recipe_ingredients values ((select recipe_id from recipes where name = 'The Best Chocolate Chip Cookie Recipe Ever'), (select ingredient_id from ingredients where name = 'all-purpose-flour'), 'all-purpose-flour', 3, 'cups');
insert into recipe_ingredients values ((select recipe_id from recipes where name = 'The Best Chocolate Chip Cookie Recipe Ever'), (select ingredient_id from ingredients where name = 'baking powder'), 'baking powder', 0.5, 'tsp');
insert into recipe_ingredients values ((select recipe_id from recipes where name = 'The Best Chocolate Chip Cookie Recipe Ever'), (select ingredient_id from ingredients where name = 'fr:baking-soda'), 'fr:baking-soda', 1, 'tsp');
insert into recipe_ingredients values ((select recipe_id from recipes where name = 'The Best Chocolate Chip Cookie Recipe Ever'), (select ingredient_id from ingredients where name = 'sea salt'), 'sea salt', 1, 'tsp');
insert into recipe_ingredients values ((select recipe_id from recipes where name = 'The Best Chocolate Chip Cookie Recipe Ever'), (select ingredient_id from ingredients where name = 'semi-sweet-chocolate-chips'), 'semi-sweet-chocolate-chips', 2, 'cups');

insert into recipe_appliances values ((select appliance_id from appliances where name = 'Oven'), (select recipe_id from recipes where name = 'The Best Chocolate Chip Cookie Recipe Ever'));


insert into recipes values 
(default, (select user_id from users where username = 'Matthew'), 
 'The Best New York Style Pizza Dough', 
 'The best, authentic NY pizza dough recipe for making pizza dough at home. This is the best thin crust pizza ever! This recipe make four 14″ pizzas (about 2.5 to 3 lbs of dough).  You will never want take out again!', 
 'To mix the dough

    Place water in mixing bowl.
    In a separate bowl, mix salt and yeast (and sugar if using) into flour
    Combine flour/salt/yeast mixture into water and mix until all the flour has been incorporated.
    After flour has been totally incorporated, add oil and knead for about 4 to 5 minutes (see note)
    Test final dough temperature, which should ideally be between high 70s to low 80s (optional)

Diving the dough and letting it rise

    Divide dough into 4 equal pieces (using a digital scale if possible; each ball should weigh 11.5 oz [~326 grams]), shape into a ball, and place in greased, sealed quart-sized container or oiled/greased freezer bag and refrigerate overnight or up to 72 hours (After much experimenting, I have concluded that I like 3 days best but day 2 is good too).

Assembling and baking the pizzas

    The following day, remove your dough balls within 1 hour or less of baking and allow the dough to come to room temperature. (the dough will tend to blister more if the dough has not been allowed to come to room temperature however, I often bake coldish dough without problems, just some bubbling)
    In the meantime, place your pizza stone in oven and preheat at 550 degrees (depending on thickness of your stone and your oven’s power) for at least 1 hour
    Open each dough ball using care not to degas, transfer to a pre-floured pizza peel (or on parchment paper), and top with your favorite sauce, cheese, or other toppings.
    Transfer pizza from peel to oven or slide parchment paper onto preheated pizza pan/stone and bake for 4 to 6 minutes each until browned on top and cheese has melted but not burned.
    Enjoy!', 32, 7, 'https://cdn.discordapp.com/attachments/872641665314222100/963886397192802354/572134-pizza-4k-full.jpg');
	
insert into recipe_ingredients values 
((select recipe_id from recipes where name = 'The Best New York Style Pizza Dough'), 
 (select ingredient_id from ingredients where name = 'all-purpose-flour'), 
 'all-purpose-flour', 4.5, 'cups');
insert into recipe_ingredients values 
((select recipe_id from recipes where name = 'The Best New York Style Pizza Dough'), 
 (select ingredient_id from ingredients where name = 'water'), 
 'water', 1.75, 'cups');
insert into recipe_ingredients values 
((select recipe_id from recipes where name = 'The Best New York Style Pizza Dough'), 
 (select ingredient_id from ingredients where name = 'dry-yeast'), 
 'dry-yeast', 2, 'tsp');
insert into recipe_ingredients values 
((select recipe_id from recipes where name = 'The Best New York Style Pizza Dough'), 
 (select ingredient_id from ingredients where name = 'salt'), 
 'salt', 1, 'tbsp');
insert into recipe_ingredients values 
((select recipe_id from recipes where name = 'The Best New York Style Pizza Dough'), 
 (select ingredient_id from ingredients where name = 'sugar'), 
 'sugar', 1.5, 'tbsp');
insert into recipe_ingredients values 
((select recipe_id from recipes where name = 'The Best New York Style Pizza Dough'), 
 (select ingredient_id from ingredients where name = 'olive oil'), 
 'olive oil', 3, 'tbsp');

insert into recipe_appliances values 
((select appliance_id from appliances where name = 'Oven'), 
 (select recipe_id from recipes where name = 'The Best New York Style Pizza Dough'));










insert into recipes values 
(default, (select user_id from users where username = 'Matthew'), 
 '3-Spice Brownies', 
 'These brownies have a kiss of aromatic spices—cardamom, cinnamon, and cloves—the perfect complement to chocolate. They are sweetened with brown sugar, which also pairs perfectly with chocolate.', 
 '
Preheat the oven and prepare pan:

Preheat the oven to 350°F. If using a ceramic or glass baking dish, the oven temperature should be set to 325°F.

Butter the sides of a 9x9-inch cake pan or baking dish. Cut 2 strips of parchment paper that are wide enough to fit the width of the pan and long enough to cover at least 2 inches up the sides, and line the pan. Lightly butter the parchment paper and set the pan aside. 
Parchment paper lined baking dish.
Melt the chocolate: 

Fill a medium pot with at least 2 inches of water. Set it over medium heat to bring the water to a gentle boil. Place a medium heat-proof bowl on top of the pot. The boiling water should not touch the bottom of the bowl. This is your double-boiler. 

Add the chocolate and butter into the bowl and gently stir with a rubber spatula until smooth. Remove the bowl from heat and stir in the brown sugar, cardamom, cinnamon, cloves, and salt until fully combined. Set the bowl aside to cool for 7 to 10 minutes, until the mixture comes to room temperature.
Butter and chocolate melting in a double boiler.
Melted chocolate.
Add the eggs: 

Add eggs and use a handheld electric mixer on high speed to whisk until the batter looks shiny and smooth, 1 minute to 1 minute 30 seconds.
Brownie batter in a bowl.
Add the flour and walnuts: 

Add flour and mix on low speed until smooth and no dry pockets of flour are visible. Try not to overmix the batter. Fold in the walnuts with a rubber spatula, until evenly distributed.
Brownie batter in a bowl with flour and nuts.
Bake the brownies: 

Use a rubber spatula to scrape the batter into the prepared cake pan and spread it out evenly. Bake for 25 minutes or until a toothpick inserted in the center comes out with moist crumbs. 
Brownie batter in the cake pan.
Cool, decorate, and serve: 

Transfer the cake pan onto a wire rack until fully cooled. Then, use the parchment paper slings to lift out the brownies. Using a sifter, sieve, or small shaker to dust the tops with cocoa powder and sprinkle with the dried rose petals.

Left on the counter, they are best eaten within 1 to 2 days. You can refrigerate them for 3 to 4 days. ', 14, 5, 'https://cdn.discordapp.com/attachments/872641665314222100/963878187530592346/brownie.jpg');


insert into recipe_ingredients values 
((select recipe_id from recipes where name = '3-Spice Brownies'), 
 (select ingredient_id from ingredients where name = 'fr:unsweetened-chocolate'), 
 'fr:unsweetened-chocolate', 4, 'oz');
	
insert into recipe_ingredients values 
((select recipe_id from recipes where name = '3-Spice Brownies'), 
 (select ingredient_id from ingredients where name = 'unsalted butter'), 
 'unsalted butter', .75, 'cup');

insert into recipe_ingredients values 
((select recipe_id from recipes where name = '3-Spice Brownies'), 
 (select ingredient_id from ingredients where name = 'light-brown-sugar'), 
 'light-brown-sugar', 1.5, 'cup');

insert into recipe_ingredients values 
((select recipe_id from recipes where name = '3-Spice Brownies'), 
 (select ingredient_id from ingredients where name = 'cardamom'), 
 'cardamom', .5, 'tsp');

insert into recipe_ingredients values 
((select recipe_id from recipes where name = '3-Spice Brownies'), 
 (select ingredient_id from ingredients where name = 'cinnamon powder'), 
 'cinnamon powder', .25, 'tsp');

insert into recipe_ingredients values 
((select recipe_id from recipes where name = '3-Spice Brownies'), 
 (select ingredient_id from ingredients where name = 'clove'), 
 'clove', .25, 'tsp');
 
 insert into recipe_ingredients values 
((select recipe_id from recipes where name = '3-Spice Brownies'), 
 (select ingredient_id from ingredients where name = 'sea salt'), 
 'sea salt', .5, 'tsp');

insert into recipe_ingredients values 
((select recipe_id from recipes where name = '3-Spice Brownies'), 
 (select ingredient_id from ingredients where name = 'egg'), 
 'egg', 3, 'large');

insert into recipe_ingredients values 
((select recipe_id from recipes where name = '3-Spice Brownies'), 
 (select ingredient_id from ingredients where name = 'all-purpose-flour'), 
 'all-purpose-flour', 1, 'cup');
 
 insert into recipe_ingredients values 
((select recipe_id from recipes where name = '3-Spice Brownies'), 
 (select ingredient_id from ingredients where name = 'walnut'), 
 'walnut', .5, 'cup');

insert into recipe_ingredients values 
((select recipe_id from recipes where name = '3-Spice Brownies'), 
 (select ingredient_id from ingredients where name = 'cocoa powder'), 
 'cocoa powder', 1, 'tbsp');
 
insert into recipe_ingredients values 
((select recipe_id from recipes where name = '3-Spice Brownies'), 
 (select ingredient_id from ingredients where name = 'rose petals'), 
 'rose petals', 1, 'tbsp');
 

insert into recipe_appliances values 
((select appliance_id from appliances where name = '3-Spice Brownies'), 
 (select recipe_id from recipes where name = 'Oven'));
 
 insert into recipe_appliances values 
((select appliance_id from appliances where name = '3-Spice Brownies'), 
 (select recipe_id from recipes where name = 'Stove'));








insert into recipes values 
(default, (select user_id from users where username = 'Matthew'), 
 'Noodle Kugel', 
 'This sweet, noodle-based kugel is along the lines of what you’d typically see on the table at a Shabbat dinner or holiday gathering. Sweetened with sugar, enriched with sour cream and cottage cheese, and studded with raisins and apples, you might think it’s meant for dessert, but kugel is firmly entrenched in side-dish and/or leftover breakfast territory. ', 
 '
Preheat the oven and prepare casserole dish:

Preheat the oven to 350ºF. Grease a 9x13-inch casserole dish with butter. Set aside until ready to use.
Prepare baking dish for noodle kugel
Cook the noodles:

Bring a large pot of water to a boil over medium-high heat. Add the noodles and boil until al dente, about 8 minutes or the according to package instructions.

When the noodles are done boiling, drain into a colander, then add to a large bowl.
Cook the noodles for noodle kugel
Make the cornflake topping:

While the noodles are boiling, make the topping. In a large bowl, use your hands to crush the cornflakes into coarse crumbs. Add the brown sugar, cinnamon, and melted butter and stir to combine. Set aside until ready to use.
Make the cornflake topping for noodle kugel
Make the cornflake topping for noodle kugel
Assemble kugel:

After you’ve drained the noodles, add the butter into the large bowl while the noodles are still hot, and stir until the butter is melted. Add the diced apples, eggs, sour cream, cottage cheese, sugar, raisins, cinnamon, and salt, and stir until evenly combined.
Cook the noodles for noodle kugel
Assemble kugel
Assemble kugel
Transfer to baking dish:

Transfer the noodle mixture to the greased baking dish, then sprinkle the cornflake mixture evenly over the noodle mixture.
Assemble noodle kugel in casserole dish
Sprinkle cornflake topping on noodle kugel
Bake kugel:

Cover the dish tightly with aluminum foil. Bake the kugel for 1 hour, then remove the foil and bake for 20 more minutes. You’ll know your kugel is done when an instant-read thermometer inserted in the center of the casserole reads 150 to 160°F, the topping is lightly browned, and the noodles have turned golden brown around the edges of the baking dish.
Cover casserole and bake
Cool, cut, then serve kugel:

Remove from the oven and let cool for at least 1 hour before serving, to allow the kugel to set up.

Cut the kugel into squares or rectangles—this casserole makes 8 or 9 generous servings (about 4 inches by 3 inches), or 12 smaller ones (about 3 inches square). Serve warm or at room temperature. ', 
 12, 4, 'https://cdn.discordapp.com/attachments/872641665314222100/963881437336064050/NoodleKoogle.jpg');
	

insert into recipe_ingredients values 
((select recipe_id from recipes where name = 'Noodle Kugel'), 
 (select ingredient_id from ingredients where name = 'egg-noodles'), 
 'egg-noodles', 12, 'oz');

insert into recipe_ingredients values 
((select recipe_id from recipes where name = 'Noodle Kugel'), 
 (select ingredient_id from ingredients where name = 'unsalted butter'), 
 'unsalted butter', 2, 'tbsp');
 
insert into recipe_ingredients values 
((select recipe_id from recipes where name = 'Noodle Kugel'), 
 (select ingredient_id from ingredients where name = 'apple'), 
 'apple', 2, 'whole');
 
 insert into recipe_ingredients values 
((select recipe_id from recipes where name = 'Noodle Kugel'), 
 (select ingredient_id from ingredients where name = 'egg'), 
 'egg', 6, 'large');
 
 insert into recipe_ingredients values 
((select recipe_id from recipes where name = 'Noodle Kugel'), 
 (select ingredient_id from ingredients where name = 'sour cream'), 
 'sour cream', 2, 'cups');
 
 insert into recipe_ingredients values 
((select recipe_id from recipes where name = 'Noodle Kugel'), 
 (select ingredient_id from ingredients where name = 'cottage cheese'), 
 'cottage cheese', 2, 'cups');
 
 insert into recipe_ingredients values 
((select recipe_id from recipes where name = 'Noodle Kugel'), 
 (select ingredient_id from ingredients where name = 'granulated sugar'), 
 'granulated sugar', .67, 'cup');

insert into recipe_ingredients values 
((select recipe_id from recipes where name = 'Noodle Kugel'), 
 (select ingredient_id from ingredients where name = 'raisin'), 
 'raisin', .67, 'cup');

insert into recipe_ingredients values 
((select recipe_id from recipes where name = 'Noodle Kugel'), 
 (select ingredient_id from ingredients where name = 'kosher salt'), 
 'kosher salt', .5, 'tsp');
 
 insert into recipe_ingredients values 
((select recipe_id from recipes where name = 'Noodle Kugel'), 
 (select ingredient_id from ingredients where name = 'corn-cereal'), 
 'corn-cereal', 2, 'cup');
 
 insert into recipe_ingredients values 
((select recipe_id from recipes where name = 'Noodle Kugel'), 
 (select ingredient_id from ingredients where name = 'brown sugar'), 
 'brown sugar', .25, 'cup');
 
 insert into recipe_ingredients values 
((select recipe_id from recipes where name = 'Noodle Kugel'), 
 (select ingredient_id from ingredients where name = 'cinnamon powder'), 
 'cinnamon powder', .5, 'tsp');

insert into recipe_ingredients values 
((select recipe_id from recipes where name = 'Noodle Kugel'), 
 (select ingredient_id from ingredients where name = 'unsalted butter'), 
 'unsalted butter', 2, 'tbsp');
 

insert into recipe_appliances values 
((select appliance_id from appliances where name = 'Noodle Kugel'), 
 (select recipe_id from recipes where name = 'Oven'));
 
 insert into recipe_appliances values 
((select appliance_id from appliances where name = 'Noodle Kugel'), 
 (select recipe_id from recipes where name = 'Stove'));











insert into recipes values 
(default, (select user_id from users where username = 'Matthew'), 
 'Lemony Baked Cod with Wild Rice and Fennel', 
 'Need a beautiful and thoughtful meal that requires zero side dishes? This lemony cod, warm fennel salad, and wild rice combo may be just what you need tonight.', 
 '
Preheat the oven to 375°F. 
Cook the rice: 

In a 9x13-inch baking dish (glass, ceramic, or metal works), stir 2 cups boiling water, the wild rice blend, dried parsley, and salt. Immediately cover the dish tightly with foil and place it in the oven to bake for 50 minutes.
Wild rice blend and boiling water in baking dish.
Tightly cover the baking dish with foil.
Prepare the cod:

While rice cooks, pat the cod dry with paper towels and evenly season both sides with salt and black pepper. In a small bowl, combine the butter and lemon juice. Set them aside. 
Fluff the rice and add the cod: 

At the 50-minute mark remove the rice from the oven and give it a good stir—be sure to get the edges and spread it back into an even layer. Lay the cod on top of the rice and drizzle the lemony butter mixture over each filet. 

Sprinkle 2 tablespoons of water over the rice around the edges of the dish. Cover the dish tightly with foil and pop it back in the oven for 15 to 20 minutes, until the cod is cooked through. It will transform from translucent to opaque and gently flake when prodded with a fork. A thermometer poked into the center should read 145°F.
Place the cod on top of the partially cooked rice.
Meanwhile, plump up the raisins:

In a small bowl, combine 1/2 cup boiling water and the golden raisins. Let the raisins plump up for at least 5 minutes. Drain the raisins into a colander or fine set in the sink and set aside. 
Plump up holden raisins in a small bowl.
Make the warm fennel salad: 

In a large skillet set over medium heat, heat 2 tablespoons olive oil. Add the sliced fennel, salt, and black pepper. Sauté the fennel until it starts to soften just a little, about 5 minutes. Add the shallots and sauté for 3 to 4 minutes. The fennel and shallots should be tender, but not browned or mushy.

Meanwhile, in a medium bowl, add the remaining 2 tablespoons olive oil, honey, and lemon juice, and stir until the honey is dissolved. 

Remove the skillet from the heat and stir in the plump raisins, almonds, and lemon dressing. Taste and adjust seasoning with more salt, black pepper, or honey. Fold in the parsley.
Saute fennel in skillet.
Toss the warm fennel salad with the lemon dressing, raisins and parsley.
Plate and serve: 

Plate some rice on a plate with a filet of cod and warm fennel salad on the side. Garnish with fennel fronds, if any, and serve with quartered lemons to squeeze on the cod.

To store leftovers, separate the cod, fennel salad, and rice into separate containers and refrigerate for up to 3 days. Because the fish will reheat at a different rate than the rice, heat them separately in the microwave. ', 
 4, 7, 'https://cdn.discordapp.com/attachments/872641665314222100/963885864801411252/Cod.jpg');
	
		
insert into recipe_ingredients values 
((select recipe_id from recipes where name = 'Lemony Baked Cod with Wild Rice and Fennel'), 
 (select ingredient_id from ingredients where name = 'water'), 
 'water', 2, 'cup');
 
 insert into recipe_ingredients values 
((select recipe_id from recipes where name = 'Lemony Baked Cod with Wild Rice and Fennel'), 
 (select ingredient_id from ingredients where name = 'brown rice'), 
 'brown rice', 1, 'cup');
 
 insert into recipe_ingredients values 
((select recipe_id from recipes where name = 'Lemony Baked Cod with Wild Rice and Fennel'), 
 (select ingredient_id from ingredients where name = 'parsley'), 
 'parsley', 1, 'tbsp');
 
 insert into recipe_ingredients values 
((select recipe_id from recipes where name = 'Lemony Baked Cod with Wild Rice and Fennel'), 
 (select ingredient_id from ingredients where name = 'cod'), 
 'cod', 4, 'filet');
 
 insert into recipe_ingredients values 
((select recipe_id from recipes where name = 'Lemony Baked Cod with Wild Rice and Fennel'), 
 (select ingredient_id from ingredients where name = 'salt'), 
 'salt', .5, 'tsp');
 
 insert into recipe_ingredients values 
((select recipe_id from recipes where name = 'Lemony Baked Cod with Wild Rice and Fennel'), 
 (select ingredient_id from ingredients where name = 'pepper'), 
 'pepper', .5, 'tsp');
 
 insert into recipe_ingredients values 
((select recipe_id from recipes where name = 'Lemony Baked Cod with Wild Rice and Fennel'), 
 (select ingredient_id from ingredients where name = 'unsalted butter'), 
 'unsalted butter', 2, 'tbsp');
 
 insert into recipe_ingredients values 
((select recipe_id from recipes where name = 'Lemony Baked Cod with Wild Rice and Fennel'), 
 (select ingredient_id from ingredients where name = 'lemon juice'), 
 'lemon juice', 2, 'tbsp');
 
 insert into recipe_ingredients values 
((select recipe_id from recipes where name = 'Lemony Baked Cod with Wild Rice and Fennel'), 
 (select ingredient_id from ingredients where name = 'water'), 
 'water', .5, 'cup');
 
 insert into recipe_ingredients values 
((select recipe_id from recipes where name = 'Lemony Baked Cod with Wild Rice and Fennel'), 
 (select ingredient_id from ingredients where name = 'golden-raisins'), 
 'golden-raisins', .33, 'cup');
 
 insert into recipe_ingredients values 
((select recipe_id from recipes where name = 'Lemony Baked Cod with Wild Rice and Fennel'), 
 (select ingredient_id from ingredients where name = 'olive oil'), 
 'olive oil', .25, 'cup');
 
 insert into recipe_ingredients values 
((select recipe_id from recipes where name = 'Lemony Baked Cod with Wild Rice and Fennel'), 
 (select ingredient_id from ingredients where name = 'fennel'), 
 'fennel', 2, 'large bulb');
 
 insert into recipe_ingredients values 
((select recipe_id from recipes where name = 'Lemony Baked Cod with Wild Rice and Fennel'), 
 (select ingredient_id from ingredients where name = 'salt'), 
 'salt', .5, 'tsp');
 
 insert into recipe_ingredients values 
((select recipe_id from recipes where name = 'Lemony Baked Cod with Wild Rice and Fennel'), 
 (select ingredient_id from ingredients where name = 'black pepper'), 
 'black pepper', .5, 'tsp');
 
 insert into recipe_ingredients values 
((select recipe_id from recipes where name = 'Lemony Baked Cod with Wild Rice and Fennel'), 
 (select ingredient_id from ingredients where name = 'shallot'), 
 'shallot', 2, 'large');
 
 insert into recipe_ingredients values 
((select recipe_id from recipes where name = 'Lemony Baked Cod with Wild Rice and Fennel'), 
 (select ingredient_id from ingredients where name = 'honey'), 
 'honey', 1, 'tsp');
 
 insert into recipe_ingredients values 
((select recipe_id from recipes where name = 'Lemony Baked Cod with Wild Rice and Fennel'), 
 (select ingredient_id from ingredients where name = 'lemon juice'), 
 'lemon juice', .25, 'cup');
 
 insert into recipe_ingredients values 
((select recipe_id from recipes where name = 'Lemony Baked Cod with Wild Rice and Fennel'), 
 (select ingredient_id from ingredients where name = 'almond'), 
 'almond', .33, 'cup');
 
 insert into recipe_ingredients values 
((select recipe_id from recipes where name = 'Lemony Baked Cod with Wild Rice and Fennel'), 
 (select ingredient_id from ingredients where name = 'parsley'), 
 'parsley', .33, 'cup');
 
 insert into recipe_ingredients values 
((select recipe_id from recipes where name = 'Lemony Baked Cod with Wild Rice and Fennel'), 
 (select ingredient_id from ingredients where name = 'lemon'), 
 'lemon', 1, 'whole');
 

insert into recipe_appliances values 
((select appliance_id from appliances where name = 'Lemony Baked Cod with Wild Rice and Fennel'), 
 (select recipe_id from recipes where name = 'Oven'));
 
 insert into recipe_appliances values 
((select appliance_id from appliances where name = 'Lemony Baked Cod with Wild Rice and Fennel'), 
 (select recipe_id from recipes where name = 'Stove'));










insert into recipes values 
(default, (select user_id from users where username = 'Matthew'), 
 'Creamy Tuscan Garlic Chicken', 
 'Creamy Tuscan Garlic Chicken has the most amazing creamy garlic sauce with spinach and sun dried tomatoes. This is a restaurant quality meal that’s easy to make at home in just 30 minutes!', 
 '
    Cook Chicken: In a large skillet add olive oil and cook the chicken on medium high heat for 3-5 minutes on each side or until brown on each side and cooked until no longer pink in center. Then, remove chicken and set aside on a plate.
 
    Whisk together cream sauce: Add the heavy cream, chicken broth, garlic powder, italian seasoning, and parmesan cheese. Immediately begin to whisk over medium high heat until it starts to thicken. Finally, add in the spinach and sundried tomatoes and let it simmer until the spinach starts to wilt.
 
    Combine sauce and chicken: Lastly, add the chicken back to the pan and serve over pasta if desired.
', 6, 2, 'https://cdn.discordapp.com/attachments/872641665314222100/963889516396052620/tuscangarlichicken2-667x1000.jpg');
	
		
insert into recipe_ingredients values 
((select recipe_id from recipes where name = 'Creamy Tuscan Garlic Chicken'), 
 (select ingredient_id from ingredients where name = 'chicken breast'), 
 'chicken breast', 1.5, 'lbs');
 
 insert into recipe_ingredients values 
((select recipe_id from recipes where name = 'Creamy Tuscan Garlic Chicken'), 
 (select ingredient_id from ingredients where name = 'olive oil'), 
 'olive oil', 2, 'tbsp');
 
 insert into recipe_ingredients values 
((select recipe_id from recipes where name = 'Creamy Tuscan Garlic Chicken'), 
 (select ingredient_id from ingredients where name = 'heavy-cream'), 
 'heavy-cream', 1, 'cup');
 
 insert into recipe_ingredients values 
((select recipe_id from recipes where name = 'Creamy Tuscan Garlic Chicken'), 
 (select ingredient_id from ingredients where name = 'chicken broth'), 
 'chicken broth', .5, 'cup');
 
 insert into recipe_ingredients values 
((select recipe_id from recipes where name = 'Creamy Tuscan Garlic Chicken'), 
 (select ingredient_id from ingredients where name = 'garlic powder'), 
 'garlic powder', 1, 'tsp');
 
 insert into recipe_ingredients values 
((select recipe_id from recipes where name = 'Creamy Tuscan Garlic Chicken'), 
 (select ingredient_id from ingredients where name = 'italian-seasoning'), 
 'italian-seasoning', 1, 'tsp');
 
 insert into recipe_ingredients values 
((select recipe_id from recipes where name = 'Creamy Tuscan Garlic Chicken'), 
 (select ingredient_id from ingredients where name = 'parmesan'), 
 'parmesan', .5, 'cup');
 
 insert into recipe_ingredients values 
((select recipe_id from recipes where name = 'Creamy Tuscan Garlic Chicken'), 
 (select ingredient_id from ingredients where name = 'spinach'), 
 'spinach', 1, 'cup');
 
 insert into recipe_ingredients values 
((select recipe_id from recipes where name = 'Creamy Tuscan Garlic Chicken'), 
 (select ingredient_id from ingredients where name = 'sundried tomatoes'), 
 'sundried tomatoes', .5, 'cup');
 

insert into recipe_appliances values 
((select appliance_id from appliances where name = 'Creamy Tuscan Garlic Chicken'), 
 (select recipe_id from recipes where name = 'Stove'));







insert into recipes values 
(default, (select user_id from users where username = 'Matthew'), 
 'Korean Ground Beef and Rice Bowls', 
 'Korean Ground Beef and Rice Bowls are so incredibly easy to make and will become a family favorite! This makes the perfect weeknight meal.', 
 'In a large skillet cook the ground beef and garlic breaking it into crumbles over medium heat until no longer pink.
 
    In a small bowl whisk brown sugar, soy sauce, sesame oil, ginger, red pepper flakes and pepper. Pour over the ground beef and let simmer for another minute or two.
 
    Serve over hot rice and garnish with green onions and sesame seeds.', 4, 5, 'https://cdn.discordapp.com/attachments/872641665314222100/963893453262057542/0C4A8325-667x1000.jpg');
	
		
insert into recipe_ingredients values 
((select recipe_id from recipes where name = 'Korean Ground Beef and Rice Bowls'), 
 (select ingredient_id from ingredients where name = 'beef'), 
 'beef', 1, 'lb');
 
 insert into recipe_ingredients values 
((select recipe_id from recipes where name = 'Korean Ground Beef and Rice Bowls'), 
 (select ingredient_id from ingredients where name = 'garlic'), 
 'garlic', 3, 'clove');
 
 insert into recipe_ingredients values 
((select recipe_id from recipes where name = 'Korean Ground Beef and Rice Bowls'), 
 (select ingredient_id from ingredients where name = 'brown sugar'), 
 'brown sugar', .25, 'cup');
 
 insert into recipe_ingredients values 
((select recipe_id from recipes where name = 'Korean Ground Beef and Rice Bowls'), 
 (select ingredient_id from ingredients where name = 'soy sauce'), 
 'soy sauce', .25, 'cup');
 
 insert into recipe_ingredients values 
((select recipe_id from recipes where name = 'Korean Ground Beef and Rice Bowls'), 
 (select ingredient_id from ingredients where name = 'sesame oil'), 
 'sesame oil', 2, 'tsp');
 
 insert into recipe_ingredients values 
((select recipe_id from recipes where name = 'Korean Ground Beef and Rice Bowls'), 
 (select ingredient_id from ingredients where name = 'ginger powder'), 
 'ginger powder', .25, 'tsp');
 
 insert into recipe_ingredients values 
((select recipe_id from recipes where name = 'Korean Ground Beef and Rice Bowls'), 
 (select ingredient_id from ingredients where name = 'pepper'), 
 'pepper', .25, 'tsp');
 
 insert into recipe_ingredients values 
((select recipe_id from recipes where name = 'Korean Ground Beef and Rice Bowls'), 
 (select ingredient_id from ingredients where name = 'brown rice'), 
 'brown rice', 2, 'cups');
 
 insert into recipe_ingredients values 
((select recipe_id from recipes where name = 'Korean Ground Beef and Rice Bowls'), 
 (select ingredient_id from ingredients where name = 'spring onion'), 
 'spring onion', 1, '');
 

insert into recipe_appliances values 
((select appliance_id from appliances where name = 'Korean Ground Beef and Rice Bowls'), 
 (select recipe_id from recipes where name = 'Stove'));
 
 insert into recipe_appliances values 
((select appliance_id from appliances where name = 'Korean Ground Beef and Rice Bowls'), 
 (select recipe_id from recipes where name = 'Rice cooker'));








insert into recipes values 
(default, (select user_id from users where username = 'Matthew'), 
 'Creamy Parmesan Garlic Mushroom Chicken', 
 'Creamy Parmesan Garlic Mushroom Chicken is ready in just 30 minutes and the parmesan garlic sauce will wow the entire family! This will become a new favorite!', 
 'In a large skillet add olive oil and cook the chicken on medium high heat for 3-5 minutes on each side or until brown on each side and cooked until no longer pink in center. Remove chicken and set aside on a plate. Add the sliced mushrooms and cook for a few minutes until tender. Remove and set aside.
 
To make the sauce add the butter and melt. Add garlic and cook until tender. Whisk in the flour until it thickens. Whisk in chicken broth, heavy cream, parmesan cheese, garlic powder, pepper and salt. Add the spinach and let simmer until it starts to thicken and spinach wilts. Add the chicken and ,mushrooms back to the sauce and serve over pasta is desired.', 
 8, 2, 'https://cdn.discordapp.com/attachments/872641665314222100/963895495510622208/creamyparmesanchicken-2-667x1000.jpg');
	
		
insert into recipe_ingredients values 
((select recipe_id from recipes where name = 'Creamy Parmesan Garlic Mushroom Chicken'), 
 (select ingredient_id from ingredients where name = 'chicken breast'), 
 'chicken breast', 4, '');
 
 insert into recipe_ingredients values 
((select recipe_id from recipes where name = 'Creamy Parmesan Garlic Mushroom Chicken'), 
 (select ingredient_id from ingredients where name = 'olive oil'), 
 'olive oil', 2, 'tbsp');
 
 insert into recipe_ingredients values 
((select recipe_id from recipes where name = 'Creamy Parmesan Garlic Mushroom Chicken'), 
 (select ingredient_id from ingredients where name = 'mushroom'), 
 'mushroom', 8, 'oz');
 
 insert into recipe_ingredients values 
((select recipe_id from recipes where name = 'Creamy Parmesan Garlic Mushroom Chicken'), 
 (select ingredient_id from ingredients where name = 'butter'), 
 'butter', .25, 'cup');
 
 insert into recipe_ingredients values 
((select recipe_id from recipes where name = 'Creamy Parmesan Garlic Mushroom Chicken'), 
 (select ingredient_id from ingredients where name = 'garlic'), 
 'garlic', 2, 'clove');
 
 insert into recipe_ingredients values 
((select recipe_id from recipes where name = 'Creamy Parmesan Garlic Mushroom Chicken'), 
 (select ingredient_id from ingredients where name = 'flour'), 
 'flour', 1, 'tbsp');
 
 insert into recipe_ingredients values 
((select recipe_id from recipes where name = 'Creamy Parmesan Garlic Mushroom Chicken'), 
 (select ingredient_id from ingredients where name = 'chicken broth'), 
 'chicken broth', .5, 'cup');
 
 insert into recipe_ingredients values 
((select recipe_id from recipes where name = 'Creamy Parmesan Garlic Mushroom Chicken'), 
 (select ingredient_id from ingredients where name = 'heavy-cream'), 
 'heavy-cream', 1, 'cup');
 
 insert into recipe_ingredients values 
((select recipe_id from recipes where name = 'Creamy Parmesan Garlic Mushroom Chicken'), 
 (select ingredient_id from ingredients where name = 'parmesan'), 
 'parmesan', .5, 'cup');
 
 insert into recipe_ingredients values 
((select recipe_id from recipes where name = 'Creamy Parmesan Garlic Mushroom Chicken'), 
 (select ingredient_id from ingredients where name = 'garlic powder'), 
 'garlic powder', .5, 'tsp');
 
 insert into recipe_ingredients values 
((select recipe_id from recipes where name = 'Creamy Parmesan Garlic Mushroom Chicken'), 
 (select ingredient_id from ingredients where name = 'pepper'), 
 'pepper', .25, 'tsp');
 
 insert into recipe_ingredients values 
((select recipe_id from recipes where name = 'Creamy Parmesan Garlic Mushroom Chicken'), 
 (select ingredient_id from ingredients where name = 'salt'), 
 'salt', .5, 'tsp');
 
 insert into recipe_ingredients values 
((select recipe_id from recipes where name = 'Creamy Parmesan Garlic Mushroom Chicken'), 
 (select ingredient_id from ingredients where name = 'spinach'), 
 'spinach', 1, 'cup');
 
 

insert into recipe_appliances values 
((select appliance_id from appliances where name = 'Creamy Parmesan Garlic Mushroom Chicken'), 
 (select recipe_id from recipes where name = 'Stove'));






insert into recipes values 
(default, (select user_id from users where username = 'Matthew'), 
 'The Best Swedish Meatballs', 
 'The Best Swedish Meatballs are smothered in the most amazing rich and creamy gravy. The meatballs are packed with such delicious flavor you will agree these are the BEST you have ever had!', 
 'In a medium sized bowl combine ground beef, panko, parsley, allspice, nutmeg, onion, garlic powder, pepper, salt and egg. Mix until combined.
 
Roll into 12 large meatballs or 20 small meatballs. In a large skillet heat olive oil and 1 Tablespoon butter. Add the meatballs and cook turning continuously until brown on each side and cooked throughout. Transfer to a plate and cover with foil.
 
Add 4 Tablespoons butter and flour to skillet and whisk until it turns brown. Slowly stir in beef broth and heavy cream. Add worchestershire sauce and dijon mustard and bring to a simmer until sauce starts to thicken. Salt and pepper to taste.
 
Add the meatballs back to the skillet and simmer for another 1-2 minutes. Serve over egg noodles or rice.', 
 6, 5, 'https://cdn.discordapp.com/attachments/872641665314222100/963897330527002674/swedishmeatballs5-650x975.jpg');
	
		
insert into recipe_ingredients values 
((select recipe_id from recipes where name = 'The Best Swedish Meatballs'), 
 (select ingredient_id from ingredients where name = 'beef'), 
 'ground beef', 1, 'lb');
 
 insert into recipe_ingredients values 
((select recipe_id from recipes where name = 'The Best Swedish Meatballs'), 
 (select ingredient_id from ingredients where name = 'panko-bread-crumbs'), 
 'panko', .25, 'cup');
 
 insert into recipe_ingredients values 
((select recipe_id from recipes where name = 'The Best Swedish Meatballs'), 
 (select ingredient_id from ingredients where name = 'parsley'), 
 'parsley', 1, 'tbsp');
 
 insert into recipe_ingredients values 
((select recipe_id from recipes where name = 'The Best Swedish Meatballs'), 
 (select ingredient_id from ingredients where name = 'allspice'), 
 'allspice', .25, 'tsp');
 
 insert into recipe_ingredients values 
((select recipe_id from recipes where name = 'The Best Swedish Meatballs'), 
 (select ingredient_id from ingredients where name = 'nutmeg'), 
 'nutmeg', .25, 'tsp');
 
 insert into recipe_ingredients values 
((select recipe_id from recipes where name = 'The Best Swedish Meatballs'), 
 (select ingredient_id from ingredients where name = 'onion'), 
 'onion', .25, 'cup');
 
 insert into recipe_ingredients values 
((select recipe_id from recipes where name = 'The Best Swedish Meatballs'), 
 (select ingredient_id from ingredients where name = 'garlic powder'), 
 'garlic powder', .5, 'tsp');
 
 insert into recipe_ingredients values 
((select recipe_id from recipes where name = 'The Best Swedish Meatballs'), 
 (select ingredient_id from ingredients where name = 'pepper'), 
 'pepper', .1, 'tsp');
 
 insert into recipe_ingredients values 
((select recipe_id from recipes where name = 'The Best Swedish Meatballs'), 
 (select ingredient_id from ingredients where name = 'salt'), 
 'salt', .5, 'tsp');
 
 insert into recipe_ingredients values 
((select recipe_id from recipes where name = 'The Best Swedish Meatballs'), 
 (select ingredient_id from ingredients where name = 'egg'), 
 'egg', 1, '');
 
 insert into recipe_ingredients values 
((select recipe_id from recipes where name = 'The Best Swedish Meatballs'), 
 (select ingredient_id from ingredients where name = 'olive oil'), 
 'olive oil', 1, 'tbsp');
 
 insert into recipe_ingredients values 
((select recipe_id from recipes where name = 'The Best Swedish Meatballs'), 
 (select ingredient_id from ingredients where name = 'butter'), 
 'butter', 5, 'tbsp');
 
 insert into recipe_ingredients values 
((select recipe_id from recipes where name = 'The Best Swedish Meatballs'), 
 (select ingredient_id from ingredients where name = 'flour'), 
 'flour', 3, 'tbsp');
 
 insert into recipe_ingredients values 
((select recipe_id from recipes where name = 'The Best Swedish Meatballs'), 
 (select ingredient_id from ingredients where name = 'beef broth'), 
 'beef broth', 2, 'cup');
 
 insert into recipe_ingredients values 
((select recipe_id from recipes where name = 'The Best Swedish Meatballs'), 
 (select ingredient_id from ingredients where name = 'heavy-cream'), 
 'heavy cream', 1, 'cup');
 
 insert into recipe_ingredients values 
((select recipe_id from recipes where name = 'The Best Swedish Meatballs'), 
 (select ingredient_id from ingredients where name = 'worcestershire sauce'), 
 'worcestershire', 1, 'tbsp');
 
 insert into recipe_ingredients values 
((select recipe_id from recipes where name = 'The Best Swedish Meatballs'), 
 (select ingredient_id from ingredients where name = 'dijon mustard'), 
 'dijon', 1, 'tsp');
 

insert into recipe_appliances values 
((select appliance_id from appliances where name = 'The Best Swedish Meatballs'), 
 (select recipe_id from recipes where name = 'Stove'));


insert into recipes values
(default, (select user_id from users where username = 'Matthew'),
'Best Breakfast Burrito',
'This hearty, healthy breakfast burrito recipe is the best way to kickstart your morning.',
'Preheat the oven to 425°F and line a large baking sheet with parchment paper.
Place the potatoes onto the sheet, drizzle with olive oil, and sprinkle generously with salt and pepper, the smoked paprika, and pinches of red pepper flakes.
Toss to coat, spread evenly on the pan, and bake for 30 minutes or until golden brown and crisp around the edges.
Heat a grill pan on the stove to medium heat. Place the red pepper on the pan and let it char for 4 to 5 minutes per side, or until the pepper is soft and each side has black grill marks.
Alternatively, you can roast it in the oven until soft. Remove from the grill, remove the stem and ribbing, and slice the pepper into strips.
Assemble the burritos: Divide the spinach leaves and red cabbage, if using, among the tortillas.
Top with the scrambled eggs, red pepper strips, black beans, pico de gallo, potatoes, avocado, and cilantro.
Sprinkle with salt and pepper and a squeeze of lime. Fold the left and right sides of the tortilla over the filling.
Fold the bottom flap of the burrito up and over the filling, tucking the sides and the filling as you roll the burrito.',
3, 3, 'https://food.fnr.sndimg.com/content/dam/images/food/fullset/2011/4/22/0/CCHAP-110F_Breakfast-Burrito_s4x3.jpg.rend.hgtvcom.826.620.suffix/1382539589470.jpeg');


insert into recipe_ingredients values
((select recipe_id from recipes where name = 'Best Breakfast Burrito'),
(select ingredient_id from ingredients where name = 'potato'),
'yellow potatoes cut into 1/2 inch pieces', 1, 'lb');

insert into recipe_ingredients values
((select recipe_id from recipes where name = 'Best Breakfast Burrito'),
(select ingredient_id from ingredients where name = 'paprika'),
'smoked paprika', .5, 'tsp');

insert into recipe_ingredients values
((select recipe_id from recipes where name = 'Best Breakfast Burrito'),
(select ingredient_id from ingredients where name = 'chili pepper'),
'pinch of red pepper flakes', .06, 'tsp');

insert into recipe_ingredients values
((select recipe_id from recipes where name = 'Best Breakfast Burrito'),
(select ingredient_id from ingredients where name = 'red bell pepper'),
'red bell pepper', 1, '');

insert into recipe_ingredients values
((select recipe_id from recipes where name = 'Best Breakfast Burrito'),
(select ingredient_id from ingredients where name = 'tortilla'),
'12-inch tortillas', 3, '');

insert into recipe_ingredients values
((select recipe_id from recipes where name = 'Best Breakfast Burrito'),
(select ingredient_id from ingredients where name = 'spinach'),
'fresh spinach', 1, 'cup');

insert into recipe_ingredients values
((select recipe_id from recipes where name = 'Best Breakfast Burrito'),
(select ingredient_id from ingredients where name = 'red cabbage'),
'red cabbage', .5, 'cup');

insert into recipe_ingredients values
((select recipe_id from recipes where name = 'Best Breakfast Burrito'),
(select ingredient_id from ingredients where name = 'egg'),
'scrambled eggs', 9, '');

insert into recipe_ingredients values
((select recipe_id from recipes where name = 'Best Breakfast Burrito'),
(select ingredient_id from ingredients where name = 'black bean'),
'black beans drained and rinsed', .75, 'cup');

insert into recipe_ingredients values
((select recipe_id from recipes where name = 'Best Breakfast Burrito'),
(select ingredient_id from ingredients where name = 'avocado'),
'ripe avocado', 1, '');

insert into recipe_ingredients values
((select recipe_id from recipes where name = 'Best Breakfast Burrito'),
(select ingredient_id from ingredients where name = 'cilantro'),
'cilantro leaves', .5, 'cup');

insert into recipe_ingredients values
((select recipe_id from recipes where name = 'Best Breakfast Burrito'),
(select ingredient_id from ingredients where name = 'lime'),
'lime cut in quarters', 1, '');


insert into recipe_appliances values
((select appliance_id from appliances where name = 'Best Breakfast Burrito'),
(select recipe_id from recipes where name = 'stove'));

insert into recipe_appliances values
((select appliance_id from appliances where name = 'Best Breakfast Burrito'),
(select recipe_id from recipes where name = 'oven'));


insert into recipes values
(default, (select user_id from users where username = 'Matthew'),
'Strawberry Banana Smoothie',
'This refreshing strawberry banana smoothie recipe comes together in seconds in the blender. Perfect for hot summer afternoons or as a healthy breakfast.',
'Combine the raspberries, strawberries, banana, almond milk, honey or maple, basil, if using, and ice in a blender. Blend until smooth.
Taste. If its too tart for you, add another 1/2 cup or so of almond milk and another tablespoon of honey or maple.',
2, 1, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSugFKDZ12jY7clg9hPZLyLXwdhoq1mG7nXTw&usqp=CAU');


insert into recipe_ingredients values
((select recipe_id from recipes where name = 'Strawberry Banana Smoothie'),
(select ingredient_id from ingredients where name = 'raspberry'),
'raspberries', 1.5, 'cup');

insert into recipe_ingredients values
((select recipe_id from recipes where name = 'Strawberry Banana Smoothie'),
(select ingredient_id from ingredients where name = 'strawberry'),
'strawberries', 1, 'cup');

insert into recipe_ingredients values
((select recipe_id from recipes where name = 'Strawberry Banana Smoothie'),
(select ingredient_id from ingredients where name = 'banana'),
'frozen banana', .5, 'cup');

insert into recipe_ingredients values
((select recipe_id from recipes where name = 'Strawberry Banana Smoothie'),
(select ingredient_id from ingredients where name = 'oat milk'),
'almond or oat milk', 1, 'cup');

insert into recipe_ingredients values
((select recipe_id from recipes where name = 'Strawberry Banana Smoothie'),
(select ingredient_id from ingredients where name = 'honey'),
'honey', 1, 'tbsp');

insert into recipe_ingredients values
((select recipe_id from recipes where name = 'Strawberry Banana Smoothie'),
(select ingredient_id from ingredients where name = 'ice'),
'ice', 1.5, 'cup');


insert into recipe_appliances values
((select appliance_id from appliances where name = 'Strawberry Banana Smoothie'),
(select recipe_id from recipes where name = 'blender'));


insert into recipes values
(default, (select user_id from users where username = 'Matthew'),
'Creamy Garlic-Parmesan Mashed Potatoes',
'Tired of plain mashed potatoes? Why not try adding something new?',
'Place potatoes into a large pot and cover with salted water; bring to a boil. Reduce heat to medium-low and simmer until tender, 20 to 25 minutes.
While potatoes are cooking, melt butter over medium-low heat in a small saucepan. Add garlic and saute until soft, about 5 minutes.
Drain potatoes and return to the pot. Add garlic-butter mixture, milk, Parmesan cheese, parsley, sea salt, and pepper; mash until smooth.',
10, 3, 'https://grandbaby-cakes.com/wp-content/uploads/2019/09/Garlic-Mashed-Potatoes-Recipe-1-500x375.jpg');


insert into recipe_ingredients values
((select recipe_id from recipes where name = 'Creamy Garlic-Parmesan Mashed Potatoes'),
(select ingredient_id from ingredients where name = 'potatoes'),
'potatoes peeled and quartered', 5, 'lb');

insert into recipe_ingredients values
((select recipe_id from recipes where name = 'Creamy Garlic-Parmesan Mashed Potatoes'),
(select ingredient_id from ingredients where name = 'butter'),
'butter', .25, 'cup');

insert into recipe_ingredients values
((select recipe_id from recipes where name = 'Creamy Garlic-Parmesan Mashed Potatoes'),
(select ingredient_id from ingredients where name = 'garlic'),
'minced garlic', 6, 'clove');

insert into recipe_ingredients values
((select recipe_id from recipes where name = 'Creamy Garlic-Parmesan Mashed Potatoes'),
(select ingredient_id from ingredients where name = 'milk'),
'2% milk', 2, 'cup');

insert into recipe_ingredients values
((select recipe_id from recipes where name = 'Creamy Garlic-Parmesan Mashed Potatoes'),
(select ingredient_id from ingredients where name = 'parmesan'),
'parmesan cheese', 1, 'cup');

insert into recipe_ingredients values
((select recipe_id from recipes where name = 'Creamy Garlic-Parmesan Mashed Potatoes'),
(select ingredient_id from ingredients where name = 'parsley'),
'parsley fresh and chopped', 1, 'cup');

insert into recipe_ingredients values
((select recipe_id from recipes where name = 'Creamy Garlic-Parmesan Mashed Potatoes'),
(select ingredient_id from ingredients where name = 'sea salt'),
'sea salt', 1, 'tsp');

insert into recipe_ingredients values
((select recipe_id from recipes where name = 'Creamy Garlic-Parmesan Mashed Potatoes'),
(select ingredient_id from ingredients where name = 'black pepper'),
'ground black pepper', .5, 'tsp');

insert into recipe_appliances values
((select appliance_id from appliances where name = 'Creamy Garlic-Parmesan Mashed Potatoes'),
(select recipe_id from recipes where name = 'stove'));


insert into recipes values
(default, (select user_id from users where username = 'Matthew'),
'Sweet Potato Casserole Dessert',
'Fluffy sweet potatoes mixed with butter, sugar, and vanilla, and baked with a crunchy pecan streusel topping.',
'Preheat oven to 350 degrees F (175 degrees C). Grease a 9x13 inch baking dish. In a large bowl, mix together mashed sweet potatoes, 1/2 cup butter, milk, sugar, vanilla extract, and eggs.
Spread sweet potato mixture into the prepared baking dish. In a small bowl, mix together brown sugar and flour. Cut in 1/3 cup butter until mixture is crumbly, then stir in pecans.
Sprinkle pecan mixture over the sweet potatoes. Bake for 25 minutes in the preheated oven, or until golden brown.',
16, 4, 'https://static01.nyt.com/images/2015/10/19/dining/19COOKING-CASSEROLE3/19COOKING-CASSEROLE3-articleLarge.jpg');


insert into recipe_ingredients values
((select recipe_id from recipes where name = 'Sweet Potato Casserole Dessert'),
(select ingredient_id from ingredients where name = 'sweet potato'),
'sweet potatoes cooked and mashed', 4.5, 'cup');

insert into recipe_ingredients values
((select recipe_id from recipes where name = 'Sweet Potato Casserole Dessert'),
(select ingredient_id from ingredients where name = 'butter'),
'butter melted', .5, 'cup');

insert into recipe_ingredients values
((select recipe_id from recipes where name = 'Sweet Potato Casserole Dessert'),
(select ingredient_id from ingredients where name = 'sugar'),
'sugar', 1, 'cup');

insert into recipe_ingredients values
((select recipe_id from recipes where name = 'Sweet Potato Casserole Dessert'),
(select ingredient_id from ingredients where name = 'milk'),
'milk', .33, 'cup');

insert into recipe_ingredients values
((select recipe_id from recipes where name = 'Sweet Potato Casserole Dessert'),
(select ingredient_id from ingredients where name = 'vanilla extract'),
'vanilla extract', .5, 'tsp');

insert into recipe_ingredients values
((select recipe_id from recipes where name = 'Sweet Potato Casserole Dessert'),
(select ingredient_id from ingredients where name = 'egg'),
'eggs beaten', 2, '');

insert into recipe_ingredients values
((select recipe_id from recipes where name = 'Sweet Potato Casserole Dessert'),
(select ingredient_id from ingredients where name = 'brown sugar'),
'brown sugar', 1, 'cup');

insert into recipe_ingredients values
((select recipe_id from recipes where name = 'Sweet Potato Casserole Dessert'),
(select ingredient_id from ingredients where name = 'flour'),
'flour', .5, 'cup');

insert into recipe_ingredients values
((select recipe_id from recipes where name = 'Sweet Potato Casserole Dessert'),
(select ingredient_id from ingredients where name = 'butter'),
'butter', .33, 'cup');

insert into recipe_ingredients values
((select recipe_id from recipes where name = 'Sweet Potato Casserole Dessert'),
(select ingredient_id from ingredients where name = 'nut'),
'favorite nuts or pecans', 1, 'cup');

insert into recipe_appliances values
((select appliance_id from appliances where name = 'Sweet Potato Casserole Dessert'),
(select recipe_id from recipes where name = 'oven'));

insert into recipes values
(default, (select user_id from users where username = 'Matthew'),
'Slow Cooker Chicken Breast',
'This comforting Slow Cooker Chicken Breast recipe is made with a mouthwatering blend of herbs and spices. Guaranteed to turn out perfectly every time!',
'Pour water or chicken broth inside the insert of your slow cooker. Pat dry the chicken breasts with paper towels. Rub the chicken with olive oil and set aside.
 In a small mixing bowl combine the salt, black pepper, paprika, garlic powder, onion powder, basil, and oregano; mix until thoroughly incorporated.
 Rub the chicken breasts with the seasoning mixture. Transfer the chicken breasts to the slow cooker.
 Cover and cook on LOW for 3 to 4 hours, or until internal temperature of the chicken registers at 165˚F. Use an Instant Read Meat Thermometer to check for doneness.
 Remove chicken breasts from the slow cooker and let the chicken rest for about 5 to 8 minutes before cutting and serving.
 If you’d like a bit of browning on the cooked chicken, put it under the broiler for about 3 to 4 minutes after you cooked it in the slow cooker.',
4, 4, 'https://www.gimmesomeoven.com/wp-content/uploads/2013/09/Easy-Slow-Cooker-Shredded-Chicken-1.jpg');


insert into recipe_ingredients values
((select recipe_id from recipes where name = 'Slow Cooker Chicken Breast'),
(select ingredient_id from ingredients where name = 'chicken broth'),
'low sodium chicken broth', .5, 'cup');

insert into recipe_ingredients values
((select recipe_id from recipes where name = 'Slow Cooker Chicken Breast'),
(select ingredient_id from ingredients where name = 'chicken'),
'boneless skinless chicken breasts', 4, '');

insert into recipe_ingredients values
((select recipe_id from recipes where name = 'Slow Cooker Chicken Breast'),
(select ingredient_id from ingredients where name = 'olive oil'),
'olive oil', 2, 'tbsp');

insert into recipe_ingredients values
((select recipe_id from recipes where name = 'Slow Cooker Chicken Breast'),
(select ingredient_id from ingredients where name = 'salt'),
'salt', 1, 'tsp');

insert into recipe_ingredients values
((select recipe_id from recipes where name = 'Slow Cooker Chicken Breast'),
(select ingredient_id from ingredients where name = 'black pepper'),
'ground black pepper', .5, 'tsp');

insert into recipe_ingredients values
((select recipe_id from recipes where name = 'Slow Cooker Chicken Breast'),
(select ingredient_id from ingredients where name = 'paprika'),
'sweet paprika', .5, 'tsp');

insert into recipe_ingredients values
((select recipe_id from recipes where name = 'Slow Cooker Chicken Breast'),
(select ingredient_id from ingredients where name = 'basil'),
'dried basil', .5, 'tsp');

insert into recipe_ingredients values
((select recipe_id from recipes where name = 'Slow Cooker Chicken Breast'),
(select ingredient_id from ingredients where name = 'garlic powder'),
'garlic powder', .5, 'tsp');

insert into recipe_ingredients values
((select recipe_id from recipes where name = 'Slow Cooker Chicken Breast'),
(select ingredient_id from ingredients where name = 'oregano'),
'dried oregano', .5, 'tsp');

insert into recipe_appliances values
((select appliance_id from appliances where name = 'Slow Cooker Chicken Breast'),
(select recipe_id from recipes where name = 'slow cooker'));







insert into recipes values 
(default, (select user_id from users where username = 'Matthew'), 
 'Oven-Roasted Asparagus', 
 'Salty and savory, the roasting method kills the natural bitterness of asparagus. Try it next to grilled fish or lamb. ', 
 ' Step 1

Preheat an oven to 425 degrees F (220 degrees C).
Step 2

Place the asparagus into a mixing bowl, and drizzle with the olive oil. Toss to coat the spears, then sprinkle with Parmesan cheese, garlic, salt, and pepper. Arrange the asparagus onto a baking sheet in a single layer.
Step 3

Bake in the preheated oven until just tender, 12 to 15 minutes depending on thickness. Sprinkle with lemon juice just before serving.
', 
 4, 2, 'https://cdn.discordapp.com/attachments/872641665314222100/966096168499154974/image.webp');
	
		
insert into recipe_ingredients values 
((select recipe_id from recipes where name = 'Oven-Roasted Asparagus'), 
 (select ingredient_id from ingredients where name = 'asparagus'), 
 'asparagus', 1, 'bunch');
 
 insert into recipe_ingredients values 
((select recipe_id from recipes where name = 'Oven-Roasted Asparagus'), 
 (select ingredient_id from ingredients where name = 'olive oil'), 
 'olive oil', 3, 'tbsp');
 
 insert into recipe_ingredients values 
((select recipe_id from recipes where name = 'Oven-Roasted Asparagus'), 
 (select ingredient_id from ingredients where name = 'sea salt'), 
 'sea salt', 1, 'tsp');
 
 insert into recipe_ingredients values 
((select recipe_id from recipes where name = 'Oven-Roasted Asparagus'), 
 (select ingredient_id from ingredients where name = 'black pepper'), 
 'black pepper', .5, 'tsp');
 

insert into recipe_appliances values 
((select appliance_id from appliances where name = 'Oven-Roasted Asparagus'), 
 (select recipe_id from recipes where name = 'Oven'));


insert into recipes values 
(default, (select user_id from users where username = 'Matthew'), 
 'Caesar Salad', 
 'Classic Caesar Salad with crisp homemade croutons and a light caesar dressing – for when you want to impress your dinner guests.', 
 'In a large mixing bowl, combine all of your ingredients and toss gently to coat the lettuce in caesar dressing. This recipe makes enough croutons for two full salads so you’ll have them ready to go for round 2!
', 
 4, 3, 'https://cdn.discordapp.com/attachments/872641665314222100/966097641589055518/Caesar-Salad-Recipe-5-600x900.jpg');
	
		
insert into recipe_ingredients values 
((select recipe_id from recipes where name = 'Caesar Salad'),
 (select ingredient_id from ingredients where name = 'garlic'), 
 'garlic', 1, 'tsp');
 
 insert into recipe_ingredients values 
((select recipe_id from recipes where name = 'Caesar Salad'),
 (select ingredient_id from ingredients where name = 'dijon mustard'), 
 'dijon mustard', 2, 'tsp');
 
 insert into recipe_ingredients values 
((select recipe_id from recipes where name = 'Caesar Salad'),
 (select ingredient_id from ingredients where name = 'worcestershire sauce'), 
 'worcestershire sauce', 1, 'tsp');
 
 insert into recipe_ingredients values 
((select recipe_id from recipes where name = 'Caesar Salad'),
 (select ingredient_id from ingredients where name = 'lemon juice'), 
 'lemon juice', 2, 'tsp');
 
  insert into recipe_ingredients values 
((select recipe_id from recipes where name = 'Caesar Salad'),
 (select ingredient_id from ingredients where name = 'red wine vinegar'), 
 'red wine vinegar', 1.5, 'tsp');
 
   insert into recipe_ingredients values 
((select recipe_id from recipes where name = 'Caesar Salad'),
 (select ingredient_id from ingredients where name = 'extra virgin olive oil'), 
 'extra virgin olive oil', .33, 'cup');
 
    insert into recipe_ingredients values 
((select recipe_id from recipes where name = 'Caesar Salad'),
 (select ingredient_id from ingredients where name = 'sea salt'), 
 'sea salt', .5, 'tsp');
 
    insert into recipe_ingredients values 
((select recipe_id from recipes where name = 'Caesar Salad'),
 (select ingredient_id from ingredients where name = 'black pepper'), 
 'black pepper', .125, 'tsp');

 insert into recipe_appliances values
 ((select appliance_id from appliances where name = 'Caesar Salad'),
  (select recipe_id from recipes where name = 'mixing bowl'));
























insert into recipes values 
(default, (select user_id from users where username = 'Ryan'), 'The Best Chocolate Chip Cookie Recipe Ever2', 'This is the best chocolate chip cookie recipe ever. No funny ingredients, no chilling time, etc. Just a simple, straightforward, amazingly delicious, doughy yet still fully cooked, chocolate chip cookie that turns out perfectly every single time! ', 'Preheat oven to 375 degrees F. Line a baking pan with parchment paper and set aside.
In a separate bowl mix flour, baking soda, salt, baking powder. Set aside.
Cream together butter and sugars until combined.
Beat in eggs and vanilla until fluffy.
Mix in the dry ingredients until combined.
Add 12 oz package of chocolate chips and mix well.
Roll 2-3 TBS (depending on how large you like your cookies) of dough at a time into balls and place them evenly spaced on your prepared cookie sheets. (alternately, use a small cookie scoop to make your cookies).
Bake in preheated oven for approximately 8-10 minutes. Take them out when they are just BARELY starting to turn brown.
Let them sit on the baking pan for 2 minutes before removing to cooling rack', 36, 1, 'https://cdn.discordapp.com/attachments/872641665314222100/963525692438478888/everydaychocolatechipcookies12-1-of-1.jpg');

insert into recipe_ingredients values ((select recipe_id from recipes where name = 'The Best Chocolate Chip Cookie Recipe Ever2'), (select ingredient_id from ingredients where name = 'salted butter'), 'salted butter');
insert into recipe_ingredients values ((select recipe_id from recipes where name = 'The Best Chocolate Chip Cookie Recipe Ever2'), (select ingredient_id from ingredients where name = 'granulated sugar'), 'granulated sugar');
insert into recipe_ingredients values ((select recipe_id from recipes where name = 'The Best Chocolate Chip Cookie Recipe Ever2'), (select ingredient_id from ingredients where name = 'light-brown-sugar'), 'light-brown-sugar');
insert into recipe_ingredients values ((select recipe_id from recipes where name = 'The Best Chocolate Chip Cookie Recipe Ever2'), (select ingredient_id from ingredients where name = 'vanilla extract'), 'granulated sugar');
insert into recipe_ingredients values ((select recipe_id from recipes where name = 'The Best Chocolate Chip Cookie Recipe Ever2'), (select ingredient_id from ingredients where name = 'egg'), 'egg');
insert into recipe_ingredients values ((select recipe_id from recipes where name = 'The Best Chocolate Chip Cookie Recipe Ever2'), (select ingredient_id from ingredients where name = 'all-purpose-flour'), 'all-purpose-flour');
insert into recipe_ingredients values ((select recipe_id from recipes where name = 'The Best Chocolate Chip Cookie Recipe Ever2'), (select ingredient_id from ingredients where name = 'baking powder'), 'baking powder');
insert into recipe_ingredients values ((select recipe_id from recipes where name = 'The Best Chocolate Chip Cookie Recipe Ever2'), (select ingredient_id from ingredients where name = 'fr:baking-soda'), 'fr:baking-soda');
insert into recipe_ingredients values ((select recipe_id from recipes where name = 'The Best Chocolate Chip Cookie Recipe Ever2'), (select ingredient_id from ingredients where name = 'sea salt'), 'sea salt');
insert into recipe_ingredients values ((select recipe_id from recipes where name = 'The Best Chocolate Chip Cookie Recipe Ever2'), (select ingredient_id from ingredients where name = 'semi-sweet-chocolate-chips'), 'semi-sweet-chocolate-chips');

insert into recipe_appliances values ((select appliance_id from appliances where name = 'Oven'), (select recipe_id from recipes where name = 'The Best Chocolate Chip Cookie Recipe Ever2'));


insert into recipes values 
(default, (select user_id from users where username = 'Ryan'), 'The Best New York Style Pizza Dough2', 'The best, authentic NY pizza dough recipe for making pizza dough at home. This is the best thin crust pizza ever! This recipe make four 14″ pizzas (about 2.5 to 3 lbs of dough).  You will never want take out again!', 'To mix the dough

    Place water in mixing bowl.
    In a separate bowl, mix salt and yeast (and sugar if using) into flour
    Combine flour/salt/yeast mixture into water and mix until all the flour has been incorporated.
    After flour has been totally incorporated, add oil and knead for about 4 to 5 minutes (see note)
    Test final dough temperature, which should ideally be between high 70s to low 80s (optional)

Diving the dough and letting it rise

    Divide dough into 4 equal pieces (using a digital scale if possible; each ball should weigh 11.5 oz [~326 grams]), shape into a ball, and place in greased, sealed quart-sized container or oiled/greased freezer bag and refrigerate overnight or up to 72 hours (After much experimenting, I have concluded that I like 3 days best but day 2 is good too).

Assembling and baking the pizzas

    The following day, remove your dough balls within 1 hour or less of baking and allow the dough to come to room temperature. (the dough will tend to blister more if the dough has not been allowed to come to room temperature however, I often bake coldish dough without problems, just some bubbling)
    In the meantime, place your pizza stone in oven and preheat at 550 degrees (depending on thickness of your stone and your oven’s power) for at least 1 hour
    Open each dough ball using care not to degas, transfer to a pre-floured pizza peel (or on parchment paper), and top with your favorite sauce, cheese, or other toppings.
    Transfer pizza from peel to oven or slide parchment paper onto preheated pizza pan/stone and bake for 4 to 6 minutes each until browned on top and cheese has melted but not burned.
    Enjoy!', 32, 7, 'https://cdn.discordapp.com/attachments/872641665314222100/963525584279994438/pizza.jpg');
	
insert into recipe_ingredients values ((select recipe_id from recipes where name = 'The Best New York Style Pizza Dough2'), (select ingredient_id from ingredients where name = 'all-purpose-flour'), 'all-purpose-flour');
insert into recipe_ingredients values ((select recipe_id from recipes where name = 'The Best New York Style Pizza Dough2'), (select ingredient_id from ingredients where name = 'water'), 'water');
insert into recipe_ingredients values ((select recipe_id from recipes where name = 'The Best New York Style Pizza Dough2'), (select ingredient_id from ingredients where name = 'dry-yeast'), 'dry-yeast');
insert into recipe_ingredients values ((select recipe_id from recipes where name = 'The Best New York Style Pizza Dough2'), (select ingredient_id from ingredients where name = 'salt'), 'salt');
insert into recipe_ingredients values ((select recipe_id from recipes where name = 'The Best New York Style Pizza Dough2'), (select ingredient_id from ingredients where name = 'sugar'), 'sugar');
insert into recipe_ingredients values ((select recipe_id from recipes where name = 'The Best New York Style Pizza Dough2'), (select ingredient_id from ingredients where name = 'olive oil'), 'olive oil');

insert into recipe_appliances values ((select appliance_id from appliances where name = 'Oven'), (select recipe_id from recipes where name = 'The Best New York Style Pizza Dough2'));



















insert into recipes values 
(default, (select user_id from users where username = 'David'), 'The Best Chocolate Chip Cookie Recipe Ever3', 'This is the best chocolate chip cookie recipe ever. No funny ingredients, no chilling time, etc. Just a simple, straightforward, amazingly delicious, doughy yet still fully cooked, chocolate chip cookie that turns out perfectly every single time! ', 'Preheat oven to 375 degrees F. Line a baking pan with parchment paper and set aside.
In a separate bowl mix flour, baking soda, salt, baking powder. Set aside.
Cream together butter and sugars until combined.
Beat in eggs and vanilla until fluffy.
Mix in the dry ingredients until combined.
Add 12 oz package of chocolate chips and mix well.
Roll 2-3 TBS (depending on how large you like your cookies) of dough at a time into balls and place them evenly spaced on your prepared cookie sheets. (alternately, use a small cookie scoop to make your cookies).
Bake in preheated oven for approximately 8-10 minutes. Take them out when they are just BARELY starting to turn brown.
Let them sit on the baking pan for 2 minutes before removing to cooling rack', 36, 1, 'https://cdn.discordapp.com/attachments/872641665314222100/963525692438478888/everydaychocolatechipcookies12-1-of-1.jpg');

insert into recipe_ingredients values ((select recipe_id from recipes where name = 'The Best Chocolate Chip Cookie Recipe Ever3'), (select ingredient_id from ingredients where name = 'salted butter'), 'salted butter');
insert into recipe_ingredients values ((select recipe_id from recipes where name = 'The Best Chocolate Chip Cookie Recipe Ever3'), (select ingredient_id from ingredients where name = 'granulated sugar'), 'granulated sugar');
insert into recipe_ingredients values ((select recipe_id from recipes where name = 'The Best Chocolate Chip Cookie Recipe Ever3'), (select ingredient_id from ingredients where name = 'light-brown-sugar'), 'light-brown-sugar');
insert into recipe_ingredients values ((select recipe_id from recipes where name = 'The Best Chocolate Chip Cookie Recipe Ever3'), (select ingredient_id from ingredients where name = 'vanilla extract'), 'granulated sugar');
insert into recipe_ingredients values ((select recipe_id from recipes where name = 'The Best Chocolate Chip Cookie Recipe Ever3'), (select ingredient_id from ingredients where name = 'egg'), 'egg');
insert into recipe_ingredients values ((select recipe_id from recipes where name = 'The Best Chocolate Chip Cookie Recipe Ever3'), (select ingredient_id from ingredients where name = 'all-purpose-flour'), 'all-purpose-flour');
insert into recipe_ingredients values ((select recipe_id from recipes where name = 'The Best Chocolate Chip Cookie Recipe Ever3'), (select ingredient_id from ingredients where name = 'baking powder'), 'baking powder');
insert into recipe_ingredients values ((select recipe_id from recipes where name = 'The Best Chocolate Chip Cookie Recipe Ever3'), (select ingredient_id from ingredients where name = 'fr:baking-soda'), 'fr:baking-soda');
insert into recipe_ingredients values ((select recipe_id from recipes where name = 'The Best Chocolate Chip Cookie Recipe Ever3'), (select ingredient_id from ingredients where name = 'sea salt'), 'sea salt');
insert into recipe_ingredients values ((select recipe_id from recipes where name = 'The Best Chocolate Chip Cookie Recipe Ever3'), (select ingredient_id from ingredients where name = 'semi-sweet-chocolate-chips'), 'semi-sweet-chocolate-chips');

insert into recipe_appliances values ((select appliance_id from appliances where name = 'Oven'), (select recipe_id from recipes where name = 'The Best Chocolate Chip Cookie Recipe Ever3'));


insert into recipes values 
(default, (select user_id from users where username = 'David'), 'The Best New York Style Pizza Dough3', 'The best, authentic NY pizza dough recipe for making pizza dough at home. This is the best thin crust pizza ever! This recipe make four 14″ pizzas (about 2.5 to 3 lbs of dough).  You will never want take out again!', 'To mix the dough

    Place water in mixing bowl.
    In a separate bowl, mix salt and yeast (and sugar if using) into flour
    Combine flour/salt/yeast mixture into water and mix until all the flour has been incorporated.
    After flour has been totally incorporated, add oil and knead for about 4 to 5 minutes (see note)
    Test final dough temperature, which should ideally be between high 70s to low 80s (optional)

Diving the dough and letting it rise

    Divide dough into 4 equal pieces (using a digital scale if possible; each ball should weigh 11.5 oz [~326 grams]), shape into a ball, and place in greased, sealed quart-sized container or oiled/greased freezer bag and refrigerate overnight or up to 72 hours (After much experimenting, I have concluded that I like 3 days best but day 2 is good too).

Assembling and baking the pizzas

    The following day, remove your dough balls within 1 hour or less of baking and allow the dough to come to room temperature. (the dough will tend to blister more if the dough has not been allowed to come to room temperature however, I often bake coldish dough without problems, just some bubbling)
    In the meantime, place your pizza stone in oven and preheat at 550 degrees (depending on thickness of your stone and your oven’s power) for at least 1 hour
    Open each dough ball using care not to degas, transfer to a pre-floured pizza peel (or on parchment paper), and top with your favorite sauce, cheese, or other toppings.
    Transfer pizza from peel to oven or slide parchment paper onto preheated pizza pan/stone and bake for 4 to 6 minutes each until browned on top and cheese has melted but not burned.
    Enjoy!', 32, 7, 'https://cdn.discordapp.com/attachments/872641665314222100/963525584279994438/pizza.jpg');
	
insert into recipe_ingredients values ((select recipe_id from recipes where name = 'The Best New York Style Pizza Dough3'), (select ingredient_id from ingredients where name = 'all-purpose-flour'), 'all-purpose-flour');
insert into recipe_ingredients values ((select recipe_id from recipes where name = 'The Best New York Style Pizza Dough3'), (select ingredient_id from ingredients where name = 'water'), 'water');
insert into recipe_ingredients values ((select recipe_id from recipes where name = 'The Best New York Style Pizza Dough3'), (select ingredient_id from ingredients where name = 'dry-yeast'), 'dry-yeast');
insert into recipe_ingredients values ((select recipe_id from recipes where name = 'The Best New York Style Pizza Dough3'), (select ingredient_id from ingredients where name = 'salt'), 'salt');
insert into recipe_ingredients values ((select recipe_id from recipes where name = 'The Best New York Style Pizza Dough3'), (select ingredient_id from ingredients where name = 'sugar'), 'sugar');
insert into recipe_ingredients values ((select recipe_id from recipes where name = 'The Best New York Style Pizza Dough3'), (select ingredient_id from ingredients where name = 'olive oil'), 'olive oil');

insert into recipe_appliances values ((select appliance_id from appliances where name = 'Oven'), (select recipe_id from recipes where name = 'The Best New York Style Pizza Dough3'));















insert into recipes values 
(default, (select user_id from users where username = 'bj'), 'The Best Chocolate Chip Cookie Recipe Ever4', 'This is the best chocolate chip cookie recipe ever. No funny ingredients, no chilling time, etc. Just a simple, straightforward, amazingly delicious, doughy yet still fully cooked, chocolate chip cookie that turns out perfectly every single time! ', 'Preheat oven to 375 degrees F. Line a baking pan with parchment paper and set aside.
In a separate bowl mix flour, baking soda, salt, baking powder. Set aside.
Cream together butter and sugars until combined.
Beat in eggs and vanilla until fluffy.
Mix in the dry ingredients until combined.
Add 12 oz package of chocolate chips and mix well.
Roll 2-3 TBS (depending on how large you like your cookies) of dough at a time into balls and place them evenly spaced on your prepared cookie sheets. (alternately, use a small cookie scoop to make your cookies).
Bake in preheated oven for approximately 8-10 minutes. Take them out when they are just BARELY starting to turn brown.
Let them sit on the baking pan for 2 minutes before removing to cooling rack', 36, 1, 'https://cdn.discordapp.com/attachments/872641665314222100/963525692438478888/everydaychocolatechipcookies12-1-of-1.jpg');

insert into recipe_ingredients values ((select recipe_id from recipes where name = 'The Best Chocolate Chip Cookie Recipe Ever4'), (select ingredient_id from ingredients where name = 'salted butter'), 'salted butter');
insert into recipe_ingredients values ((select recipe_id from recipes where name = 'The Best Chocolate Chip Cookie Recipe Ever4'), (select ingredient_id from ingredients where name = 'granulated sugar'), 'granulated sugar');
insert into recipe_ingredients values ((select recipe_id from recipes where name = 'The Best Chocolate Chip Cookie Recipe Ever4'), (select ingredient_id from ingredients where name = 'light-brown-sugar'), 'light-brown-sugar');
insert into recipe_ingredients values ((select recipe_id from recipes where name = 'The Best Chocolate Chip Cookie Recipe Ever4'), (select ingredient_id from ingredients where name = 'vanilla extract'), 'granulated sugar');
insert into recipe_ingredients values ((select recipe_id from recipes where name = 'The Best Chocolate Chip Cookie Recipe Ever4'), (select ingredient_id from ingredients where name = 'egg'), 'egg');
insert into recipe_ingredients values ((select recipe_id from recipes where name = 'The Best Chocolate Chip Cookie Recipe Ever4'), (select ingredient_id from ingredients where name = 'all-purpose-flour'), 'all-purpose-flour');
insert into recipe_ingredients values ((select recipe_id from recipes where name = 'The Best Chocolate Chip Cookie Recipe Ever4'), (select ingredient_id from ingredients where name = 'baking powder'), 'baking powder');
insert into recipe_ingredients values ((select recipe_id from recipes where name = 'The Best Chocolate Chip Cookie Recipe Ever4'), (select ingredient_id from ingredients where name = 'fr:baking-soda'), 'fr:baking-soda');
insert into recipe_ingredients values ((select recipe_id from recipes where name = 'The Best Chocolate Chip Cookie Recipe Ever4'), (select ingredient_id from ingredients where name = 'sea salt'), 'sea salt');
insert into recipe_ingredients values ((select recipe_id from recipes where name = 'The Best Chocolate Chip Cookie Recipe Ever4'), (select ingredient_id from ingredients where name = 'semi-sweet-chocolate-chips'), 'semi-sweet-chocolate-chips');

insert into recipe_appliances values ((select appliance_id from appliances where name = 'Oven'), (select recipe_id from recipes where name = 'The Best Chocolate Chip Cookie Recipe Ever4'));


insert into recipes values 
(default, (select user_id from users where username = 'bj'), 'The Best New York Style Pizza Dough4', 'The best, authentic NY pizza dough recipe for making pizza dough at home. This is the best thin crust pizza ever! This recipe make four 14″ pizzas (about 2.5 to 3 lbs of dough).  You will never want take out again!', 'To mix the dough

    Place water in mixing bowl.
    In a separate bowl, mix salt and yeast (and sugar if using) into flour
    Combine flour/salt/yeast mixture into water and mix until all the flour has been incorporated.
    After flour has been totally incorporated, add oil and knead for about 4 to 5 minutes (see note)
    Test final dough temperature, which should ideally be between high 70s to low 80s (optional)

Diving the dough and letting it rise

    Divide dough into 4 equal pieces (using a digital scale if possible; each ball should weigh 11.5 oz [~326 grams]), shape into a ball, and place in greased, sealed quart-sized container or oiled/greased freezer bag and refrigerate overnight or up to 72 hours (After much experimenting, I have concluded that I like 3 days best but day 2 is good too).

Assembling and baking the pizzas

    The following day, remove your dough balls within 1 hour or less of baking and allow the dough to come to room temperature. (the dough will tend to blister more if the dough has not been allowed to come to room temperature however, I often bake coldish dough without problems, just some bubbling)
    In the meantime, place your pizza stone in oven and preheat at 550 degrees (depending on thickness of your stone and your oven’s power) for at least 1 hour
    Open each dough ball using care not to degas, transfer to a pre-floured pizza peel (or on parchment paper), and top with your favorite sauce, cheese, or other toppings.
    Transfer pizza from peel to oven or slide parchment paper onto preheated pizza pan/stone and bake for 4 to 6 minutes each until browned on top and cheese has melted but not burned.
    Enjoy!', 32, 7, 'https://cdn.discordapp.com/attachments/872641665314222100/963525584279994438/pizza.jpg');
	
insert into recipe_ingredients values ((select recipe_id from recipes where name = 'The Best New York Style Pizza Dough4'), (select ingredient_id from ingredients where name = 'all-purpose-flour'), 'all-purpose-flour');
insert into recipe_ingredients values ((select recipe_id from recipes where name = 'The Best New York Style Pizza Dough4'), (select ingredient_id from ingredients where name = 'water'), 'water');
insert into recipe_ingredients values ((select recipe_id from recipes where name = 'The Best New York Style Pizza Dough4'), (select ingredient_id from ingredients where name = 'dry-yeast'), 'dry-yeast');
insert into recipe_ingredients values ((select recipe_id from recipes where name = 'The Best New York Style Pizza Dough4'), (select ingredient_id from ingredients where name = 'salt'), 'salt');
insert into recipe_ingredients values ((select recipe_id from recipes where name = 'The Best New York Style Pizza Dough4'), (select ingredient_id from ingredients where name = 'sugar'), 'sugar');
insert into recipe_ingredients values ((select recipe_id from recipes where name = 'The Best New York Style Pizza Dough4'), (select ingredient_id from ingredients where name = 'olive oil'), 'olive oil');

insert into recipe_appliances values ((select appliance_id from appliances where name = 'Oven'), (select recipe_id from recipes where name = 'The Best New York Style Pizza Dough4'));









