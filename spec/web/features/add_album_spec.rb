require 'features_helper'

describe 'Add an album' do
  after do
    AlbumRepository.new.clear
  end

  it 'can create a new album' do
    visit '/albums/new'

    within 'form#album-form' do
      fill_in 'Title', with: 'A Wonderful Life'
      fill_in 'Author', with: 'Lara Fabian'
      fill_in 'Year', with: '2004'

      click_button 'Create'
    end

    current_path.must_equal('/albums')
    assert page.has_content?('A Wonderful Life')
  end
end
