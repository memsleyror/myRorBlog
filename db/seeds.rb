# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

new_user = User.create(first_name: "Craig", last_name: "Johnson")
new_role = Role.create(role_name: "User")
new_user.update_attribute(:role, new_role)
new_post = new_user.posts.create(title: "Steve's First Post", body: "blah, blah, blah")
new_comment = new_post.comments.create(user_comment: "I like this!")
new_comment.update_attribute(:user, new_user)
#new_pic = new_post.pics.create(img: "post_pic")