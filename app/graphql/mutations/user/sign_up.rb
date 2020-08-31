module Mutations
  module User
    class SignUp < GraphQL::Schema::Mutation
      null true
      description 'Sign up for users'
      argument :attributes, Types::UserInputType, required: true
      payload_type Types::UserType

      def resolve(attributes:)
        ::User.create(attributes.to_kwargs)
      end
    end
  end
end
