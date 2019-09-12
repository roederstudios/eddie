# frozen_string_literal: true

require 'rails_helper'

describe Types::QueryType do
  it 'loads posts by ID' do
    query = <<-GRAPHQL
      query {
        testField
      }
    GRAPHQL

    result = EddieApiSchema.execute(query)

    expect(result['data']['testField']).to eq('Hello World!')
  end
end
