Client = require('mongodb').MongoClient
Client.connect('mongodb://localhost:27017/school', (error, db) ->
  if(error)
    console.log(error)
  else
    jordan = name : 'Jordan', age:16, gender:'M'
    amanda = name:'Amanda', age:17, gender:'F'
    jessica = name : 'jessica', age:15, gender:'F'
    james = name : 'James', age:19, gender:'M'
    catherine = name : 'Catherine', age:18, gender:'F'
    db.collection('student').insertMany([jordan, amanda, jessica, james, catherine])
    db.close()
)