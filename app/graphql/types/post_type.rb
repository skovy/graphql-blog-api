Types::PostType = GraphQL::ObjectType.define do
  name 'Post'
  description 'A post on the blog'

  field :id, types.ID
  field :title, !types.String, 'Title of the post'
  field :text, !types.String, 'Text of the post'
  field :author, !Types::UserType, 'Author of the post'
  field :comments, !types[Types::CommentType], 'Comments on the post'

  field :errors, types[types.String], 'Reasons the post couldn\'t be created or updated' do
    resolve ->(obj, args, ctx) { obj.errors.full_messages }
  end
end
