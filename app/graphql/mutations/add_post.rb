Mutations::AddPost = GraphQL::Relay::Mutation.define do
  name 'AddPost'
  description 'Add a new post'

  return_field :post, Types::PostType

  input_field :title, !types.String, 'Title of the post'
  input_field :text, !types.String
  input_field :user_id, !types.ID

  resolve ->(obj, inputs, ctx) {
    post = Post.new(inputs.to_h)
    post.save
    { post: post }
  }
end
