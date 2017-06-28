use test

// //Inserts restaurant
// db.restaurants.insert({
//     address: {
//         building: 41,
//         street: "Seely Drive",
//         zipcode: "SE218QR"        
//     },
//     borough: "Lambeth",
//     cuisine: "Chinese",
//     name: "New Mayflower",
//     restaurant_id: 31000000    
// })

db.restaurants.find( //Find all restaurants where...
{//Define conditions
    borough: "Queens",
    cuisine: "Italian"
    //...Borough is "Queens"
    //grades: {$elemMatch:{grade: "A"}} //..."grades" contains a document where "grade" is "A"
    //"grades.grade": "A" //the same thing as above
    //"grades.score": {$gt: 30} //"grades" contains a document where "score" is greater than 30
},
{//Define what to show, 0 is dont show it, 1 is do
    _id: 0,
    cuisine: 1,
    borough: 1
    //grades: 1
},
{multi: true}
)//.sort({"grades.score": -1}).limit(2) //Add order by/limit statements, -1 is desc

// MONGO IMPORT COMMAND:
// mongoimport --db movielens --collection movies --drop --file C:\Users\Megal\Desktop\ExampleData\movielens_movies.json
