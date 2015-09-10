class Member < ActiveRecord::Base
	belongs_to :library_member, :polymorphic => true
end
