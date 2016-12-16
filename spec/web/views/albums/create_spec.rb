require 'spec_helper'
require_relative '../../../../apps/web/views/albums/create'

describe Web::Views::Albums::Create do
  let(:exposures) { Hash[foo: 'bar'] }
  let(:template) { Hanami::View::Template.new('apps/web/templates/albums/new.html.erb') }
  let(:view) { Web::Views::Albums::Create.new(template, exposures) }
  let(:rendered) { view.render }

  it 'exposes #foo' do
    view.foo.must_equal exposures.fetch(:foo)
  end
end
