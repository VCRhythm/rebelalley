class CreateSurveyResults < ActiveRecord::Migration
  def change
    create_table :survey_results do |t|
      t.string :content

      t.timestamps
    end
  end
end
