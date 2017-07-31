Client = require('mongodb').MongoClient
Client.connect('mongodb://localhost:27017/school', (error, db) ->
  if(error)
    query = gender:'M'
    cursor = db.collection('student').find(query)
    cursor.each((err,doc)->
    if(err)
      console.log(err)
    else
      if(doc != null)
        console.log(doc)
    )
    db.close()
)