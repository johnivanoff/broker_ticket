class AddBrokerTypeToTicketType < ActiveRecord::Migration[6.1]
  def change
    add_column :ticket_types, :broker_type_id, :integer
  end
end
