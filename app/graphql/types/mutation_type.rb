Types::MutationType = GraphQL::ObjectType.define do
  name 'Mutation'
  description 'Mutate blog data'

  field :addPost, Mutations::AddPost.field
  field :addUser, Mutations::AddUser.field
end
