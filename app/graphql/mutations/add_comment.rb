Mutations::AddComment = GraphQL::Relay::Mutation.define do
  name 'AddComment'
  description 'Add a new comment'

  return_field :comment, Types::CommentType

  input_field :text, !types.String
  input_field :user_id, !types.ID
  input_field :post_id, !types.ID

  resolve ->(obj, inputs, ctx) {
    comment = Comment.new(inputs.to_h)
    comment.save
    { comment: comment }
  }
end
