Types::CommentType = GraphQL::ObjectType.define do
  name 'Comment'
  description 'A comment on a single post on the blog'

  field :id, types.ID
  field :text, !types.String, 'Text of the comment'
  field :post, !Types::PostType, 'Post the comment was made on'
  field :author, !Types::UserType, 'Author of the comment'

  field :errors, types[types.String], 'Reasons the user couldn\'t be created or updated' do
    resolve ->(obj, args, ctx) { obj.errors.full_messages }
  end
end
