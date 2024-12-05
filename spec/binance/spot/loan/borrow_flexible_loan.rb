# frozen_string_literal: true

require 'spec_helper'

RSpec.describe Binance::Spot::Convert, '#borrow_flexible_loan' do
  let(:path) { '/sapi/v2/loan/flexible/borrow' }
  let(:body) { fixture('response.json') }
  let(:status) { 200 }

  before do
    mocking_signature_and_ts(**params)
    stub_binance_sign_request(:post, path, status, body, params)
  end

  context 'validation' do
    where(:params) do
      [
        { loanCoin: '', collateralCoin: 'BNB', loanAmount: 1.0 },
        { loanCoin: 'BUSD', collateralCoin: '', loanAmount: 1.0 }
      ]
    end
    with_them do
      it 'should raise validation error without mandatory params' do
        expect { spot_client_signed.borrow_flexible_loan(**params) }.to raise_error(Binance::RequiredParameterError)
      end
    end
  end

  context 'with params' do
    let(:params) { { loanCoin: 'BUSD', collateralCoin: 'BNB', loanAmount: 1.0 } }
    it 'should borrow Flexible Loan' do
      spot_client_signed.borrow_flexible_loan(**params)
      expect(send_a_request_with_signature(:post, path, params)).to have_been_made
    end
  end
end
