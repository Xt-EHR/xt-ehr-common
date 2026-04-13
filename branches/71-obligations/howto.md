# How to read this guide - EHDS Logical Information Models v0.4.0

* [**Table of Contents**](toc.md)
* **How to read this guide**

## How to read this guide

### Clinical information models as HL7 FHIR logical models

Logical information/data models offer a technology-neutral perspective on data. These models are designed to be more accessible and easier for clinical experts to process and validate the structure and content of data exchange. Models can be applied to various data exchange and storage standards. Logical information models define data elements along with their constraints and relationships. This approach enables the description of data requirements from a functional standpoint, without being tied to any specific technology or implementation.

The models approach used by Xt-EHR for EHDS follows the ISO 13972 standard "Health informatics — Clinical information models — Characteristics, structures and requirements."
 While the models are published as HL7 FHIR StructureDefinition resources (HL7 FHIR logical models), the models themselves are technology-agnostic and applicable to any data exchange standard.

The models use a subset of FHIR data types, but do not imply all the extensions or constraints that the FHIR format defines. Please see [Data types and references page](datatypes.md) for additional information about data types in the logical models.

The implementation guide follows the conventions of HL7 FHIR implementation guides, making it easy to read for those who are familiar with any other HL7 FHIR specifications. The specification is mostly intuitively understandable for most readers, but some basic tips for reading the guide might be useful for those who do not have prior FHIR experience.

### Differential vs Snapshot view

When navigating to a page of a model, the tab may open at the Differential view. This means, that in case the model is derived from another model, only the differences are shown on this page. 
 For example, the Laboratory Observation model is derived from the general Observation model, and adds a few constraints and elements that are specific to the laboratory use case. For derived models:

* The Differential view shows only the differences from the model it’s based on;
* The Key Elements view shows highlighted elements: this view is more useful for a FHIR profile, but does not provide much extra detail in the case of logical models;
* The Snapshot view shows the merged version of the two models and gives the best overview of the full model.

When the logical model is not derived (the first element in the model is of the data type “Base”), all three views appear equal.

### Tree vs Detailed view

When navigating to a page of a model, the default view is the Content tab that displays a compact tree view of the content. It displays:

* Data element name;
* Cardinality;
* Data type (which might be another model - click to navigate to the contained/referenced model);
* Short description of the element;
* Terminology binding (preferred code system);
* Definition - appears when hovering over the data element name.

Clicking on any data element name or “Detailed Descriptions” will take you to the detailed view of the model. There, all data elements and their descriptions appear on one page with all the potential extra information that might not be instantly visible in the tree format.

The amount of data elements displayed is still dependent on whether the model is opened in Differential, Key Elements or Snapshot view.

### Available formats

Every model in this guide is automatically available in at least the following formats: JSON, XML, XLSX and CSV. In addition, there are visual representations available in a tree and detailed view formats. These formats are all based on the HL7 FHIR StructureDefinition resource.

Every use case is also equipped with diagrams that give an overview of how different models relate to each other. These diagrams may not have all the detailed technical information, but they are easier to read for non-technical experts and provide a good starting point for any new implementer.

Read more about different visual representations above and more about download options below.

### Logical models vs FHIR profiles?

The models in this implementation guide follow the ISO Clinical Information Models standard approach and represent the logical/clinical view of the data. Even though FHIR data types and FHIR metadata resources are used for publishing the models, the content itself is not specific to HL7 FHIR or any other data exchange or storage standard or its implementation.

In order to implement actual data exchange, these models need to be realised as dedicated HL7 FHIR implementation guides. While models are all derived from the FHIR Base resource, actual data exchange is based on various FHIR resources that correspond to the content of the logical models. In order to ensure consistency between models and FHIR profiles, mappings between models and FHIR profiles are created in HL7 Europe FHIR implementation guides.

Read more about [HL7 FHIR logical models](https://hl7.org/fhir/logical.html)

### Download options

You can download the content of the implementation guide by a single artifact or in bulk.

For downloading a single model navigate to the page of that artifact and find the desired format. JSON, XML, and TTL are available as tabs on top of the page. Open the one you’re interested in and click **Download** or copy the raw version of the code directly from the page.

In order to download the model in a spreadsheet format, navigate to the very bottom of the page and use XLSX / CSV download.

For bulk download, navigate to the [Download](downloads.md) page.

For FSH version of artifacts, PLANTUML diagrams, or the source code for any other parts of this implementation guide, navigate to the source code in [GitHub](https://github.com/Xt-EHR/xt-ehr-common).

