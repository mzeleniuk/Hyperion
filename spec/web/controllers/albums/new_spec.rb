require 'spec_helper'
require_relative '../../../../apps/web/controllers/albums/new'

describe Web::Controllers::Albums::New do
  let(:action) { Web::Controllers::Albums::New.new }
  let(:params) { Hash[] }

  it 'is successful' do
    response = action.call(params)
    response[0].must_equal(200)
  end
end
