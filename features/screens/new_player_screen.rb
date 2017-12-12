# frozen_string_literal: true
class NewPlayerScreen < Calabash::IBase # :nodoc:
  ADD_PLAYER_BUTTON = 'Add Player'

  def trait
    "label marked:'Add Player'"
  end

  def cancel
    # return to home screen without creating a new player
    tap_mark("Cancel")
  end

  def create_default_player
    # add a new player with default settings
    # (name: Player , balance: default, icon: cannon)
    tap_mark(ADD_PLAYER_BUTTON)
  end

  def create_custom_player(name, balance, icon)
    if !name.nil?
      wait_for_keyboard
      keyboard_enter_text(name)
    end

    if !balance.nil?
      set_text("textField index:#{ 1 }", balance)
    end

    if !icon.nil?
      tap_mark icon
    end 
    tap_mark(ADD_PLAYER_BUTTON)
  end
end
