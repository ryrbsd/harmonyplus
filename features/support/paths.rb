# TL;DR: YOU SHOULD DELETE THIS FILE
#
# This file is used by web_steps.rb, which you should also delete
#
# You have been warned
module NavigationHelpers
  # Maps a name to a path. Used by the
  #
  #   When /^I go to (.+)$/ do |page_name|
  #
  # step definition in web_steps.rb
  #
  def path_to(page_name)
    case page_name

    when /^the home\s?page$/ then '/'
    when /^the manager page$/ then '/manager'
    when /^the success_b_bay page$/ then '/success'
    when /^the create new application page$/ then '/manager/new'
    when /^the about us$/ then '/about_us'
    when /^future planning page$/ then '/future_planning'
    when /^summer academy page$/ then '/summer_academy'
    when /^b-bay apply page$/ then b_bay_apply_path
    when /^the sign in page$/ then '/users/sign_in'
    
    else
      begin
        page_name =~ /^the (.*) page$/
        path_components = $1.split(/\s+/)
        self.send(path_components.push('path').join('_').to_sym)
      rescue NoMethodError, ArgumentError
        raise "Can't find mapping from \"#{page_name}\" to a path.\n" +
          "Now, go and add a mapping in #{__FILE__}"
      end
    end
  end
end

World(NavigationHelpers)
