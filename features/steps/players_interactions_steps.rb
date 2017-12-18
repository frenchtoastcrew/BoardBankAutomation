When'I transfer money from bank to player' do
  sleep(1)
  @home_screen.bank_to_player_transfer(0, 50, 500)
end

Then'I should see player balance increase accordingly' do
  @home_screen.check_player_exists(@player_name, 1400, nil)
end

When'I transfer money from player to bank' do
  sleep(1)
  @home_screen.player_to_bank_transfer(@player_name, 500)
end

Then'I should see player balance decrease accordingly' do
  @home_screen.check_player_exists(@player_name, 400, nil)
end

When'I transfer money from player to player' do
  sleep(1)
  @home_screen.player_to_player_transfer(@player_name, -100, 0, 500)
end
