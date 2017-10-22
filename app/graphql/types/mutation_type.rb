Types::MutationType = GraphQL::ObjectType.define do
  name 'Mutation'
  description 'Mutate blog data'

  field :addComment, Mutations::AddComment.field
  field :addPost, Mutations::AddPost.field
  field :addUser, Mutations::AddUser.field
end
