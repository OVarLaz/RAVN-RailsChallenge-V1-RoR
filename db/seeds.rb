Pokemon.destroy_all

Pokemon.create!([{
                  name: 'pikachu',
                  main_technique: 'Thunder Shock',
                  element_type: 4,
                  description:
     "Pikachu (ピカチュウ, Pikachuu) is an Electric-type Pokémon introduced in Generation I. Pikachu is renowned for being the most well-known and recognizable Pokémon. Over the years, Pikachu has become so popular that it serves as the Pokémon franchise mascot. It is the Version Mascot and First partner Pokémon for the game Pokémon Yellow and its remake, Pokémon: Let's Go, Pikachu!. It is also well known from the anime, where Ash Ketchum, the former protagonist, owns a Pikachu.\nIt evolves from Pichu when leveled up with high friendship and evolves into Raichu when exposed to a Thunder Stone. When in Alola (Pokémon Sun and Moon and Pokémon Ultra Sun and Ultra Moon), it evolves into Alolan Raichu through exposure to a Thunder Stone. It also has a Gigantamax form, and can be found in Cramorant's Gorging Form.",
                  image: 'https://static.wikia.nocookie.net/pokemon/images/0/0d/025Pikachu.png/revision/latest/scale-to-width-down/1000?cb=20200620223403'
                },
                 {
                   name: 'Bulbasaur',
                   main_technique: 'Vine Whip',
                   element_type: 3,
                   description:
                   'Bulbasaur (フシギダネ, Fushigidane) is a Grass/Poison-type Pokémon introduced in Generation I. It is one of the three First partner Pokémon that can be chosen in the Kanto region.',
                   image: 'https://static.wikia.nocookie.net/pokemon/images/2/21/001Bulbasaur.png/revision/latest?cb=20200620223551'
                 },
                 {
                   name: 'Charmander',
                   main_technique: 'Fire Red',
                   element_type: 1,
                   description:
                   "Charmander (ヒトカゲ, Hitokage) is a Fire-type Pokémon introduced in Generation I\nIt evolves into Charmeleon starting at level 16, which evolves into Charizard starting at level 36.\n\nAlong with Bulbasaur and Squirtle, Charmander is one of three starter Pokémon of Kanto available at the beginning of Pokémon Red, Green, Blue, FireRed, and LeafGreen.",
                   image: ''
                 },
                 {
                   name: 'Ivysaur',
                   main_technique: 'Growl',
                   element_type: 3,
                   description:
                   'Ivysaur (フシギソウ, Fushigisou) is a Grass/Poison Pokémon introduced in Generation I. It evolves from Bulbasaur starting at level 16 and evolves into Venusaur starting at level 32.',
                   image: 'https://static.wikia.nocookie.net/pokemon/images/7/73/002Ivysaur.png/revision/latest?cb=20140328190847'
                 },
                 {
                   name: 'Venusaurus',
                   main_technique: 'Floral Torm',
                   element_type: 3,
                   description:
                   'Venusaurus (フシギバナ, Fushigibana), or simply Venusaur, is a Grass/Poison-type Pokémon. It is the mascot for Pokémon Green and Pokémon LeafGreen and the final form of Bulbasaur.',
                   image: 'https://static.wikia.nocookie.net/pokemon/images/a/ae/003Venusaur.png/revision/latest/scale-to-width-down/1000?cb=20200731133335'
                 }])

p "There are #{Pokemon.count} pokemons"

User.destroy_all

User.create!([{
               name: 'Admin',
               email: 'admin@admin.com',
               password: '123456',
               role: 0
             },
              {
                name: 'Trainer',
                email: 'trainer@trainer.com',
                password: '123456',
                role: 1
              }])

10.times do |_index|
  User.create!(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: Faker::Internet.password,
    role: 1
  )
end

p "There are #{User.count} trainees"
