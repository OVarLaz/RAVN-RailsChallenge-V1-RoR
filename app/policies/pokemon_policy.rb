# frozen_string_literal: true

class PokemonPolicy
  attr_reader :user, :record

  def initialize(user, record)
    @user = user
    @record = record
  end

  def index?
    user.admin? || user.trainer?
  end
end
