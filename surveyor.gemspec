# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{surveyor}
  s.version = "0.3.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Brian Chamberlain", "Mark Yoon"]
  s.date = %q{2009-09-28}
  s.email = %q{yoon@northwestern.edu}
  s.extra_rdoc_files = [
    "README.md"
  ]
  s.files = [
    ".gitignore",
     "MIT-LICENSE",
     "README.md",
     "Rakefile",
     "VERSION",
     "app/controllers/surveying_controller.rb",
     "app/helpers/survey_form_builder.rb",
     "app/helpers/surveying_helper.rb",
     "app/models/answer.rb",
     "app/models/dependency.rb",
     "app/models/dependency_condition.rb",
     "app/models/question.rb",
     "app/models/question_group.rb",
     "app/models/response.rb",
     "app/models/response_set.rb",
     "app/models/survey.rb",
     "app/models/survey_section.rb",
     "app/views/answer_display_types/_any_answer.html.haml",
     "app/views/answer_display_types/_any_other_and_string.html.haml",
     "app/views/answer_display_types/_any_string.html.haml",
     "app/views/answer_display_types/_date.html.haml",
     "app/views/answer_display_types/_datetime.html.haml",
     "app/views/answer_display_types/_default.html.haml",
     "app/views/answer_display_types/_float.html.haml",
     "app/views/answer_display_types/_grid_any_answer.html.haml",
     "app/views/answer_display_types/_grid_default.html.haml",
     "app/views/answer_display_types/_grid_float.html.haml",
     "app/views/answer_display_types/_grid_integer.html.haml",
     "app/views/answer_display_types/_grid_one_answer.html.haml",
     "app/views/answer_display_types/_grid_string.html.haml",
     "app/views/answer_display_types/_integer.html.haml",
     "app/views/answer_display_types/_one_answer.html.haml",
     "app/views/answer_display_types/_one_string.html.haml",
     "app/views/answer_display_types/_repeater_integer.html.haml",
     "app/views/answer_display_types/_repeater_string.html.haml",
     "app/views/answer_display_types/_string.html.haml",
     "app/views/answer_display_types/_text.html.haml",
     "app/views/answer_display_types/_time.html.haml",
     "app/views/layouts/surveyor_default.html.erb",
     "app/views/question_display_types/_default.html.haml",
     "app/views/question_display_types/_dropdown.html.haml",
     "app/views/question_display_types/_grid_default.html.haml",
     "app/views/question_display_types/_grid_dropdown.html.haml",
     "app/views/question_display_types/_group_default.html.haml",
     "app/views/question_display_types/_group_dropdown.html.haml",
     "app/views/question_display_types/_image.html.haml",
     "app/views/question_display_types/_inline.html.haml",
     "app/views/question_display_types/_label.html.haml",
     "app/views/question_display_types/_repeater_default.html.haml",
     "app/views/question_display_types/_repeater_dropdown.html.haml",
     "app/views/question_display_types/_slider.html.haml",
     "app/views/question_group_display_types/_default.html.haml",
     "app/views/question_group_display_types/_grid.html.haml",
     "app/views/question_group_display_types/_repeater.html.haml",
     "app/views/surveying/edit.html.haml",
     "app/views/surveying/index.html.erb",
     "app/views/surveying/new.html.haml",
     "app/views/surveying/show.html.haml",
     "config/routes.rb",
     "generators/surveyor/surveyor_generator.rb",
     "generators/surveyor/templates/README",
     "generators/surveyor/templates/assets/images/222222_11x11_icon_arrows_leftright.gif",
     "generators/surveyor/templates/assets/images/222222_11x11_icon_arrows_updown.gif",
     "generators/surveyor/templates/assets/images/222222_11x11_icon_close.gif",
     "generators/surveyor/templates/assets/images/222222_11x11_icon_doc.gif",
     "generators/surveyor/templates/assets/images/222222_11x11_icon_folder_closed.gif",
     "generators/surveyor/templates/assets/images/222222_11x11_icon_folder_open.gif",
     "generators/surveyor/templates/assets/images/222222_11x11_icon_minus.gif",
     "generators/surveyor/templates/assets/images/222222_11x11_icon_plus.gif",
     "generators/surveyor/templates/assets/images/222222_11x11_icon_resize_se.gif",
     "generators/surveyor/templates/assets/images/222222_35x9_colorpicker_indicator.gif.gif",
     "generators/surveyor/templates/assets/images/222222_7x7_arrow_down.gif",
     "generators/surveyor/templates/assets/images/222222_7x7_arrow_left.gif",
     "generators/surveyor/templates/assets/images/222222_7x7_arrow_right.gif",
     "generators/surveyor/templates/assets/images/222222_7x7_arrow_up.gif",
     "generators/surveyor/templates/assets/images/454545_11x11_icon_arrows_leftright.gif",
     "generators/surveyor/templates/assets/images/454545_11x11_icon_arrows_updown.gif",
     "generators/surveyor/templates/assets/images/454545_11x11_icon_close.gif",
     "generators/surveyor/templates/assets/images/454545_11x11_icon_doc.gif",
     "generators/surveyor/templates/assets/images/454545_11x11_icon_folder_closed.gif",
     "generators/surveyor/templates/assets/images/454545_11x11_icon_folder_open.gif",
     "generators/surveyor/templates/assets/images/454545_11x11_icon_minus.gif",
     "generators/surveyor/templates/assets/images/454545_11x11_icon_plus.gif",
     "generators/surveyor/templates/assets/images/454545_7x7_arrow_down.gif",
     "generators/surveyor/templates/assets/images/454545_7x7_arrow_left.gif",
     "generators/surveyor/templates/assets/images/454545_7x7_arrow_right.gif",
     "generators/surveyor/templates/assets/images/454545_7x7_arrow_up.gif",
     "generators/surveyor/templates/assets/images/888888_11x11_icon_arrows_leftright.gif",
     "generators/surveyor/templates/assets/images/888888_11x11_icon_arrows_updown.gif",
     "generators/surveyor/templates/assets/images/888888_11x11_icon_close.gif",
     "generators/surveyor/templates/assets/images/888888_11x11_icon_doc.gif",
     "generators/surveyor/templates/assets/images/888888_11x11_icon_folder_closed.gif",
     "generators/surveyor/templates/assets/images/888888_11x11_icon_folder_open.gif",
     "generators/surveyor/templates/assets/images/888888_11x11_icon_minus.gif",
     "generators/surveyor/templates/assets/images/888888_11x11_icon_plus.gif",
     "generators/surveyor/templates/assets/images/888888_7x7_arrow_down.gif",
     "generators/surveyor/templates/assets/images/888888_7x7_arrow_left.gif",
     "generators/surveyor/templates/assets/images/888888_7x7_arrow_right.gif",
     "generators/surveyor/templates/assets/images/888888_7x7_arrow_up.gif",
     "generators/surveyor/templates/assets/images/dadada_40x100_textures_02_glass_75.png",
     "generators/surveyor/templates/assets/images/e6e6e6_40x100_textures_02_glass_75.png",
     "generators/surveyor/templates/assets/images/ffffff_40x100_textures_01_flat_0.png",
     "generators/surveyor/templates/assets/images/ffffff_40x100_textures_02_glass_65.png",
     "generators/surveyor/templates/assets/javascripts/accessibleUISlider.jQuery.js",
     "generators/surveyor/templates/assets/javascripts/jquery-1.2.6.js",
     "generators/surveyor/templates/assets/javascripts/jquery-ui-personalized-1.5.3.js",
     "generators/surveyor/templates/assets/javascripts/jquery.form.js",
     "generators/surveyor/templates/assets/javascripts/surveyor.js",
     "generators/surveyor/templates/assets/stylesheets/jquery-ui-slider-additions.css",
     "generators/surveyor/templates/assets/stylesheets/reset.css",
     "generators/surveyor/templates/assets/stylesheets/sass/surveyor.sass",
     "generators/surveyor/templates/assets/stylesheets/surveyor.css",
     "generators/surveyor/templates/assets/stylesheets/ui.theme.css",
     "generators/surveyor/templates/initializers/haml.rb",
     "generators/surveyor/templates/initializers/surveyor.rb",
     "generators/surveyor/templates/migrate/create_answers.rb",
     "generators/surveyor/templates/migrate/create_dependencies.rb",
     "generators/surveyor/templates/migrate/create_dependency_conditions.rb",
     "generators/surveyor/templates/migrate/create_question_groups.rb",
     "generators/surveyor/templates/migrate/create_questions.rb",
     "generators/surveyor/templates/migrate/create_response_sets.rb",
     "generators/surveyor/templates/migrate/create_responses.rb",
     "generators/surveyor/templates/migrate/create_survey_sections.rb",
     "generators/surveyor/templates/migrate/create_surveys.rb",
     "generators/surveyor/templates/surveys/kitchen_sink_survey.rb",
     "init.rb",
     "install.rb",
     "lib/surveyor/config.rb",
     "lib/tasks/surveyor_tasks.rake",
     "lib/tiny_code.rb",
     "lib/xml_formatter.rb",
     "script/surveyor/answer.rb",
     "script/surveyor/columnizer.rb",
     "script/surveyor/dependency.rb",
     "script/surveyor/dependency_condition.rb",
     "script/surveyor/question.rb",
     "script/surveyor/question_group.rb",
     "script/surveyor/specs/answer_spec.rb",
     "script/surveyor/specs/question_dependency_spec.rb",
     "script/surveyor/specs/question_group_spec.rb",
     "script/surveyor/specs/question_spec.rb",
     "script/surveyor/specs/section_spec.rb",
     "script/surveyor/survey.rb",
     "script/surveyor/survey_parser.rb",
     "script/surveyor/survey_section.rb",
     "script/surveyor/whr_dsl.tmproj",
     "spec/controllers/surveying_controller_spec.rb",
     "spec/factories.rb",
     "spec/models/answer_spec.rb",
     "spec/models/dependency_condition_spec.rb",
     "spec/models/dependency_spec.rb",
     "spec/models/question_group_spec.rb",
     "spec/models/question_spec.rb",
     "spec/models/response_set_spec.rb",
     "spec/models/response_spec.rb",
     "spec/models/survey_section_spec.rb",
     "spec/models/survey_spec.rb",
     "spec/rcov.opts",
     "spec/spec.opts",
     "spec/spec_helper.rb",
     "surveyor.gemspec",
     "uninstall.rb"
  ]
  s.homepage = %q{http://github.com/breakpointer/surveyor}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.4}
  s.summary = %q{A rails (gem) plugin to enable surveys in your application}
  s.test_files = [
    "spec/controllers/surveying_controller_spec.rb",
     "spec/factories.rb",
     "spec/models/answer_spec.rb",
     "spec/models/dependency_condition_spec.rb",
     "spec/models/dependency_spec.rb",
     "spec/models/question_group_spec.rb",
     "spec/models/question_spec.rb",
     "spec/models/response_set_spec.rb",
     "spec/models/response_spec.rb",
     "spec/models/survey_section_spec.rb",
     "spec/models/survey_spec.rb",
     "spec/spec_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<haml>, [">= 0"])
    else
      s.add_dependency(%q<haml>, [">= 0"])
    end
  else
    s.add_dependency(%q<haml>, [">= 0"])
  end
end
