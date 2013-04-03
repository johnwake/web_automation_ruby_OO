Given /^I navigate to (?:an|a|the) (.*) page$/ do |page_name|
  @amazon = Model::Amazon.new
  case page_name
    when 'home' then @amazon.home.load
    else raise "Haven't mapped the '#{page_name}' page"
  end
end

Then /^the header should be present$/ do
  @home.has_header?
  @home.header.should be_visible
end
