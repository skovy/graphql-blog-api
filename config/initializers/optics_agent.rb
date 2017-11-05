optics_agent = OpticsAgent::Agent.new
optics_agent.configure { schema GraphQLBlog }

Rails.application.config.middleware.use optics_agent.rack_middleware
