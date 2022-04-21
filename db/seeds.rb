# frozen_string_literal: true

# --------------------- Create user1 ----------------------------------------------------
user1 = User.create(name: 'Santiago', email: 'example1@gmail.com')

# Create book1 and yours authors
book1 = user1.books.create(title: 'Functional Programming', gender: 'Programming')
book1.authors.create(book_id: book1.id, name: 'Jerry', lastname: 'Smith')
book1.authors.create(book_id: book1.id, name: 'Francis', lastname: 'Myers')

# Create book2 and yours authors
book2 = user1.books.create(title: 'Object-oriented programming', gender: 'Programming')
book2.authors.create(book_id: book2.id, name: 'Jhon', lastname: 'William')
book2.authors.create(book_id: book2.id, name: 'Petter', lastname: 'Hoffman')

# --------------------- Create user2 ----------------------------------------------------
user2 = User.create(name: 'Petter', email: 'example2@gmail.com')

# Create book3 and yours authors
book3 = user2.books.create(title: 'The donor', gender: 'Science fiction')
book3.authors.create(book_id: book3.id, name: 'Baronesa Emma', lastname: 'Orczy')
book3.authors.create(book_id: book3.id, name: 'Charles ', lastname: 'Dickens')

# Create book4 and yours authors
book4 = user2.books.create(title: ' The Scarlet Pimpernel', gender: 'Terror')
book4.authors.create(book_id: book4.id, name: 'Jhon', lastname: 'Buchan')
book4.authors.create(book_id: book4.id, name: 'Arthur Conan', lastname: 'Doyle')




