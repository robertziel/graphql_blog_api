module Types
  class UserType < BaseModel
    field :name, String, null: false
    field :first_name, String, null: false
    field :last_name, String, null: false
    field :email, String, null: true
    field :token, String, null: false
  end
end
