class Introduction < ApplicationRecord
  belongs_to :user,optional: true
  belongs_to :board,optional: true
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :category

  after_initialize :set_default_values

  private
  def set_default_values
    self.permission ||= false if self.permission.nil?
  end
end
