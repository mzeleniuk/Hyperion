require 'spec_helper'
require_relative '../../../../apps/web/views/albums/index'

describe Web::Views::Albums::Index do
  let(:exposures) { Hash[albums: []] }
  let(:template) { Hanami::View::Template.new('apps/web/templates/albums/index.html.erb') }
  let(:view) { Web::Views::Albums::Index.new(template, exposures) }
  let(:rendered) { view.render }

  it 'exposes #albums' do
    view.albums.must_equal exposures.fetch(:albums)
  end

  describe 'when there are no albums' do
    it 'shows a text message' do
      rendered.must_include('<p>There are no albums yet.</p>')
    end
  end

  describe 'when there are albums' do
    let(:album1) { Album.new(title: 'Cold Altair', author: 'The Hardkiss', year: 2015) }
    let(:album2) { Album.new(title: 'The Razors Edge', author: 'AC/DC', year: 1990) }
    let(:exposures) { Hash[albums: [album1, album2]] }

    it 'lists them all' do
      rendered.scan(/class="album"/).count.must_equal(2)
      rendered.must_include('Cold Altair')
      rendered.must_include('The Razors Edge')
    end

    it 'hides the text message' do
      rendered.wont_include('<p>There are no albums yet.</p>')
    end
  end
end
