class Consultant < ApplicationRecord

	include ActiveModel::AttributeMethods
	
	#mount_uploader :avatar, AvatarUploader

  attribute_method_prefix 'reset_'
  attribute_method_suffix '_highest?'
  define_attribute_methods 
 
  #attr_accessor :age
	
	# attr_accessor :description, :name 
	
	def slug
		unless name.nil?
			name.downcase.gsub(" ", "-")			
		end
	end
	
	def to_param
	  "#{id}-#{slug}"
	end

end

#consultant = Consultant.new
# consultant.age = 110
# consultant.age_highest?  # => true
# consultant.reset_age     # => 0
# consultant.age_highest?  # => false


private

def reset_attribute(attribute)
  send("#{attribute}=", 0)
end

def attribute_highest?(attribute)
  send(attribute) > 100
end

# def name
# 	#change to handle | add firstname & lastname?
# end


def self.twitter
	#call API
end

def self.facebook
	#call API
end

def self.intagram
	#call API
end

