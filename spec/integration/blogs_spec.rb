# spec/integration/blogs_spec.rb
require 'swagger_helper'

describe 'Callback API' do

  path '/callbacks' do

    post 'Creates a blog' do
      tags 'Blogs'
      consumes 'application/json', 'applssication/xml'
      parameter name: :blog, in: :body, schema: {
        type: :object,
        properties: {
          title: { type: :string },
          content: { type: :string }
        },
        required: [ 'title', 'content' ]
      }

      response '201', 'blog created' do
        # let(:callback) { { title: 'foo', content: 'bar' } }
        run_test!
      end

    #   response '422', 'invalid request' do
    #     let(:blog) { { title: 'foo' } }
    #     run_test!
    #   end
    end
  end

#   path '/blogs/{id}' do

#     get 'Retrieves a blog' do
#       tags 'Blogs'
#       produces 'application/json', 'application/xml'
#       parameter name: :id, :in => :path, :type => :string

#       response '200', 'blog found' do
#         schema type: :object,
#           properties: {
#             id: { type: :integer },
#             title: { type: :string },
#             content: { type: :string }
#           },
#           required: [ 'id', 'title', 'content' ]

#         let(:id) { Blog.create(title: 'foo', content: 'bar').id }
#         run_test!
#       end

#       response '404', 'blog not found' do
#         let(:id) { 'invalid' }
#         run_test!
#       end

#       response '406', 'unsupported accept header' do
#         let(:'Accept') { 'application/foo' }
#         run_test!
#       end
#     end
#   end
end