module ApplicationHelper
  
  def count_my_beers
    MyBeer.where(["user_id = ?", current_user.uid]).size
  end
  
end
