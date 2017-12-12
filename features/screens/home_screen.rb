class HomeScreen < Calabash::IBase # :nodoc:

  def trait
     "label marked:'BoardBank'"
  end

  def new_player
    tap_mark("Add")
  end

  def new_player_disabled
    query("* marked:'Add'").first['enabled']==false  
  end

  def check_player_exists(player_name, balance, icon)
    element_exists("* text: '#{player_name}'")
    element_exists("* text: '#{balance}'")
    element_exists("* text: '#{icon}'")
  end

  def no_players_created
    element_exists("label {text BEGINSWITH 'TAP + TO'}")
  end

  def bank_transfer(x, y, amount)
    flick "label  marked:'Bank'", {x:x, y:y}
    wait_for_keyboard
    keyboard_enter_text(amount)
  end 

  def player_transfer(label, x, y, amount)
    flick "label  marked: label ", {x:x, y:y}
    wait_for_keyboard
    keyboard_enter_text(amount)
  end

  def settings
    tap_mark("Settings")
  end

end