Client = require('mongodb').MongoClient
Client.connect('mongodb://localhost:27017/school', (error, db) ->
  if(error)
    console.log(error)
  else
    michael = name : 'Michael', age : 15, gender : 'M'
    db.collection('student').insert(michael)
    db.close()
)
