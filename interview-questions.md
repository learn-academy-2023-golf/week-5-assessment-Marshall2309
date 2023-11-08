# ASSESSMENT 5: Interview Practice Questions

Answer the following questions.

First, without external resources. Challenge yourself to answer from memory.

Then, research the question to expand on your answer. Even if you feel you have answered the question completely on your own, there is always something more to learn. Write your researched answer in your OWN WORDS.

1. Compare and contrast arrays and hashes in Ruby. Include at least two differences and two similarities.

Your answer: Arrays have elements that you access by calling the index. Hashes have key:value pairs that you access by calling on the key.

Researched answer:  Arrays and hashes are both data structures used to store collections of elements and they both include the Enumerable module. Arrays are ordered collections, which means that elements are stored in a specific order and can be accessed by their index. Hashes are collections of key-value pairs, where each value is associated with a unique key. The order of elements is not guaranteed, as they are stored based on their hash value. Elements in an array are accessed using integers as indices. For example, my_array[0] would return the first element in the array. Meanwhile, Elements in a hash are accessed by their corresponding keys. For example, my_hash["key"] would return the value associated with the key "key".

2. What does it mean to implement a TDD workflow?

Your answer: TDD means Test Driven Development. To emplement this workflow means running pieces of your code through tests before you implement them in branches to the main source. The key principle behind TDD is to have a comprehensive suite of tests that verify the behavior of your code. This helps ensure that any changes or additions to the codebase don't introduce unexpected bugs.

Researched answer: Implementing a TDD (Test-Driven Development) workflow means following a specific development process where tests are written before the actual code implementation.

3. Why would super be used in a Ruby class?

Your answer: It would be used buy one class to essentially take on the abilities of another class that is similar to it.

Researched answer: Super is used to call a method from the parent class. This helps reuse code and extend functionality while still keeping the original behavior intact. It's a useful tool in object-oriented programming for creating organized and efficient class hierarchies.

4. STRETCH: What is the difference between inheritance in JavaScript and inheritance in Ruby?

Researched answer: Inheritance in JavaScript and Ruby share some similarities, but there are also some important differences. JavaScript uses prototypal inheritance, which means that objects can inherit properties and methods directly from other objects. Ruby uses class-based inheritance, where objects are instances of classes. A class is like a blueprint for creating objects, and objects inherit from their class.

## Looking Ahead: Terms for Next Week

Research and define the following terms to the best of your ability.

1. PostgreSQL: an object-relational database management system. To access data in the database we define a query. A query is code that requests particular information from a database. Creating efficient queries will improve the speed and performance of the application.

2. Ruby on Rails: a server-side web application framework written in Ruby. Rails was created by Danish programmer David Heinemeier Hansson (known as DHH). Rails was released in July 2004 as open source code. Rails is a model–view–controller (MVC) framework, providing default structures for a database, a web service, and web pages.

3. Active Record: an Object-Relational Mapping (ORM) framework used in Ruby on Rails. It simplifies the interaction between a Ruby application and a relational database by providing a set of conventions for mapping database tables to Ruby objects.
