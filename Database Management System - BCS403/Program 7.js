// Program-7: 
 
// Install an Open Source NoSQL Data base MangoDB & perform basic 
// CRUD(Create, Read,Update & Delete) operations. Execute MangoDB basic 
// Queries using CRUD operations.

// Insert(Create) Operation :-

// One
db.unity.insertOne({name:"Hemanth"});

// Many
db.unity.insertMany([{name:"Alok"},{age:"20"},{place:"UK"}]);

// Read Operation :-

db.unity.find();

// Update Operation :-

// One
db.unity.updateOne({name:"Hemanth"},{$set: {name:"Rolex"}});

// Many
db.unity.updateMany({ },{$set:{name:"Akil",age:"25"}});

// Delete Operation :-
db.unity.deleteOne({name:"Rolex"});