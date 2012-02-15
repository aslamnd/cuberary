Given /^there are the following authors:$/ do |table|
  table.hashes.each do |attributes|
    @author = Author.create!(attributes)
  end
end
