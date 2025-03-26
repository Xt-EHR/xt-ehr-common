Alias: $actor-prescribing-system = https://www.xt-ehr.eu/specifications/fhir/actor-actor-prescribing-system
Alias: $actor-dispensing-system = https://www.xt-ehr.eu/specifications/fhir/actor-dispensing-system

Instance: actor-prescribing-system
InstanceOf: ActorDefinition
Title: "Actor Prescribing System"
Description: """A system which has functions to create medication prescriptions."""
Usage: #example
* url = $actor-prescribing-system
* name = "PrescribingSystem"
* status = #active
* type = #system

Instance: actor-dispensing-system
InstanceOf: ActorDefinition
Title: "Actor Dispensing System"
Description: """A system which has functions to support and record dispensing of medication prescriptions."""
Usage: #example
* url = $actor-dispensing-system
* name = "DispensingSystem"
* status = #active
* type = #system
