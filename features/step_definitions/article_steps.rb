Given(/^the following articles exist:$/) do |table|
  table.hashes.each do |article|
		Article.create(article)
	end
end
