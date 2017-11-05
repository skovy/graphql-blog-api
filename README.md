# GraphQL Blog API

This repository is a Rails 5 API for a GraphQL blog and client agnostic.

## Technologies

- [Rails 5](http://rubyonrails.org/)
- [PostgreSQL](https://www.postgresql.org/)
- [graphql-ruby](https://github.com/rmosolgo/graphql-ruby) - GraphQL-Ruby is a Ruby implementation of GraphQL.
- [graphiql](https://github.com/graphql/graphiql) - GraphiQL is an in-browser IDE for exploring GraphQL.
- [rack-cors](https://github.com/cyu/rack-cors) Rack Middleware for handling Cross-Origin Resource Sharing (CORS), which makes cross-origin AJAX possible.

## To Do

- [ ] Optics Agent - Optics Agent for GraphQL Monitoring

## Setup

- Clone the repository
  - `git clone git@github.com:Skovy/graphql-blog-api.git`
- Change to the GraphQL Blog API directory
  - `cd graphql-blog-api`
- Install the gem dependencies
  - `bundle install`
- Copy local environment variables and configure as necessary
  - `cp .env.example .env`
- Create and migrate the database
  - `rails db:migrate`
- Start the server
  - `foreman start`
- Play around with GraphiQL (`/graphiql`) or hit the GraphQL (`/graphql`) endpoint
