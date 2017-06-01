# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create(email: "admin@gmail.com", password: "123456", password_confirmation: "123456", is_admin: true)

# 新增類型  Category #
  CategoryGroup.create!(
    name: 'aaa'
  )

  CategoryGroup.create!(
    name: 'bbb'
  )

  CategoryGroup.create!(
    name: 'ccc'
  )


# 新增分類  Category #
  # aaa
  # 1
  Category.create!(
    category_group_id: 1,
    name: 'a1'
  )

  # 2
  Category.create!(
    category_group_id: 1,
    name: 'a2'
  )

  # 3
  Category.create!(
    category_group_id: 1,
    name: 'a3'
  )

  # bbb
  # 4
  Category.create!(
    category_group_id: 2,
    name: 'b1'
  )

  # 5
  Category.create!(
    category_group_id: 2,
    name: 'b2'
  )

  # 6
  Category.create!(
    category_group_id: 2,
    name: 'b3'
  )


  # ccc
  # 7
  Category.create!(
    category_group_id: 3,
    name: 'c1'
  )
  # 8
  Category.create!(
    category_group_id: 3,
    name: 'c2'
  )
  # 9
  Category.create!(
    category_group_id: 3,
    name: 'c3'
  )
