class ChangeAcademicscheduleFormatInRushApplications < ActiveRecord::Migration

	def up
	    change_column :rush_applications, :academic_schedule, :text
	end
	def down
	    change_column :rush_applications, :academic_schedule, :string
	end

end
