require_relative '../slot_machine'

def test_scenario(reels, expect_score)
  it "Return #{expect_score} for #{reels[0]}/#{reels[1]}/#{reels[2]}" do
    slot_machine = SlotMachine.new(reels)
    score = slot_machine.score
    expect(score).to eq(expect_score)
  end
end

describe SlotMachine do
  describe '#score' do
    it 'Return 0 for three diferent symbol types' do
        slot_machine = SlotMachine.new(['joker', 'star', 'bell'])
        score = slot_machine.score
        expect(score).to eq(0)  
    end
  end

  test_scenario(%w[joker joker joker], 50)
  test_scenario(%w[star star star], 40)
  test_scenario(%w[bell bell bell], 30)
  test_scenario(%w[seven seven seven], 20)
  test_scenario(%w[cherry cherry cherry], 10)

  test_scenario(%w[joker joker star], 25)
  test_scenario(%w[joker joker bell], 25)
  test_scenario(%w[joker joker seven], 25)
  test_scenario(%w[joker cherry joker], 25)

  test_scenario(%w[star star bell], 0)
  test_scenario(%w[star star seven], 0)
  test_scenario(%w[star star cherry], 0)
  test_scenario(%w[bell bell star], 0)
  test_scenario(%w[bell bell seven], 0)
  test_scenario(%w[bell bell cherry], 0)
  test_scenario(%w[seven seven star], 0)
  test_scenario(%w[seven seven bell], 0)
  test_scenario(%w[seven seven cherry], 0)
  test_scenario(%w[cherry cherry star], 0)
  test_scenario(%w[cherry cherry bell], 0)
  test_scenario(%w[cherry cherry seven], 0)

end