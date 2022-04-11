const data = `Air fryer
Bachelor griller
Barbecue grill
Beehive oven
Brasero (heater)
Brazier
Bread machine
Burjiko
Butane torch
Chapati maker
Cheesemelter
Chocolatera
Chorkor oven
Clome oven
Comal (cookware)
Combi steamer
Communal oven
Convection microwave
Convection oven
Corn roaster
Crepe maker
Deep fryer
Earth oven
Electric cooker
Energy regulator
Espresso machine
Field kitchen
Fire pot
Flattop grill
Food steamer
Fufu Machine
Griddle
Halogen oven
Haybox
Hibachi
Horno
Hot box (appliance)
Hot plate
Instant Pot
Kamado
Kitchener range
Kujiejun
Kyoto box
Makiyakinabe
Masonry oven
Mess kit
Microwave oven
Multicooker
Oven
Pancake machine
Panini sandwich grill
Popcorn maker
Pressure cooker
Pressure fryer
Reflector oven
Remoska
Rice cooker
Rice polisher
Roasting jack
Rocket mass heater
Rotimatic
Rotisserie
Russian oven
Sabbath mode
Salamander broiler
Samovar
Sandwich toaster
Self-cleaning oven
Shichirin
Slow cooker
Solar cooker
Sous-vide cooker
Soy milk maker
Stove
Susceptor
Tabun oven
Tandoor
Tangia
Thermal immersion circulator
Toaster and toaster ovens
Turkey fryer
Vacuum fryer
Waffle iron
Wet grinder
Wood-fired oven`

let output = "";
for(let object of data.split("\n")){
    output += `insert into appliances values (default, '${object}');\n`
}

const fs = require('fs');
fs.writeFile('./appliances.sql', output, err => {
    if(err) {
        console.log(err)
        return
    }
})