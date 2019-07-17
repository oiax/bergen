users = User.all
messages = Message.all
5.times do |n|
  Vote.create!(
    user_id: users.sample.id,
    message_id: messages.sample.id
  )
end
