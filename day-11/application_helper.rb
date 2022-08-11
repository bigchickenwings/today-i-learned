module ApplicationHelper
  def anchor_section(user, &block)
    link_to(user_url(user), aria:{label: "Go to #{user.name}'s profile"}, &block)
  end

  def anchor_with_yield(user)
    link_to(user_url(user), aria:{label: "Go to #{user.name}'s profile"}) do
      yield
    end
  end
  
end