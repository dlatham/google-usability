class Result < ActiveRecord::Base
  belongs_to :test
  include RailsSortable::Model
  #set_sortable :sort  # Indicate a sort column
  # If you do NOT want timestamps to be updated on sorting, use the following option.
  set_sortable :sort, without_updating_timestamps: true
  #handle the sorting here so i don't need to do it in the controllers
  default_scope { order("sort ASC") }
end
