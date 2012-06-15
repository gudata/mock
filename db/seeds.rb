Category.delete_all

%w(
  politics
  economics
  health
  education
).each do |category_name|
  Category.create(:title => category_name, :text => 'Write an overview of the Political, Economic, Health, and Education frameworks of your government as you see it. Cite sources so that others know that what you say   is true. Every few minutes, the written submissions will change to reflect another   user point of view. Most importantly, comment so that we may start a dialogue!')
end