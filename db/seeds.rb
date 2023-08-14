

# Generate a random number of users with avatars
# num_users = 10

# num_users.times do
#   User.create!(
#     username: Faker::Internet.username,
#     password: 'password', # Set a default password for testing
#     password_confirmation: 'password',
#     avatar_url: Faker::Avatar.image
#   )
# end
User.create([
    avatar_url: "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/39cab7f1-108d-4862-8c99-4a004911a8c0/dfzqpxr-8f5dfda6-a58d-40e0-8b09-0841ee62bd36.png/v1/fill/w_1000,h_800,q_70,strp/pirate_kids___waves_of_delight_by_thereimaginarium_dfzqpxr-pre.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MTAyNCIsInBhdGgiOiJcL2ZcLzM5Y2FiN2YxLTEwOGQtNDg2Mi04Yzk5LTRhMDA0OTExYThjMFwvZGZ6cXB4ci04ZjVkZmRhNi1hNThkLTQwZTAtOGIwOS0wODQxZWU2MmJkMzYucG5nIiwid2lkdGgiOiI8PTEyODAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.W_HgFs-QTBEoo5xgKyEF2bofYVWoYGND75SW8D9FsAE"
])

# Attach avatar image to user
# avatar_path = Rails.root.join('app/assets/images/avatar1.png')
# avatar_blob = ActiveStorage::Blob.create_after_upload!(
#   filename: 'avatar1.png',
#   io: File.open(avatar_path),
#   content_type: 'image/png'
# )

# userfina = Userfina.create!(
#   name: 'John Doe',
#   income: 50000,
#   year: '2023',
#   avatar: avatar_blob
# )
userfina = Userfina.create!([
  name: "Kenneth",
  income: 404973,
  years: 2024
])

