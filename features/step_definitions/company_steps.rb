Given /^there are the following companies:$/ do |table|
  table.hashes.each do |attributes|
    @company = Compnay.create!(attributes)
  end
end
