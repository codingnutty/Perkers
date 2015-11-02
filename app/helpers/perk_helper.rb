module PerkHelper
  # Helper method to find perks located near current user
  def near_me
    perks_near_me = []
    perks = Perk.all
    perks.each do |perk|
      if perk.zipcode!= nil  && current_user.zipcode == perk.zipcode
        perks_near_me << perk
      end
    end
    return perks_near_me
  end
end