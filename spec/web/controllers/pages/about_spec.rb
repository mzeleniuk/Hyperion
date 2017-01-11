require 'spec_helper'
require_relative '../../../../apps/web/controllers/pages/about'

describe Web::Controllers::Pages::About do
  let(:action) { Web::Controllers::Pages::About.new }
  let(:params) { Hash[] }

  it 'is successful' do
    response = action.call(params)
    response[0].must_equal(200)
  end
end
