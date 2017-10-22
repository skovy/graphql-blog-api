Types::PostType = GraphQL::ObjectType.define do
  name 'Post'
  description 'A post on the blog'

  field :title, !types.String
  field :text, !types.String
  field :author, !Types::UserType
  field :comments, !types[Types::CommentType]
end
