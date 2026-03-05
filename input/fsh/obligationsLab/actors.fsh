/* Alias: $actor-producer = https://www.xt-ehr.eu/specifications/fhir/actor-producer
Alias: $actor-consumer = https://www.xt-ehr.eu/specifications/fhir/actor-consumer

Instance: actor-producer
InstanceOf: ActorDefinition
Title: "Producer"
Description: """A system that generates or makes available structured electronic health data for exchange. In this role, the system is responsible for being technically capable of populating the relevant data elements in accordance with the applicable “able-to-populate” obligations and for associating the required metadata, such as authorship, provenance, status, and temporal information, before the data are made available to downstream systems."""
Usage: #example
* url = $actor-producer
* name = "Producer"
* status = #active
* type = #system

Instance: actor-consumer
InstanceOf: ActorDefinition
Title: "Consumer"
Description: """A system that receives electronic health data originating from another system and processes or displays that data. In this role, the system is responsible for ingesting and validating the received data and for preserving the meaning, structure, and associated metadata of the information in accordance with the applicable Consumer obligations, ensuring correct interpretation and presentation to end users or other systems."""
Usage: #example
* url = $actor-consumer
* name = "Consumer"
* status = #active
* type = #system */