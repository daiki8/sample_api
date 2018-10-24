class TimeCard < ApplicationRecord
    default_scope -> { order('created_at DESC') }
    validates :state, presence: true, inclusion: { in: %w(on off)}
end
