

### Overview

Obligations are a mean offered by HL7 FHIR to specify functional capabilities that defined actors MAY, SHOULD or SHALL to the data elements specified by the profiles.

This page describes the actors and functional use cases that have been defined for specifying the obligations.

### Actors and use cases

<!-- {% include fsh-link-references.md %} -->

Three actors have been specified:
<!-- * the [Creator](ActorDefinition-actor-creator-eu-lab.html) ; -->
<!-- * the [Repository](ActorDefinition-actor-repos-eu-lab.html) ; and -->
<!-- * the [Consumer](ActorDefinition-actor-consumer-eu-lab.html) -->

* Result report creator
* Result report repository
* Result report consumer

The first is the actor creating the report. This report can be send to a consumer or to a repository for report storage and sharing.
The second actor is the system maintaining a copy of the report received, to store and make it available for the consumers.
The last actor is the system using the report received or retrieved.

<p>{% include lab-actors.svg %}</p>

