require 'spec_helper'
require_relative '../../../../apps/web/controllers/albums/create'

describe Web::Controllers::Albums::Create do
  let(:action) { Web::Controllers::Albums::Create.new }

  before do
    AlbumRepository.new.clear
  end

  describe 'with valid params' do
    let(:params) { Hash[album: {title: 'The Razors Edge', author: 'AC/DC', year: 1990}] }

    it 'creates a new album' do
      action.call(params)

      action.album.id.wont_be_nil
      action.album.title.must_equal params[:album][:title]
    end

    it 'redirects the user to the albums listing' do
      response = action.call(params)

      response[0].must_equal(302)
      response[1]['Location'].must_equal '/albums'
    end
  end

  describe 'with invalid params' do
    let(:params) { Hash[album: {}] }

    it 're-renders the albums#new view' do
      response = action.call(params)
      response[0].must_equal(422)
    end

    it 'sets errors attribute accordingly' do
      response = action.call(params)
      response[0].must_equal(422)

      action.params.errors[:album][:title].must_equal ['is missing']
      action.params.errors[:album][:author].must_equal ['is missing']
      action.params.errors[:album][:year].must_equal ['is missing']
    end
  end
end
