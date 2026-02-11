Alias: $actor-producer = https://www.xt-ehr.eu/specifications/fhir/actor-producer
Alias: $actor-consumer = https://www.xt-ehr.eu/specifications/fhir/actor-consumer

Instance: actor-producer
InstanceOf: ActorDefinition
Title: "Producer actor"
Description: """Actor where the system generates, structures, or makes electronic health data available for exchange; """
Usage: #example
* url = $actor-producer
* name = "Producer"
* status = #active
* type = #system

Instance: actor-consumer
InstanceOf: ActorDefinition
Title: "Consumer Actor"
Description: """Actor where the system receives, processes, or displays electronic health data originating from another system;"""
Usage: #example
* url = $actor-consumer
* name = "Consumer"
* status = #active
* type = #system