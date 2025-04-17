Alias: $actor-prescribing-system = https://www.xt-ehr.eu/specifications/fhir/actor-prescribing-system
Alias: $actor-dispensing-system = https://www.xt-ehr.eu/specifications/fhir/actor-dispensing-system

Instance: actor-prescriber
InstanceOf: ActorDefinition
Title: "Prescriber Actor"
Description: """An actor which produces medication prescriptions."""
Usage: #example
* url = $actor-prescribing-system
* name = "Prescriber"
* status = #active
* type = #system

Instance: actor-dispenser
InstanceOf: ActorDefinition
Title: "Dispenser Actor"
Description: """An actor which manages dispensing of medication prescriptions."""
Usage: #example
* url = $actor-dispensing-system
* name = "Dispenser"
* status = #active
* type = #system
