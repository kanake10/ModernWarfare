# frozen_string_literal: true

module Types
  class GunType < Types::BaseObject
    field :id, ID, null: false
    field :name, String
    field :image, String
    field :description, String
    field :real_life, String
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
