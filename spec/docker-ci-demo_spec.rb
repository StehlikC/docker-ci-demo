ENV['RACK_ENV'] = 'test'

require 'docker-ci-demo'
require 'rspec'
require 'rack/test'

describe 'Docker CI Demo' do
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  it 'says hello' do
    get '/'

    expect(last_response).to be_ok
    expect(last_response.body).to eq("Hello, Docker!")
  end
end
