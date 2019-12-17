Then(/^User compares the response with (.*)$/) do |file|
  #read the json data
  json_FilePath = Dir.pwd + '/' + file
  data = File.read(json_FilePath)
   exp_data = JSON.parse(data)
  # get last json response and compare 2 jsons
  assert_equal(exp_data,$lastJsonResponse)
end