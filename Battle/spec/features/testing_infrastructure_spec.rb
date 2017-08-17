require './app.rb'
require_relative './web_helpers.rb'

feature Battle do

  scenario 'it asks to enter players' do
    visit('/')
    expect(page).to have_content 'Enter players'
  end

  scenario 'fill and check page content' do
    sign_in_and_play
    expect(page).to have_content 'Alessio and Olivia are going to battle!'
  end

  scenario 'player 1 can see player 2 hit points' do
    sign_in_and_play
    expect(page).to have_content 'Olivia points: 20'
  end

  scenario 'player 1 can attack player 2 and see results' do
    sign_in_and_play
    click_link('Attack!')
    expect(page).to have_content 'Alessio attacked Olivia'
  end

end
