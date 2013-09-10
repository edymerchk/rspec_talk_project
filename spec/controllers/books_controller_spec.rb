require 'spec_helper'

describe BooksController do
  it 'works' do
    request.accept = "application/json"
    get :index, format: 'json'
    puts response.body.size
    json = JSON.parse(response.body)
    puts json
  end
end
