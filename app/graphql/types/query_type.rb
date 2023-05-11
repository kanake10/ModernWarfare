module Types
  class QueryType < Types::BaseObject
    # Users
    field :guns, [Types::GunType], null: false
    def guns
      Gun.all
    end

    field :guns, Types::GunType, null: false do
      argument :id, ID, required: true
    end
    def gun(id:)
      Gun.find(id)
    end
  end
end