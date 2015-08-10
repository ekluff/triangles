require('sinatra')
require('sinatra/reloader')
require('./lib/triangles')
also_reload('lib/**/*.rb')

get ('/') do
  erb(:index)
end

get('/result') do
  @triangle = Triangle.new(params.fetch('SideA').to_i, params.fetch('SideB').to_i, params.fetch('SideC').to_i)
  @triangle_type = @triangle.triangles?
  erb(:result)
end
