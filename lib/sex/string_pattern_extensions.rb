module Sex
	module StringPatternExtensions
		
		String.class_eval do 
			include Sex::Expressions
			
			def starts_with?(what)
				matches?(starts_with_exp(what))
			end
			
			def ends_with?(what)
				matches?(ends_with_exp(what))
			end
						
			def contains?(what, case_sensitive = false)
				matches?(contains_exp(what, case_sensitive))
			end
			
			def contains_a_number?
				matches?(/\d/)
			end
			
			def extract_grouped_numbers
				scan(/\d+/)
			end
			
			def strip_markup!
        gsub(/<\/?[^>]*>/, "")
			end
			
			private
				def matches?(pattern)
					!match(pattern).nil?
				end
				
		end
	end
end