require 'game'

describe Game do
  it "can return either 'rock', 'paper', or 'scissors'" do
    expect(["rock", "paper", "scissors"]).to include(subject.play_move)
  end

  it "selects the right winner" do
  	expect(subject.choose_winner({ computer: "paper", player: "rock" })).to eq :computer
  	expect(subject.choose_winner({ computer: "rock", player: "paper" })).to eq :player
  end

  it "allows paper to beat rock" do
  	expect(subject.winner? "paper", "rock").to eq true
  end

  it "allows rock to lose to paper" do
  	expect(subject.winner? "rock", "paper").to eq false
  end

  it "allows a draw when the same things are chosen" do
    expect(subject.draw? "paper", "paper").to eq true
  end

  it "does not allow a draw when different things are chosen" do
    expect(subject.draw? "rock", "paper").to eq false
  end

end