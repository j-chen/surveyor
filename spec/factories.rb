# http://github.com/thoughtbot/factory_girl/tree/master

Factory.define :survey do |s|
  s.title	      	{"Simple survey"}
  s.description		{"A simple survey for testing"}
  s.access_code		{"simple_survey"}
  s.active_at	  	{Time.now}
  s.inactive_at		{}
  s.css_url		    {}
end

Factory.sequence(:survey_section_display_order){|n| n }

Factory.define :survey_section do |s|
  s.association               :survey # s.survey_id                 {}
  s.title		                  {"Demographics"}
  s.description	              {"Asking you about your personal data"}
  s.display_order	            {Factory.next :survey_section_display_order}
  s.reference_identifier		  {"demographics"}
  s.data_export_identifier		{"demographics"}
end

Factory.sequence(:question_display_order){|n| n }

Factory.define :question do |s|
  s.association             :survey_section  # s.survey_section_id       {}
  s.text		                {"What is your favorite color?"}
  s.short_text		          {"favorite_color"}
  s.help_text	        	    {"just write it in the box"}
  s.pick	            	    {:none}
  s.display_type	    	    {} # nil is default
  s.display_order	    	    {Factory.next :question_display_order}
  s.question_group_id		    {}
  s.is_mandatory	    	    {false}
  s.reference_identifier		{|me| "q_#{me.object_id}"}
  s.data_export_identifier	{}
  s.display_width       		{}
end

Factory.sequence(:answer_display_order){|n| n }

Factory.define :answer do |a|
  a.association               :question  # a.question_id               {}
  a.text	                  	{"My favorite color is clear"}
  a.short_text            		{"clear"}
  a.help_text	              	{"Clear is the absense of color"}
  a.weight		                {}
  a.response_class        		{"String"}
  a.display_order	        	  {}
  a.is_exclusive	        	  {}
  a.hide_label    		        {}
  a.reference_identifier		  {}
  a.data_export_identifier		{}
  a.common_data_identitier		{}
  a.max_value	              	{}
  a.min_value	              	{}
  a.length		                {}
  a.decimal_precision     		{}
  a.allow_negative	          {}
  a.allow_blank		            {}
  a.unit		                  {}
  a.display_length		        {}
end

Factory.define :dependency do |d|
  # the dependent question
  d.association       :question # d.question_id       {}
  d.rule              {"1"}
end

Factory.define :dependency_condition do |d|
  d.association       :dependency # d.dependency_id    {}
  d.rule_key          {"1"}
  # the conditional question
  d.question_id       {}
  d.operator          {"=="}
  d.answer_id         {}
  d.datetime_value    {}
  d.integer_value     {}
  d.float_value       {}
  d.unit              {}
  d.text_value        {}
  d.string_value      {}
  d.response_other    {}
end

Factory.define :response_set do |r|
  r.user_id	        {}
  r.association     :survey # r.survey_id       {}
  r.access_code	    {ResponseSet.make_tiny_code}
  r.started_at	    {Time.now}
  r.completed_at		{}
end

Factory.define :response do |r|
  r.association       :response_set # r.response_set_id   {}
  r.question_id	    	{}
  r.answer_id	      	{}
  r.datetime_value		{}
  r.integer_value	  	{}
  r.float_value	      {}
  r.unit      	      {}
  r.text_value	      {}
  r.string_value	  	{}
  r.response_other		{}
  r.response_group		{}
end
