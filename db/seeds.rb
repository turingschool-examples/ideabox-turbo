10.times do 
  Idea.create(
    title: Faker::TvShows::HowIMetYourMother.catch_phrase,
    description: Faker::TvShows::HowIMetYourMother.quote
  )
end