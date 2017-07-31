connect = require('connect')
fs = require('fs')
ejs = require('ejs')
db = require('mongojs').connect('DB_Godffs', ['TB_BOARD'])
get(path, cd) ->
  (req, res, next) ->
    if(req.method != 'GET' || req.url != path)
      next()
    cd(req, res, next)
app = connect()
  .use(get('/', (req, res, next) ->
    fs.readFile('views/input.html', 'utf8', (error, data) ->
    db.TB_BOARD.find({} , name : 1, (error, cursor) ->
      res.writeHead(200, 'Content-Type : text/html')
      res.end(ejs.render(data, data : cursor))

    ))
)).listen(3000, ->
  console.log("서버 연결 : 3000")
)
connect = require('connect')
fs = require('fs')
ejs = require('ejs')
db = require('mongojs').connect('memo', ['TB_DATA'])
get(path, cd) ->
  (req, res, next) ->
    if(req.method != 'GET' || req.url != path)
      next()
    cd(req, res, next)
app = connect()
  .use(get('/', (req, res, next) ->
    fs.readFile('views/input.html', 'utf8', (error, data) ->
      db.TB_BOARD.find({} , name: 1, (error, cursor) ->
        res.writeHead(200, 'Content-Type' : 'text/html')
        res.end(ejs.render(data, data : cursor))
      )
    )
)).listen(3000, ->
  console.log("서버 연결 : 3000")
)