Types::QueryType = GraphQL::ObjectType.define do
  name 'Query'
  description 'Query blog data'

  field :post do
    type Types::PostType
    argument :id, !types.ID
    description 'Find a Post by ID'

    resolve ->(obj, args, ctx) { Post.find(args['id']) }
  end

  field :posts do
    type types[Types::PostType]
    description 'Get the list of most recent posts'

    resolve ->(obj, args, ctx) { Post.order(created_at: :desc).limit(10) }
  end

  field :comment do
    type Types::CommentType
    argument :id, !types.ID
    description 'Find a Comment by ID'

    resolve ->(obj, args, ctx) { Comment.find(args['id']) }
  end

  field :user do
    type Types::UserType
    argument :id, !types.ID
    description 'Find a User by ID'

    resolve ->(obj, args, ctx) { User.find(args['id']) }
  end
end
