Given'I am on the settings screen' do
  @home_screen = page(HomeScreen).await
  @home_screen.settings
  @settings_screen = page(SettingsScreen).await
end

When'I fill out and save custom settings' do
  @settings_screen.set_settings('GBP', 1000, 300, true)
  @settings_screen.save_settings
end

Then'I should see new settings are saved' do
  sleep(1)
  @home_screen.settings
  @settings_screen.verify_settings('GBP', 1000, 300, '0')
end

When'I have created some players' do
  @settings_screen.cancel
  sleep(1)
  (1..4).each do |player|
    @home_screen.new_player
    @new_player_screen = page(NewPlayerScreen).await
    @new_player_screen.create_default_player
    puts "Player #{player} created"
  end
  sleep(1)
  @home_screen.settings
end

When'I tap New Game' do
  sleep(1)
  @settings_screen.new_game
end

Then'I should be redirected to a clean Home Screen' do
  @home_screen.no_players_created
end

When'I fill out custom settings' do
  @settings_screen.set_settings('&', 10, 3, true)
end

When'I tap Cancel without saving' do
  @settings_screen.cancel
end

Then'I should see no settings are saved' do
  sleep(1)
  @home_screen.settings
  @settings_screen.verify_settings('$', 1500, 200, '1')
end