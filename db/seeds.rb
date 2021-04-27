# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
TicketType.destroy_all
Hauler.destroy_all
BrokerTicketType.destroy_all

haulers = Hauler.create([{ name: 'BD' }, { name: 'AMD' }])

TicketType.create(name: 'deliverynew', hauler: haulers.first)
TicketType.create(name: 'replace', hauler: haulers.last)
TicketType.create(name: 'new dumpster delivery', hauler: haulers.first)

BrokerTicketType.create(name: 'new delivery', description: 'this is a description')
BrokerTicketType.create(name: 'swap', description: 'this is a description')
BrokerTicketType.create(name: 'new delivery', description: 'this is a description')