require 'spec_helper'
require_relative '../../../../apps/web/controllers/albums/index'

describe Web::Controllers::Albums::Index do
  let(:action) { Web::Controllers::Albums::Index.new }
  let(:params) { Hash[] }
  let(:repository) { AlbumRepository.new }

  before do
    repository.clear

    @album = repository.create(title: 'The Razors Edge', author: 'AC/DC', year: 1990)
  end

  it 'is successful' do
    response = action.call(params)
    response[0].must_equal(200)
  end

  it 'exposes all albums' do
    action.call(params)
    action.exposures[:albums].must_equal([@album])
  end
end
