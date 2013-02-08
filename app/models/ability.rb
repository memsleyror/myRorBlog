class Ability
	include CanCan::Ability

	def intialize(user)
		
		if user.role? :admin
			can :manage, :all
		end	
	end	

end