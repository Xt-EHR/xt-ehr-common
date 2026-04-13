# Obligations Framework - EHDS Logical Information Models v0.4.0

* [**Table of Contents**](toc.md)
* **Obligations Framework**

## Obligations Framework

### Requirement levels

The obligation framework uses requirement levels SHALL, SHOULD and MAY according to the definitions in RFC 2119.

| | | |
| :--- | :--- | :--- |
| SHALL | Mandatory | Means that the definition is an absolute requirement of the specification. |
| SHOULD | Recommended | Means that there may exist valid reasons in particular circumstances to ignore a particular item, but the full implications must be understood and carefully weighed before choosing a different course. |
| MAY | Optional | Means that an item is truly optional. One vendor may choose to include the item because a particular marketplace requires it or because the vendor feels that it enhances the product while another vendor may omit the same item. An implementation which does not include a particular option MUST be prepared to interoperate with another implementation which does include the option, though perhaps with reduced functionality. In the same vein an implementation which does include a particular option MUST be prepared to interoperate with another implementation which does not include the option (except, of course, for the feature the option provides.) |

**Additional rule:**
 Omission of a SHALL element may be permitted only where the corresponding capability is permanently out of scope for the system. Such omission must be accompanied by a clear, explicit and verifiable written justification.

### Actors

Obligations are provided for two generic actors:

* **Producer**: A system that generates or makes available structured electronic health data for exchange. In this role, the system is responsible for being technically capable of populating the relevant data elements in accordance with the applicable **able-to-populate** obligations and for associating the required metadata, such as authorship, provenance, status, and temporal information, before the data are made available to downstream systems.
* **Consumer**: A system that receives electronic health data originating from another system and processes or displays that data. In this role, the system is responsible for ingesting and validating the received data and for preserving the meaning, structure, and associated metadata of the information in accordance with the applicable Consumer obligations (**display** or **process**), ensuring correct interpretation and presentation to end users or other systems.

The third defined actor, **Exchanger**, is a system or component that routes, brokers, or mediates the transfer of electronic health data without altering, enriching, or reinterpreting its content or semantics. Because an Exchanger does not modify the data it handles, it has no data-level obligations defined. If a system alters, enriches, or transforms data while relaying it, it is no longer acting as an Exchanger for that exchange and assumes the role of Producer for the resulting dataset.

A single system may perform different roles for different data categories or exchange scenarios. Obligations are therefore always assessed in relation to a specific role and within a declared scope.

### Obligation vs cardinality

Obligations and cardinality of data elements both signal requirements.

Cardinality requirements apply to every instance of data. For example, if the cardinality of an element is 1..*, all instances must have the element filled in with an appropriate value in order to pass the validation.

Obligation requirements apply to EHR systems and relate to system capabilities. SHALL **able-to-populate** means the data element must be supported in the EHR system. When the cardinality of such element is 0..* or 0..1, the system does not have to populate this element for every instance but only where the data is applicable and available.

### Authoring rules

* Obligations are authored in the derived models as an additional layer.
* Obligations use the [HL7 FHIR Obligations framework](https://hl7.org/fhir/R5/obligations.html) (including the required value sets)
* Obligation sets for the same model may differ between priority categories or context (e.g. EHDSDevice as an author of a document, laboratory test kit, or an implant).
* In case the obligation authors cannot reach an agreement on which requirement level to use, the weaker level is preferred.
* All elements with cardinality 1.. correspond to SHALL **able-to-populate**.
* When the mandatory element situates underneath an element that has no obligations, it does not have to be marked with a SHALL obligation, since there is no obligation on the parent and the cardinality ensures that the element is filled in when the parent element is used in data.
* SHOULD requirements are a strong recommendation and often candidates for future SHALLs.
* Terminology obligations are preferably provided as terminology bindings in the model (description only).
* Introducing default values for elements can be helpful for limiting the number of obligations (e.g. if numberOfRepeats is not provided, it is considered to be '0' - this allows systems that never allow repeats to be interoperable without filling in this data).
* When a polymorphic element is equipped with an obligation, then mark the obligation on element[x] level. In case one data type is preferred over others, mark it in the obligation documentation (e.g. System SHALL support at least Quantity data type for the element. System SHOULD support boolean data type for the element.).
* When a backbone element has an obligation SHOULD, MAY, or no obligation, the obligations of subelements would only apply when the block itself is implemented (similar to how cardinalities are interpreted). When the obligations of subelements are already clear from the cardinalities, the redundant obligations do not have to be provided unless needed for additional clarity (i.e. providing comments). Typically, the subelements should not have a stronger obligation than the upper level elements in the element tree.

### Obligations on logical models vs FHIR profiles

Logical information models are designed as the source of requirements. They do not serve well as implementable and testable specifications as they are independent of any specific implementation technology.

The requirements defined in logical models (including related obligations) are used as the basis for defining FHIR implementation guides. The logical models are realised as FHIR profiles on FHIR resources, and obligations are replicated for the corresponding elements in FHIR profiles. Mappings between logical models and FHIR profiles are provided in FHIR IGs.

Cross-border services derive requirements from the FHIR IGs, but may further restrict the specification and add or strengthen obligations where necessary.

