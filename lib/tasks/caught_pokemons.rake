# frozen_string_literal: true

namespace :pokemons do
  # this  rake task should run every 7 days
  # using terraform with .tf files config
  desc 'Caught pokemons in the last seven day'
  task caught_last_seven_days: :environment do
    User.all.each do |user|
      next if user.caught_last_seven_days?

      UserMailer.with(user_data: user).miss_caught_last_seven_days_pokemon.deliver_later
    end
  end
end
