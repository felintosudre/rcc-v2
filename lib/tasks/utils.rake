namespace :utils do
  desc "Populando banco"
  task seed: :environment do
    puts ''
    puts 'INÍCIO UTILS:SEED'
    puts '>>>>>>> Gerando Incrições'
    50.times do |i|
      Inscription.create!(
        full_name: Faker::Name.name,
        birthday: Faker::Date.between('1950-01-01', '2000-12-31'),
        mother: Faker::Name.name,
        father: Faker::Name.name,
        sex: "M",
        shirt_size: "M",
        baptism: "1",
        first_eucharist: "1",
        chrism: "1",
        follow_me: "1",
        revive: "1",
        other_meeting: "Não",
        pastoral: "Não",
        health_problem: "Não",
        hp_describe: "Não",
        medication: Faker::Time.forward(5, :morning),
        holy_mass: "1"
        )
    end
    puts '<<<<<<< Incrições Geradas'

    puts '>>>>>>> Gerando Endereços'
    Inscription.all.each do |incricao|
      Address.create(
        street: Faker::Address.street_address,
        district: Faker::Address.street_name,
        city: Faker::Address.city,
        state: Faker::Address.state_abbr,
        zip_code: Faker::Address.zip_code,
        inscription: incricao
        )
    end
    puts '<<<<<<< Endereços Gerados'

    puts '>>>>>>> Gerando Emails'
    Inscription.all.each do |inscricao|
      Random.rand(0..2).times do |i|
        Email.create(
          email: Faker::Internet.email,
          inscription: inscricao
          )
      end
    end
    puts '<<<<<<< Emails Gerados'

    puts '>>>>>>> Gerando Telefones'
    Inscription.all.each do |inscricao|
      Random.rand(0..2).times do |i|
        Phone.create(
          phone: Faker::PhoneNumber.cell_phone,
          whatsapp: Faker::Number.between(0,1),
          inscription: inscricao
          )
      end
    end
    puts '<<<<<<< Telefones Gerados'
  end
end

