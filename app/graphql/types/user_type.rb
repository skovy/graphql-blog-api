Types::UserType = GraphQL::ObjectType.define do
  name 'User'
  description 'A user of the blog: a poster, commenter and/or lurker'

  field :id, types.ID
  field :name, !types.String, 'The user\'s name'
  field :posts, !types[Types::PostType], 'Posts created by the user'
  field :comments, !types[Types::CommentType], 'Comments created by the user'

  field :errors, types[types.String], 'Reasons the user couldn\'t be created or updated' do
    resolve ->(obj, args, ctx) { obj.errors.full_messages }
  end
end
