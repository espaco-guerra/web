require_relative '../spec_helper.rb'

RSpec.describe GamesController, type: :controller do
  it 'should have #new' do
    get :new

    expect(response).to have_http_status(:success)
  end
end
