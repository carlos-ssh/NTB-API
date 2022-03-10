# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


Article.create([
  {
    title: "First Article 1",
    content: "This is the first article 1",
    slug: "first-article-1"
  },
  {
    title: "First Article 2",
    content: "This is the first article 2",
    slug: "first-article-2"
  },
  {
    title: "First Article 3",
    content: "This is the first article 3",
    slug: "first-article-3"
  }
])