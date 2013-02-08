request = require "request"

jenkins = "http://localhost:9999"
jsonUrl = jenkins + "/api/json"

request.get jsonUrl, (err, res, body) ->
  json = JSON.parse(body)
  for job in json.jobs
    console.log job.name