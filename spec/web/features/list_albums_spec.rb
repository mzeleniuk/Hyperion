require 'features_helper'

describe 'List albums' do
  it 'displays each album on the page' do
    visit '/albums'

    within '#albums' do
      assert page.has_css?('.album', count: 2), 'Expected to find 2 albums'
    end
  end
end
