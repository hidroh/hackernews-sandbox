require 'sinatra'

$responses_base_dir = %-#{Dir.pwd}/responses/-
$dataset = 'default'

# change sandbox dataset
get '/_sandbox/:dataset' do |dataset|
  switch_dataset dataset
end

get '/v0/topstories.json' do
  status 200
  content_type :json
  request.path_info = '/v0/topstories'
  mock_response
end

get '/v0/newstories.json' do
  status 200
  content_type :json
  request.path_info = '/v0/topstories'
  mock_response
end

get '/v0/showstories.json' do
  status 200
  content_type :json
  request.path_info = '/v0/topstories'
  mock_response
end

get '/v0/askstories.json' do
  status 200
  content_type :json
  request.path_info = '/v0/topstories'
  mock_response
end

get '/v0/jobstories.json' do
  status 200
  content_type :json
  request.path_info = '/v0/topstories'
  mock_response
end

get '/v0/item/:id.json' do |id|
  status 200
  content_type :json
  request.path_info = '/v0/item'
  mock_response %/#{id}/
end

def switch_dataset dataset='default'
  $dataset = dataset
  dir_path = %-#{$responses_base_dir}#{dataset}-
  if File.exist? dir_path
    status 200
    %/Switch to '#{dir_path}' data set/
  else
    status 400
    %/Data set '#{dir_path}' not found/
  end
end

def mock_response json='default'
  dataset = $dataset
  dir_path = %-#{$responses_base_dir}#{dataset}#{request.path_info}/-
  file_path = %-#{dir_path}#{json}.json-
  file_path = %-#{dir_path}default.json- if not File.file? file_path
  File.open(file_path)
end
