class Candidate < ActiveRecord::Base
	has_attached_file :resume
	validates_attachment :resume, :content_type => {:content_type => %w(image/jpeg image/jpg image/png application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document)}
end
