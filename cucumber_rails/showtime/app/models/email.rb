class Email < ActiveRecord::Base

	attr_accessible :mensagem, :para

	validates_presence_of :para

end
