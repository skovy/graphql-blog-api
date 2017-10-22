Types::CommentType = GraphQL::ObjectType.define do
  name 'Comment'
  description 'A comment on a single post on the blog'

  field :id, !types.ID
  field :text, !types.String
  field :post, !Types::PostType
  field :author, !Types::UserType
end
