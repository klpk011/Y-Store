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

  Product.create!(
        name: '英语“使用”元认知
',
        description: '语言是人的本能，只要你想表达想法，只要你想获得信息，你就能学会语言。
 ',
        category_id: 4,
        Applicants: '1、学英语一直很努力，但是成绩一直不高的在校中学生。
2、对于语言该怎么学习茫然，不知道该如何分辨一种英语课程适合不适合自己的上班族同学。
 ',
        teaching_objectives: '演示给你到底以怎样的姿势学英语。
 ',
        Course_Contents: '英语学习元认知
 ',
        course_features: '刷新你对语言的认识。
 ',
        curriculum: 3,
        Teacher_introduction: 'Claire
1、专注心理学知识和英语教学的结合5年，将最前沿的心理学成果融入教学，有自己独特的教学理念；
2、发音地道，英文水平高，但那都不算什么，那是最基本的条件；
3、最重要的是：Claire老师最擅长激发学生的学习兴趣。
4、跟她学，你很有可能会爱上英文的，因为她已经促成很多这样的奇妙反应。^_^
 ',
        price: 1000,
        quantity: 599,
        class_schedule: '2017.7.7-2017.7.21
',
        class_location: '在线--一块儿听听
 ',
        service: '课后答疑
 '
   )

   Product.create!(
        name: '分分钟开口说英语---（一）
 ',
        description: '让你说出英国话。
 ',
        category_id: 1,
        Applicants: '1、善于思考。
2、不会说英语，不想被市面上的各种课程花式欺骗的想学真东西的同学。
3、希望能够掌握英语日常基础会话的同学。 ',
        teaching_objectives: '让你能把英文运用到40个场景中与人交流。
 ',
        Course_Contents: '1、生活中40个场景中的英文对话
2、500个常见英文单词
 ',
        course_features: '让你再也不害怕英语，给你带来走上正道的自信。
 ',
        curriculum: 40,
        Teacher_introduction: 'Claire
1、专注心理学知识和英语教学的结合5年，将最前沿的心理学成果融入教学，有自己独特的教学理念；
2、发音地道，英文水平高，但那都不算什么，那是最基本的条件；
3、最重要的是：Claire老师最擅长激发学生的学习兴趣。
4、跟她学，你很有可能会爱上英文的，因为她已经促成很多这样的奇妙反应。^_^
 ',
        price: 200,
        quantity: 799,
        class_schedule: '2017.7.23-2017-9.23
 ',
        class_location: '在线--一块儿听听
 ',
        service: '课后答疑
 '
)

Product.create!(
      name: '分分钟开口说英语---（二）
 ',
      description: '让你说英语的时候有种骑着自行车上路的感觉。
 ',
      category_id: 2,
      Applicants: '1、善于思考。
2、不会说英语，不想被市面上的各种课程花式欺骗的想学真东西的同学。
3、希望能够掌握英语日常基础会话的同学。
 ',
      teaching_objectives: '让你能把英文运用到40个场景中与人交流。
 ',
      Course_Contents: '1、生活中40个场景中的英文对话
2、500个常见英文单词
 ',
      course_features: '让你学的有感觉，让你有种骑着自行车上路的感觉。
 ',
      curriculum: 40,
      Teacher_introduction: 'Claire
1、专注心理学知识和英语教学的结合5年，将最前沿的心理学成果融入教学，有自己独特的教学理念；
2、发音地道，英文水平高，但那都不算什么，那是最基本的条件；
3、最重要的是：Claire老师最擅长激发学生的学习兴趣。
4、跟她学，你很有可能会爱上英文的，因为她已经促成很多这样的奇妙反应。^_^
 ',
      price: 200,
      quantity: 799,
      class_schedule: '2017.9.23-2017-11.23
 ',
      class_location: '在线--一块儿听听
 ',
      service: '课后答疑
 '
)

Product.create!(
      name: '分分钟开口说英语---（三）
 ',
      description: '让你说英语时越来越自信，有种骑着摩托车在路上奔驰的兴奋感。
 ',
      category_id: 3,
      Applicants: '1、善于思考。
2、不会说英语，不想被市面上的各种课程花式欺骗的想学真东西的同学。
3、希望能够掌握英语日常基础会话的同学。
 ',
      teaching_objectives: '让你能把英文运用大40个场景中与人交流。
 ',
      Course_Contents: '1、生活中40个场景中的英文对话
2、500个常见英文单词
 ',
      course_features: '让你越学越自信，有种骑着摩托车在路上奔驰的兴奋感。
 ',
      curriculum: 40,
      Teacher_introduction: 'Claire
1、专注心理学知识和英语教学的结合5年，将最前沿的心理学成果融入教学，有自己独特的教学理念；
2、发音地道，英文水平高，但那都不算什么，那是最基本的条件；
3、最重要的是：Claire老师最擅长激发学生的学习兴趣。
4、跟她学，你很有可能会爱上英文的，因为她已经促成很多这样的奇妙反应。^_^
 ',
      price: 200,
      quantity: 799,
      class_schedule: '2017.11.23-2018-1.23
 ',
      class_location: '在线--一块儿听听
 ',
      service: '课后答疑
 '
)

