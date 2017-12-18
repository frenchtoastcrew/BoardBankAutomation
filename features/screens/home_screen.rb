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

  def bank_to_player_transfer(x, y, amount)
    flick "label  marked:'Bank'", {x:x, y:y}
    wait_for_keyboard
    keyboard_enter_text(amount)
  end 

  def player_to_bank_transfer(name, amount)
    flick "label  marked:'#{name}'",{x:0, y:-100}
    wait_for_keyboard
    keyboard_enter_text(amount)
  end 

  def player_to_player_transfer(name, x, y, amount)
    flick "label  marked: '#{name}' ", {x:x, y:y}
    wait_for_keyboard
    keyboard_enter_text(amount)
  end

  def settings
    tap_mark("Settings")
  end

end