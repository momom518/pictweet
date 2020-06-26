FactoryBot.define do

  factory :user do
    nickname              {"abe"}
    # email                 {"kkk@gmail.com"}
    password              {"00000000"}
    password_confirmation {"00000000"}
    sequence(:email){Faker::Internet.email}
    #同じemailを使用するとバリデーションに引っかかってエラーになるため、Fakerを使って異なるものになるようにする。
  end

end