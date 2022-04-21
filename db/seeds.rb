# frozen_string_literal: true

# Create user1
user1 = User.create(name: 'Santiago', email: 'santiagodelafuente2013@gmail.com')

# Create books for user1
book1 = user1.books.create(title: 'Functional Programming', gender: 'programming')
book2 = user1.books.create(title: 'Object-oriented programming', gender: 'programming')
# ...

# Create authors for book1
book1.authors.create(book_id: book1.id, name: 'Jerry', lastname: 'Smith')
book1.authors.create(book_id: book1.id, name: 'Francis', lastname: 'Myers')
# ...

# Create authors for book2
book2.authors.create(book_id: book2.id, name: 'Jhon', lastname: 'William')
book2.authors.create(book_id: book2.id, name: 'Petter', lastname: 'Hoffman')
# ...
