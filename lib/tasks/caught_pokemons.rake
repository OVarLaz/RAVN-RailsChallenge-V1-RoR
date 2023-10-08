# frozen_string_literal: true

namespace :pokemons do
  # this  rake task should run every 7 days
  desc 'Caught pokemons in the last seven day'
  task caught_last_seven_days: :environment do
    User.all.each do |user|
      next if user.caught_last_seven_days?

      puts 'send email'
      puts user.name
    end
  end
end
