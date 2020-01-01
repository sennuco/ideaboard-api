# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Idea.delete_all
Idea.reset_pk_sequence

Category.delete_all
Category.reset_pk_sequence

User.delete_all
User.reset_pk_sequence

#Users Created 

u1 = User.create(name: "Lilly ",
        email:"lillybug@gmail.com")

u2 = User.create(name: "Henry L",
        email:"KingHen01@gmail.com")

u3 = User.create(name: "Jamiee ",
        email:"beverlyjam2001@aol.com"
)


# Category Created 

c1 = Category.create(urgent: false)
c2 = Category.create(urgent: true)




# Ideas Created 

    idea1 = Idea.create(title: "Blog Post",
    body: "A blog post about my daily skin care routine", category_id: c1.id,user_id: u1.id
    )

    idea2 = Idea.create(title:"Messaging App",
    body: "A social networking app idea for penpals", category_id: c2.id, user_id: u1.id
    )

    idea3 = Idea.create(title: "Study ",
    body:"Physics class book.." , category_id: c1.id, user_id: u1.id
    )







puts "Successfully Seeded 🌱"

