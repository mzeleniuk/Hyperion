require 'features_helper'

describe 'List albums' do
  let(:repository) { AlbumRepository.new }

  before do
    repository.clear

    repository.create(title: 'Suicide Squad: The Album', author: 'Various Artists', year: 2016)
    repository.create(title: 'Back In Black', author: 'AC/DC', year: 1980)
  end

  it 'displays each album on the page' do
    visit '/albums'

    within '#albums' do
      assert page.has_css?('.album', count: 2), 'Expected to find 2 albums'
    end
  end
end