Product.create!(
      name: '编程英语 ',
      description: '让你再也不用因为英语拦路而学不好编程。
 ',
      category_id: 4,
      Applicants: '想要学编程，但是英语0基础的“预备程序员”
 ',
      teaching_objectives: '1、让你记住编程所需要了解的200个常用单词。
2、夯实语法基础，看懂报错内容，再也部位红色警报而担忧。
3、可以自由google遇到的问题病看懂解答。
 ',
      Course_Contents: '1、200个最常用的编程英文单词
2、500个构成句子的其他常用英文单词
3、看懂编程英语语法 ',
      course_features: '刷新你对语言的认识。
 ',
      curriculum: 3,
      Teacher_introduction: 'Claire
1、专注心理学知识和英语教学的结合5年，将最前沿的心理学成果融入教学，有自己独特的教学理念；
2、发音地道，英文水平高，但那都不算什么，那是最基本的条件；
3、最重要的是：Claire老师最擅长激发学生的学习兴趣。
4、跟她学，你很有可能会爱上英文的，因为她已经促成很多这样的奇妙反应。^_^ ',
      price: 50,
      quantity: 999,
      class_schedule: '2017.7.10-2017.7.31 ',
      class_location: '在线--一块儿听听
 ',
      service: '课后答疑
 '
)

Product.create!(
      name: '美国旅行英语口语
 ',
      description: '给你的美国之行增添“谈”资，让你更加享受你的旅行。
 ',
      category_id: 5,
      Applicants: '1、一个月后要去美国旅行的同学
2、害怕英语影响旅行感觉的同学 ',
      teaching_objectives: '让你会说旅行中最需要用到的话 ',
      Course_Contents: '美国旅行英语口语
 ',
      course_features: '让你觉得“我好厉害，我的英文这样棒”。
 ',
      curriculum: 30,
      Teacher_introduction: 'Claire
1、专注心理学知识和英语教学的结合5年，将最前沿的心理学成果融入教学，有自己独特的教学理念；
2、发音地道，英文水平高，但那都不算什么，那是最基本的条件；
3、最重要的是：Claire老师最擅长激发学生的学习兴趣。
4、跟她学，你很有可能会爱上英文的，因为她已经促成很多这样的奇妙反应。^_^ ',
      price: 100,
      quantity: 999,
      class_schedule: '2017.8.1 循环开课
 ',
      class_location: '在线--一块儿听听
 ',
      service: '课后答疑
 '
)

Product.create!(
      name: '英国旅行英语口语 ',
      description: '给你的美国之行增添“谈”资，让你更加享受你的旅行。
 ',
      category_id: 5,
      Applicants: '1、一个月后要去英国旅行的同学
2、不想让英语影响旅行感觉的同学 ',
      teaching_objectives: '让你会说旅行中最需要用到的话
 ',
      Course_Contents: '让你会说旅行中最需要用到的话
 ',
      course_features: '让你觉得“我好厉害，我的英文这样棒”。
 ',
      curriculum: 30,
      Teacher_introduction: 'Claire
1、专注心理学知识和英语教学的结合5年，将最前沿的心理学成果融入教学，有自己独特的教学理念；
2、发音地道，英文水平高，但那都不算什么，那是最基本的条件；
3、最重要的是：Claire老师最擅长激发学生的学习兴趣。
4、跟她学，你很有可能会爱上英文的，因为她已经促成很多这样的奇妙反应。^_^ ',
      price: 100,
      quantity: 999,
      class_schedule: '2017.8.1 循环开课
 ',
      class_location: '在线--一块儿听听
 ',
      service: '课后答疑
 '
)

Product.create!(
      name: '英语商务信件阅读
 ',
      description: '让你读懂商务邮件
 ',
      category_id: 6,
      Applicants: '1、英文薄弱，但是需要大量阅读英文商务邮件的职场人士
2、因为英语不敢申请外企的其他技能优秀的你
 ',
      teaching_objectives: '让你练会英文
 ',
      Course_Contents: '1、语法分析
2、分类邮件内容分析
3、老外暗含意思解析 ',
      course_features: '让你再也不怕读英文邮件
 ',
      curriculum: 30,
      Teacher_introduction: 'Claire
1、专注心理学知识和英语教学的结合5年，将最前沿的心理学成果融入教学，有自己独特的教学理念；
2、发音地道，英文水平高，但那都不算什么，那是最基本的条件；
3、最重要的是：Claire老师最擅长激发学生的学习兴趣。
4、跟她学，你很有可能会爱上英文的，因为她已经促成很多这样的奇妙反应。^_^ ',
      price: 200,
      quantity: 799,
      class_schedule: '2017.9.1-9.30
 ',
      class_location: '在线--一块儿听听
 ',
      service: '课后答疑
 '
)
