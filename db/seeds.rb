require 'faker'
5.times do
  user = User.new(username: Faker::Internet.user_name(Faker::RickAndMorty.character), password: "password")
  user.email = Faker::Internet.safe_email(user.username)
  user.save
end

Deck.create(name: "Rails it Up Yo")

Card.create(
  question: "What is Rails tho?",
  answer: "A server-side web app framework written in Ruby",
  deck_id: 1
  )
Card.create(
  question: "What do you type in the terminal to view routes?",
  answer: "rake routes",
  deck_id: 1
  )
Card.create(
  question: "What year was Rails created_at?",
  answer: "2005",
  deck_id: 1
  )
Card.create(
  question: "Roughly how many people have contributed to Rails?",
  answer: "Over 4,500",
  deck_id: 1
  )
Card.create(
  question: "What is the containing folder of css and js files",
  answer: "Assets",
  deck_id: 1
  )

Round.create(user_id: 1, deck_id: 1)

Guess.create(is_correct: true, card_id: 1, round_id: 1)
Guess.create(is_correct: false, card_id: 2, round_id: 1)
Guess.create(is_correct: false, card_id: 3, round_id: 1)
Guess.create(is_correct: true, card_id: 4, round_id: 1)
Guess.create(is_correct: true, card_id: 5, round_id: 1)
Guess.create(is_correct: true, card_id: 2, round_id: 1)
Guess.create(is_correct: true, card_id: 3, round_id: 1)

Round.create(user_id: 1, deck_id: 1)
Guess.create(is_correct: true, card_id: 1, round_id: 2)
Guess.create(is_correct: false, card_id: 2, round_id: 2)
Guess.create(is_correct: false, card_id: 3, round_id: 2)
Guess.create(is_correct: false, card_id: 4, round_id: 2)
