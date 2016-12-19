require 'spec_helper'
require_relative '../../../../apps/web/views/albums/new'

class NewAlbumParams < Hanami::Action::Params
  params do
    required(:album).schema do
      required(:title).filled(:str?)
      required(:author).filled(:str?)
      required(:year).filled(:int?)
    end
  end
end

describe Web::Views::Albums::New do
  let(:params) { NewAlbumParams.new(album: {}) }
  let(:exposures) { Hash[params: params] }
  let(:template) { Hanami::View::Template.new('apps/web/templates/albums/new.html.erb') }
  let(:view) { Web::Views::Albums::New.new(template, exposures) }
  let(:rendered) { view.render }

  it 'displays list of errors when params contains errors' do
    params.valid? # trigger validations

    rendered.must_include('There was a problem with your submission')
    rendered.must_include('Title is missing')
    rendered.must_include('Author is missing')
    rendered.must_include('Year is missing')
  end
end
