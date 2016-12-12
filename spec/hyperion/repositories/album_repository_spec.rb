require 'spec_helper'

describe AlbumRepository do
  it 'can be initialised with attributes' do
    repository = AlbumRepository.new
    album = repository.create(title: 'Suicide Squad: The Album', author: 'Various Artists', year: 2016)

    repository.find(album.id).must_equal(album)
  end
end
