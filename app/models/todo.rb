class Todo < ApplicationRecord

  validates :title, presence: true
  after_update_commit { broadcast_replace_to 'todos' }
  after_create_commit { broadcast_replace_to 'todos' }
  after_destroy_commit { broadcast_replace_to 'todos' }
end
