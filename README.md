```
$ docker build -t broker_tickets .
$ docker-compose up
$ docker-compose exec web bin/rails db:prepare
$ docker-compose exec web bin/rails db:seed
$ docker-compose exec web bin/rails
> broker_ticket_type = BrokerTicketType.last
> ticket_type = TicketType.last

> ticket_type
=> 
#<TicketType:0x000055f4f40b6780
 id: 6,
 name: "new dumpster delivery",
 hauler_id: 7,
 created_at: Tue, 27 Apr 2021 03:01:38.686938000 UTC +00:00,
 updated_at: Tue, 27 Apr 2021 03:01:38.686938000 UTC +00:00,
 broker_ticket_type_id: nil>

> ticket_type.broker_ticket_type_id
=> nil
> ticket_type.broker_ticket_type_id = broker_ticket_type.id
> ticket_type.save
> ticket_type.reload
  TicketType Load (4.1ms)  SELECT "ticket_types".* FROM "ticket_types" WHERE "ticket_types"."id" = ? LIMIT ?  [["id", 6], ["LIMIT", 1]]
=> 
#<TicketType:0x000055f4f40b6780
 id: 6,
 name: "new dumpster delivery",
 hauler_id: 7,
 created_at: Tue, 27 Apr 2021 03:01:38.686938000 UTC +00:00,
 updated_at: Tue, 27 Apr 2021 03:16:42.445132000 UTC +00:00,
 broker_ticket_type_id: 4>


> ticket_type.broker_ticket_type.name
=> "new delivery"
> broker_ticket_type.ticket_types.map{ |x| x.name }
=> ["new dumpster delivery"]
```
