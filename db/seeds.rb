if Rails.env.development?
  users = User.create([
    { name: 'guest', email: 'guest@example.org', password: 'guest', password_confirmation: 'guest' },
    { name: 'user', email: 'user@example.org', password: 'user', password_confirmation: 'user' }
  ])

  Task.create([
    {
      user: users.second,
      title: Forgery(:lorem_ipsum).words(3, random: true), 
      body: Forgery(:lorem_ipsum).words(10, random: true)
    },
    {
      user: users.second, title: Forgery(:lorem_ipsum).words(3, random: true), 
      body: Forgery(:lorem_ipsum).words(10, random: true)
    }
  ])
end
