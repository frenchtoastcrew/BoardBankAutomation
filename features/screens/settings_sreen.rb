# frozen_string_literal: true
class SettingsScreen < Calabash::IBase
  
  def trait
    "label marked:'Settings'"
  end

  def set_settings(currency, d_balance, q_ammount, sounds)
    if !currency.nil?
      set_text("textField index:#{ 0 }", currency)
    end 
    if !d_balance.nil?
      set_text("textField index:#{ 1 }", d_balance)
    end
    if !q_ammount.nil?
      set_text("textField index:#{ 2 }", q_ammount)
    end
    if !sounds.nil?
      touch('UISwitch')
    end
    tap_mark('Save Settings')
  end

  def new_game
    tap_mark('New Game')
    wait_for_element_exists("label marked :'Are you sure?'")
    touch("label index: #{ 6 }") # 6th label is the New Game button on the modal
  end

end
