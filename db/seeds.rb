userList = []
10.times do |i|
  userList.push(User.create email: "example#{i}@example.com", password: "testuser#{i}", password_confirmation: "testuser#{i}", name: "user#{i}")
end

4.times do |i|
  user = userList[i]
  5.times do |j|
    Relationship.create user: user, follow: userList[j + 4]
  end
end