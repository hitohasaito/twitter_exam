module TwittersHelper
  def choose_new_or_edit
    if action_name == "new" || action_name == "confirm" || action_name == "create"
      confirm_twitters_path
    elsif action_name == "edit"
      twitter_path
    end
  end
end
