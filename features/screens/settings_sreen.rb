# frozen_string_literal: true
class SettingsScreen < Calabash::IBase # :nodoc:
  
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
    if sounds
      touch('UISwitch')
    end
    sleep(4) #debug slowdown

    tap_mark('Save Settings')
  end

  def verify_settings(currency, d_balance, q_ammount, sounds)
     element_exists("* text: '#{currency}'")
     element_exists("* text: '#{d_balance}'")
     element_exists("* text: '#{q_ammount}'")
     query('UISwitch').first['value'] == sounds
  end

  def new_game
    tap_mark('New Game')
    wait_for_element_exists("label marked :'Are you sure?'")
    touch("label index: #{ 6 }") # 6th label is the New Game button on the modal
  end

  def cancel
    tap_mark("Cancel")
  end
end
