module Sex
	module Expressions

		def starts_with_exp(what)
			/^#{Regexp.escape(what)}/
		end
		
		def ends_with_exp(what)
			/#{Regexp.escape(what)}$/
		end
		
		def contains_exp(what, case_sensitive = false)
			pattern = "#{Regexp.escape(what)}+?"
			case_sensitive ? /#{pattern}/ : /#{pattern}/i
		end
		

	end
end