require 'spec_helper'
require_relative '../../../../apps/web/views/pages/about'

describe Web::Views::Pages::About do
  let(:exposures) { Hash[] }
  let(:template) { Hanami::View::Template.new('apps/web/templates/pages/about.html.erb') }
  let(:view) { Web::Views::Pages::About.new(template, exposures) }
  let(:rendered) { view.render }

  it 'shows a title' do
    rendered.must_include('About Hyperion')
    rendered.must_include('Hi!')
  end
end
