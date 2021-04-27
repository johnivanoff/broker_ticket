class TicketType < ApplicationRecord
  belongs_to :hauler
  belongs_to :broker_ticket_type
end
