### Choice of common models
WP6 and WP7 identified a list of data objects (including complex data types) that are used across all use cases and should be described in a consistent way. Common data objects were identified using eHN Guidelines and X-eHealth documentation, and prioritised as follows:
- **Patient**
- **Practitioner**
- **Organisation**
- **Medication**
- **Human Name**
- **Address**
- **ContactInformation**

Other candidates for common models: Procedure, Condition, Specimen, Encounter, Anatomical Location, Location, OrganisationPart, Payer.

Please see the [Artifacts](artifacts.html) page for eHN datasets and EEHRxF models.

### eHN Guidelines Datasets

All [eHN Guidelines](https://health.ec.europa.eu/ehealth-digital-health-and-care/eu-cooperation/ehealth-network_en#ehealth-network-guidelines) have a list of data elements required/proposed for the particular use case. 
eHN Subgroup of Semantics created a task force to analyse the consistency of guidelines, including the tables with data elements across different use cases. The task force concluded that the same data is often modelled/described differently in different guidelines, and proposed harmonisation of data elements and their description (see [the results](https://docs.google.com/spreadsheets/d/1JGA4xk68xdCC8qOQlu4SXiMYFftoT_fJAENBIZK1bis/edit?gid=1521819365#gid=1521819365)).

eHN Guidelines datasets cannot be transformed into computable logical models directly for the following reasons:
- granularity of modelling is insufficient (subelements might be mentioned in the textual description);
- cardinality is not provided (0..* or 1..1 cardinalities have a clear impact for implementation);
- data types are not provided (often, they can be guessed, but not always). 

eHN Guidelines datasets as FHIR logical models are created from the consolidated models created by eHN Subgroup of Semantics consistency task force. This means that models might not exactly match any of the datasets in any of the guidelines. 

### EEHRxF Refined Models

eHN datasets refining to become computable logical models. When the consolidated data sets have been created, WP6 and WP7 review all of the models and propose changes (including deletions or additions) where needed.

After that, the next layer of data models can be built on common models. Granularity of a data model can be different across use cases. For example, medication on eDispensation would have information about the exact package dispensed, while Patient Summary would only have a high-level overview of patient's medications. Xt-EHR Common IG will provide a common data model for Medication that includes maximum (within reasonable) amount of data elements for this model. Every use case is free to extend or reduce these models to make them fit for their exact use case.

### Data types

FHIR or ISO data types?

### Considerations and Decisions

- Patient and Practitioner will not have an underlying Person object.
- All cardinalities for eHN datasets elements are provided as 0..* unless the text specifically states otherwise.
- Data types are guessed from the description. If subelements are expected, the data type is BackboneElement.
- Preferred code systems are provided in textual description.
