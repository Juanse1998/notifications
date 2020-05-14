class Document < Sequel::Model
	plugin :validation_helpers
    def validate
    	super
        	validates_presence [:title, :topic, :id]
        	#Titulo único
  		end
		many_to_many  :users
		set_primary_key :id
end