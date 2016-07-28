class RegistryEvent < ApplicationRecord
  validates :original_id, presence: true, uniqueness: true
  after_create :sync_event_to_entity
  def sync_event_to_entity
    case self.action
    when 'push'
      Repository.find_or_create_by_repo_name self.repository
    when 'pull'
      Repository.find_or_create_by_repo_name(self.repository).increment! :pull_count unless self.actor == 'system-service'
    end
  end
end
