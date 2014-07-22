class Employee < ActiveRecord::Base
	attr_accessor :score1, :score2, :score3, :score4, :score5, :score6 
	attr_accessor :score7, :score8, :score9, :score10, :score11, :score12
	serialize :score, Hash
end
