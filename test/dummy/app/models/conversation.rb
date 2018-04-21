class Conversation < ApplicationRecord
  enum status: [:active, :archived]
end
