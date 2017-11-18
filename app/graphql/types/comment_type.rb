Types::CommentType = GraphQL::ObjectType.define do
  name 'Comment'
  description 'A comment on a single post on the blog'

  field :id, types.ID
  field :createdAt, types.String, 'DateTime when the comment was created', property: :created_at
  field :text, !types.String, 'Text of the comment'
  field :post, !Types::PostType, 'Post the comment was made on'
  field :author, !Types::UserType, 'Author of the comment'

  field :errors, types[types.String], 'Reasons the comment couldn\'t be created or updated' do
    resolve ->(obj, args, ctx) { obj.errors.full_messages }
  end
end
