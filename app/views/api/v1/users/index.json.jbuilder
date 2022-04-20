json.array! @users do |user|
  json.extract! user, :id, :name, :email

  json.books user.books do |book|
    json.extract! book, :id, :title, :gender
  end
end

