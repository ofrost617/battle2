require './app.rb'

feature Battle do
  scenario 'it asks to enter players' do
    visit('/')
    expect(page).to have_content 'Enter players'
  end

  scenario 'fill and check page content' do
    visit('/')
    fill_in('player1', :with => 'Alessio')
    fill_in('player2', :with => 'Olivia')
    click_button('Submit')
    expect(page).to have_content 'Alessio and Olivia are going to battle!'
  end

  scenario 'player 1 can see player 2 hit points' do
    visit('/')
    fill_in('player1', :with => 'Alessio')
    fill_in('player2', :with => 'Olivia')
    click_button('Submit')
    expect(page).to have_content 'Olivia points: 20'
  end

end
