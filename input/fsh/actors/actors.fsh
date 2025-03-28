Alias: $actor-prescribing-system = https://www.xt-ehr.eu/specifications/fhir/actor-actor-prescribing-system
Alias: $actor-dispensing-system = https://www.xt-ehr.eu/specifications/fhir/actor-dispensing-system
Alias: $actor-ncp-system = https://www.xt-ehr.eu/specifications/fhir/actor-ncp-system
Alias: $actor-ehr-system = https://www.xt-ehr.eu/specifications/fhir/actor-ehr-system


Instance: actor-prescribing-system
InstanceOf: ActorDefinition
Title: "Actor Prescribing System"
Description: """A system which has functions to create medication prescriptions."""
Usage: #example
* url = $actor-prescribing-system
* name = "Prescribing System"
* status = #active
* type = #system

Instance: actor-dispensing-system
InstanceOf: ActorDefinition
Title: "Actor Dispensing System"
Description: """A system which has functions to support and record dispensing of medication prescriptions."""
Usage: #example
* url = $actor-dispensing-system
* name = "Dispensing System"
* status = #active
* type = #system


// do we need this or will MyHealth@EU specify the requirements?
Instance: actor-ncp-system
InstanceOf: ActorDefinition
Title: "Actor National Contact Point System"
Description: """A National Contact Point for eHealth."""
Usage: #example
* url = $actor-ncp-system
* name = "NCP System"
* status = #active
* type = #system

Instance: actor-ehr-system
InstanceOf: ActorDefinition
Title: "Actor Generic EHR System"
Description: """A generic EHR system."""
Usage: #example
* url = $actor-ehr-system
* name = "EHR System"
* status = #active
* type = #system