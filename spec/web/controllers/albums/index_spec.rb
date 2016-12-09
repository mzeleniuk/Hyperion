require 'spec_helper'
require_relative '../../../../apps/web/controllers/albums/index'

describe Web::Controllers::Albums::Index do
  let(:action) { Web::Controllers::Albums::Index.new }
  let(:params) { Hash[] }

  it 'is successful' do
    response = action.call(params)
    response[0].must_equal 200
  end
end
