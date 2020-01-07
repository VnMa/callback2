# frozen_string_literal: true

require 'swagger_helper'

RSpec.describe 'app/controllers/callbacks', type: :request do
  path '/callbacks' do
    get 'List all callbacks' do
      tags 'callback list'
      consumes 'application/json', 'application/xml'

      response '201', 'callback created' do
        run_test!
      end

      response '422', 'invalid request' do
        run_test!
      end
    end

    post 'Create new callback' do
        tags 'callback create'

        produces 'application/json', 'application/xml'
        # parameter controller: "receive_callback", contract_id: 123, contract_content: "ct content"
        parameter notify_url: "http://example.com"

        response '201', 'callback created' do
            run_test!
        end

        response '422', 'invalid request' do
            run_test!
        end
    end

  end
end
