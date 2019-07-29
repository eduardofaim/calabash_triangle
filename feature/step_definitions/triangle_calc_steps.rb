require 'calabash-android/calabash_steps'
require_relative '../objects/triangle_calc.rb'

Dado(/^I'm on TrianguloApp screen$/) do
 	element_exists("* text:'TrianguloApp'")
	element_exists("* id:'layout_componentes'")
end

Quando(/^I calculate fields with the same value$/) do 
	calculate = TriangleCalc.new
	calculate.fill_text_field('3', 'txtLado1')
	calculate.fill_text_field('3', 'txtLado2')
	calculate.fill_text_field('3', 'txtLado3')
	calculate.new.touch_element('btnCalcular')
end

Entao(/^the message "([^"]*)" will be displayed$/) do |msg1|
   expect(element_exists("* text:'#{msg1}'")).to eq(true)
end

Quando(/^I calculate fields with different valuesr$/) do 
	calculate = TriangleCalc.new
	calculate.fill_text_field('1', 'txtLado1')
	calculate.fill_text_field('2', 'txtLado2')
	calculate.fill_text_field('3', 'txtLado3')
	calculate.touch_element('btnCalcular')
end

Entao(/^the message "([^"]*)" will be displayed$/) do |msg2|
	expect(element_exists("* text:'#{msg2}'")).to eq(true)
 end