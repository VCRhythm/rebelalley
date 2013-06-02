# == Schema Information
#
# Table name: survey_results
#
#  id         :integer          not null, primary key
#  content    :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class SurveyResult < ActiveRecord::Base
  attr_accessible :content
end
