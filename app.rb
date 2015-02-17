require 'sinatra'
require 'sinatra/json'
require 'json'

get '/texts' do
  result = `curl -s 'http://api.diffbot.com/v3/article?token=846be86562ff0fd57ca95c44e973ca15&url=#{params[:url]}'`
  STDERR.puts result
  result_obj = JSON.parse(result)
  result_ary = result_obj['objects'][0]['text'].split(/\n/)
  json result_ary
end

get '/keywords' do
    results = `curl -HContent-Type:application/json 'http://localhost:8080/nlp/service/nlp/processDocument/?apiKey=TST&lang=en' -d '#{quiddity input}' |  jq '.enrichments.keyPhrases | .[] | select(.relevance > 0.5) | .phrase'`
    results_ary = []
    results.split( /\n/ ).each do |e|
      e.gsub!(/"/, '')
      results_ary.push e
    end
    json results_ary
end

get '/results' do
    
end

def quiddity input
  sprintf '{
    "_quiddityType" : "document.Document",
    "id" : "2581774038",
    "body" : {
      "content" : {
      "_quiddityType" : "common.Text",
      "text" : "%s",
      "_quiddityVersion" : "1.0",
"type" : "plain"
},
"_quiddityType" : "document.DocumentBodyData",
"title" : {
"_quiddityType" : "common.Text",
"text" : "Facts in brief - Atlas Copco USA",
"_quiddityVersion" : "1.0",
"type" : "plain"
},
"_quiddityVersion" : "1.0",
"publishDate" : {
"_quiddityType" : "common.TimeWithTimezone",
"_quiddityVersion" : "1.0",
"date" : 1424208533000
}
},
"_quiddityVersion" : "1.0",
"metaData" : {
"_quiddityType" : "document.DocumentMetaData",
"_quiddityVersion" : "1.0",
"url" : "http://www.atlascopco.us/usus/atlascopcogroup/acinsummary/factsandfigures/"
}
}', input.gsub( /"/, '\"' )
end

def input
  "Every day, across the United States and around the world, products are manufactured, roads and buildings are constructed, holes are drilled, minerals are mined and tunnels are dug. At first mention this might seem like a collection of unrelated processes, but one company unites them Atlas Copco.  We are a world-leading provider of sustainable productivity solutions. Our Group serves customers with innovative compressors, vacuum solutions and air treatment systems, construction and mining equipment, power tools and assembly systems. We develop products and services focused on productivity, energy efficiency, safety and ergonomics. "
end
