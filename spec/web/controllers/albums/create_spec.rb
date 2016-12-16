require 'spec_helper'
require_relative '../../../../apps/web/controllers/albums/create'

describe Web::Controllers::Albums::Create do
  let(:action) { Web::Controllers::Albums::Create.new }
  let(:params) { Hash[album: {title: 'The Razors Edge', author: 'AC/DC', year: 1990}] }

  before do
    AlbumRepository.new.clear
  end

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
