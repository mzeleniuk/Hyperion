require 'spec_helper'
require_relative '../../../../apps/web/views/albums/index'

describe Web::Views::Albums::Index do
  let(:exposures) { Hash[foo: 'bar'] }
  let(:template)  { Hanami::View::Template.new('apps/web/templates/albums/index.html.erb') }
  let(:view)      { Web::Views::Albums::Index.new(template, exposures) }
  let(:rendered)  { view.render }

  it 'exposes #foo' do
    view.foo.must_equal exposures.fetch(:foo)
  end
end
