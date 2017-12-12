Given'I am on home screen' do
  @home_screen = page(HomeScreen).await
end

When'I have created a player' do
  @player_name = "ivo" + rand(40).to_s
  @home_screen.new_player
  @new_player_screen = page(NewPlayerScreen).await
  @new_player_screen.create_custom_player(@player_name, 900, "horse")
  end

Then'I should see this player on home screen' do
  @home_screen.check_player_exists(@player_name, 900, "horse")
  sleep(3)
end

Given'I have created six players' do 
  (1..6).each do |player|
    @home_screen.new_player
    @new_player_screen = page(NewPlayerScreen).await
    @new_player_screen.create_default_player
    puts "Player #{player} created"
  end
end

Then'I should see the Add Player icon is disabled' do
  @home_screen.new_player_disabled
end

Given'I am on the Add player screen' do
  @home_screen.new_player
  @new_player_screen = page(NewPlayerScreen).await

end

When'I tap Cancel' do
  @new_player_screen.cancel
end

Then'I should be directed back to home screen' do
  @home_screen
end

Then'No new players should have been created' do
  @home_screen.no_players_created
end
