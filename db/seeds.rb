user = User.create(name: 'Santiago', email: 'santiagodelafuente2013@gmail.com')
book1 = user.books.create(title: 'Functional Programming', gender: 'programming')
book2 = user.books.create(title: 'Object-oriented programming', gender: 'programming')

author1 = book1.authors.create(name: 'Jerry', lastname: 'Smith')
author2 = book2.authors.create(name: 'Francis', lastname: 'Myers')

# Book.authors.create(name: "Sergio Augusto", lastname: "Cardona")