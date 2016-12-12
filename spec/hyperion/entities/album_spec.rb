require 'spec_helper'

describe Album do
  it 'can be initialised with attributes' do
    album = Album.new(title: 'Cold Altair', author: 'The Hardkiss', year: 2015)

    album.title.must_equal('Cold Altair')
  end
end
