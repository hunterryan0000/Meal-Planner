insert into recipes values 
(default, (select user_id from users where username = 'Matthew'), 'The Best Chocolate Chip Cookie Recipe Ever1', 'This is the best chocolate chip cookie recipe ever. No funny ingredients, no chilling time, etc. Just a simple, straightforward, amazingly delicious, doughy yet still fully cooked, chocolate chip cookie that turns out perfectly every single time! ', 'Preheat oven to 375 degrees F. Line a baking pan with parchment paper and set aside.
In a separate bowl mix flour, baking soda, salt, baking powder. Set aside.
Cream together butter and sugars until combined.
Beat in eggs and vanilla until fluffy.
Mix in the dry ingredients until combined.
Add 12 oz package of chocolate chips and mix well.
Roll 2-3 TBS (depending on how large you like your cookies) of dough at a time into balls and place them evenly spaced on your prepared cookie sheets. (alternately, use a small cookie scoop to make your cookies).
Bake in preheated oven for approximately 8-10 minutes. Take them out when they are just BARELY starting to turn brown.
Let them sit on the baking pan for 2 minutes before removing to cooling rack', 36, 1, 'https://cdn.discordapp.com/attachments/872641665314222100/963525692438478888/everydaychocolatechipcookies12-1-of-1.jpg');

insert into recipe_ingredients values ((select recipe_id from recipes where name = 'The Best Chocolate Chip Cookie Recipe Ever1'), (select ingredient_id from ingredients where name = 'salted butter'), 'salted butter');
insert into recipe_ingredients values ((select recipe_id from recipes where name = 'The Best Chocolate Chip Cookie Recipe Ever1'), (select ingredient_id from ingredients where name = 'granulated sugar'), 'granulated sugar');
insert into recipe_ingredients values ((select recipe_id from recipes where name = 'The Best Chocolate Chip Cookie Recipe Ever1'), (select ingredient_id from ingredients where name = 'light-brown-sugar'), 'light-brown-sugar');
insert into recipe_ingredients values ((select recipe_id from recipes where name = 'The Best Chocolate Chip Cookie Recipe Ever1'), (select ingredient_id from ingredients where name = 'vanilla extract'), 'granulated sugar');
insert into recipe_ingredients values ((select recipe_id from recipes where name = 'The Best Chocolate Chip Cookie Recipe Ever1'), (select ingredient_id from ingredients where name = 'egg'), 'egg');
insert into recipe_ingredients values ((select recipe_id from recipes where name = 'The Best Chocolate Chip Cookie Recipe Ever1'), (select ingredient_id from ingredients where name = 'all-purpose-flour'), 'all-purpose-flour');
insert into recipe_ingredients values ((select recipe_id from recipes where name = 'The Best Chocolate Chip Cookie Recipe Ever1'), (select ingredient_id from ingredients where name = 'baking powder'), 'baking powder');
insert into recipe_ingredients values ((select recipe_id from recipes where name = 'The Best Chocolate Chip Cookie Recipe Ever1'), (select ingredient_id from ingredients where name = 'fr:baking-soda'), 'fr:baking-soda');
insert into recipe_ingredients values ((select recipe_id from recipes where name = 'The Best Chocolate Chip Cookie Recipe Ever1'), (select ingredient_id from ingredients where name = 'sea salt'), 'sea salt');
insert into recipe_ingredients values ((select recipe_id from recipes where name = 'The Best Chocolate Chip Cookie Recipe Ever1'), (select ingredient_id from ingredients where name = 'semi-sweet-chocolate-chips'), 'semi-sweet-chocolate-chips');

insert into recipe_appliances values ((select appliance_id from appliances where name = 'Oven'), (select recipe_id from recipes where name = 'The Best Chocolate Chip Cookie Recipe Ever1'));


insert into recipes values 
(default, (select user_id from users where username = 'Matthew'), 'The Best New York Style Pizza Dough1', 'The best, authentic NY pizza dough recipe for making pizza dough at home. This is the best thin crust pizza ever! This recipe make four 14″ pizzas (about 2.5 to 3 lbs of dough).  You will never want take out again!', 'To mix the dough

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
	
insert into recipe_ingredients values ((select recipe_id from recipes where name = 'The Best New York Style Pizza Dough1'), (select ingredient_id from ingredients where name = 'all-purpose-flour'), 'all-purpose-flour');
insert into recipe_ingredients values ((select recipe_id from recipes where name = 'The Best New York Style Pizza Dough1'), (select ingredient_id from ingredients where name = 'water'), 'water');
insert into recipe_ingredients values ((select recipe_id from recipes where name = 'The Best New York Style Pizza Dough1'), (select ingredient_id from ingredients where name = 'dry-yeast'), 'dry-yeast');
insert into recipe_ingredients values ((select recipe_id from recipes where name = 'The Best New York Style Pizza Dough1'), (select ingredient_id from ingredients where name = 'salt'), 'salt');
insert into recipe_ingredients values ((select recipe_id from recipes where name = 'The Best New York Style Pizza Dough1'), (select ingredient_id from ingredients where name = 'sugar'), 'sugar');
insert into recipe_ingredients values ((select recipe_id from recipes where name = 'The Best New York Style Pizza Dough1'), (select ingredient_id from ingredients where name = 'olive oil'), 'olive oil');

insert into recipe_appliances values ((select appliance_id from appliances where name = 'Oven'), (select recipe_id from recipes where name = 'The Best New York Style Pizza Dough1'));
















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
(default, (select user_id from users where username = 'Marcello'), 'The Best Chocolate Chip Cookie Recipe Ever4', 'This is the best chocolate chip cookie recipe ever. No funny ingredients, no chilling time, etc. Just a simple, straightforward, amazingly delicious, doughy yet still fully cooked, chocolate chip cookie that turns out perfectly every single time! ', 'Preheat oven to 375 degrees F. Line a baking pan with parchment paper and set aside.
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
(default, (select user_id from users where username = 'Marcello'), 'The Best New York Style Pizza Dough4', 'The best, authentic NY pizza dough recipe for making pizza dough at home. This is the best thin crust pizza ever! This recipe make four 14″ pizzas (about 2.5 to 3 lbs of dough).  You will never want take out again!', 'To mix the dough

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









