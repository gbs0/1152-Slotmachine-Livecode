require_relative "slot_machine"

slot_machine_pronta = SlotMachine.new(%w[joker joker joker])

slot_machine_aleatoria = SlotMachine.play

puts "-" * 36
p slot_machine_aleatoria
print "Score: "
puts slot_machine_pronta.score
print "Score: "
puts slot_machine_aleatoria.score
