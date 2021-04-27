class TicketType < ApplicationRecord
  belongs_to :hauler
  has_one :broker_ticket_type
end
