Mutations::AddUser = GraphQL::Relay::Mutation.define do
  name 'AddUser'
  description 'Add a new user'

  return_field :user, Types::UserType

  input_field :name, !types.String

  resolve ->(obj, inputs, ctx) {
    user = User.new(inputs.to_h)
    user.save
    { user: user }
  }
end
