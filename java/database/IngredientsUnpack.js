const data = require('./ingredients.json');
//console.log(data);
let output = "";
for(let object of data.tags){
    //console.log(`insert into ingredients values (default, "${object.name}");`);
    let temp  = object.name.replace("'", "").toLowerCase();
    if(object.name.includes("'")){
        console.log(temp);
    }
    if(object.name == ""){

    } else {
        output+=`insert into ingredients values (default, '${temp}');\n`
    }
}
//console.log(output);

const fs = require('fs');
fs.writeFile('./ingredients.sql', output, err => {
    if(err) {
        console.log(err)
        return
    }
})