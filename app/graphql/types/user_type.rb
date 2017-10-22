Types::UserType = GraphQL::ObjectType.define do
  name 'User'
  description 'A user on the blog: a poster, commenter and/or lurker'

  field :name, !types.String
  field :posts, !types[Types::PostType]
  field :comments, !types[Types::CommentType]
end
