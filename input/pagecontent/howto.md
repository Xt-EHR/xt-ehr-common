### Clinical information models as HL7 FHIR logical models  

Information models, also known as logical data models, offer a technology-neutral perspective on data. These models are designed to be more accessible and easier for clinical experts to process and validate. They can be applied to various data exchange and storage standards. Logical data models define data elements along with their constraints and relationships. This approach enables the description of data requirements from a functional standpoint, without being tied to any specific technology or implementation.  

The information models approach used by Xt-EHR for EHDS follows the ISO 13972 standard "Health informatics — Clinical information models — Characteristics, structures and requirements."  
While the logical models are published as HL7 FHIR StructureDefinition resources, the models themselves are technology-agnostic and applicable to any data exchange standard.  
  
The implementation guide follows the conventions of all HL7 FHIR implementation guides, making it easy to read for those who are familiar with any other HL7 FHIR specifications. The specification is mostly intuitively understandable, but some basic tips for reading the guide might be handy for those who do not have prior FHIR experience.   


### Differential vs Snapshot view  
  
When navigating to a page of a logical model, the default tab that opens is the Differential view. This means, that in case the model is derived from another model, only the differences are shown on this page.   
For example, the Laboratory Observation model is derived from the general Observation model, and only adds a few constraints and elements that are specific to the laboratory use case. For derived models:  
- The Differential view shows only the differences from the model it’s based on;  
- The Key Elements view shows highlighted elements: this view is more useful for a FHIR profile, but does not provide much extra detail in the case of logical models;  
- The Snapshot view shows the merged version of the two models and gives the best overview of the full model.  

When the logical model is not derived (the first element in the model is of the data type “Base”), all three views appear equal.  


### Tree vs Detailed view   
  
When navigating to a page of a logical model, the default view is the Content tab that displays a compact tree view of the content. It displays:  
- Data element name  
- Cardinality  
- Data type (which might be another logical data model - click to navigate to the contained model)  
- Short description of the element  
- Terminology binding (preferred code system)  
- Definition - appears when hovering over the data element name  
  
Clicking on any data element name or “Detailed Descriptions” will take you to the detailed view of the model. There, all data elements and their descriptions appear on one page with all the potential extra information that might not be instantly visible in the tree format.  
  
The amount of data elements displayed is still dependent on whether the model is opened in Differential, Key Elements or Snapshot view.   


### Data types and references  
  
Logical models use FHIR data types for defining data types, but with less constraints and also less options compared to the FHIR specification. The following data types are used in logical models:  

|**Type**|**Description**|**Notes**|  
|Base|Base data type is a grouper element for its children elements. It does not have a value.||  
|string|A sequence of UNICODE characters.|Constraints introduced to string by FHIR are not implied for other formats|  
|dateTime|Date and time with the precision needed for the use case (year or millisecond)|FHIR format is not implied|  
|date|Date without the exact time.|FHIR format is not implied.|  
|time|Time during the day, without the date being present.|FHIR format is not implied.|  
|Period|Two dateTimes marking a period of from the first dateTime to the second dateTime. Precision is decided by the use case.||  
|CodeableConcept|Coded value. Code, display name, and code system are expected, but sometimes they may be implicit.|In FHIR, CodeableConcept also includes ‘text’ element. In logical models, ‘text’ instead of code should only be considered as a fallback mechanism, not a design option. When text and code are both acceptable, it is explicitly stated in the logical model.|  
|integer|A whole number, positive or negative according to the use case.||  
|decimal|A number that consists of a whole and a fractional part. Precision is dependent on the use case.|Note that every format has its constraints on decimals to be aware of.|  
|Quantity|Integer or decimal accompanied with a unit (preferrably a coded concept).|FHIR has a number of profiles and extensions on Quantity, these are not implied in the logical models unless explicitly stated in element description.|  
|Range|Two quantities with the first one indicating the minimum and the second one indicating the maximum (e.g 2mg - 4mg)||  
|Ratio|Ratio of two quantities, typically used for values like “1 tablet per 4 hours” and “800ml per 1 day.||   
|boolean|A binary value of true/false.|Always needs the specified default value when element not present.|  
|Identifier|A logical reference to a real-life entity registered in a system. Identifier needs to be coupled with its source system, but in some cases it may be implicit.|FHIR format and additions are not implied.|  
|Any EHDS model|When a data type is marked as EHDSModelName, a contained or referenced block of data is expected from the named model.||  
{:.table-bordered .table-striped .thead-light}  

In some cases a choice between data types is allowed. In that case, the grouper element is marked with [x] and slices for that element are automatically created for each allowed data type. Usually, only one choice out of the options is allowed to be used at any given time.

Knowing if a block of data is technically included as a reference to another block or physically contained is not possible in a logical model. In some cases, a reference is most likely, but there are always exceptions, and the line is never clear. Therefore, when one model contains other models, the logical model does not define whether it should be referenced or contained within the messaging standard.


### Available formats 

Every logical model in this guide is automatically available in at least the following formats: JSON, XML, XLSX and CSV. In addition, there are visual representations available in a tree and detailed view formats. These formats are all based on the HL7 FHIR StructureDefinition resource.  

Every use case is also equipped with diagrams that give an overview of how different models relate to each other. These diagrams may not have all the detailed technical information, but they are easier to read for non-technical experts and provide a good starting point for any new implementer.

Read more about different visual representations above and more about download options below.  

### Once more, is it FHIR or not?

The logical data models in this implementation guide follow the ISO Clinical Information Models standard approach and represent the logical/clinical view of the data. Even though FHIR data types and FHIR metadata resources are used for publishing the models, the content itself is not specific to HL7 FHIR or any other data exchange or storage standard or its implementation.   

In order to model actual data exchange these logical data models need to be realised as dedicated FHIR Implementation Guides. While logical models are all derived from the FHIR Base resource, actual data exchange is based on various FHIR resources that correspond to the content of the logical models. In order to ensure consistency between logical data models and FHIR profiles, mappings are created in every FHIR implementation guide.

Read more about [HL7 FHIR logical models](https://hl7.org/fhir/logical.html)

### Download options

You can download the content of the implementation guide by a single artifact or in bulk.

For downloading a single logical data model navigate to the page of that artifact and find the desired format.
JSON, XML, and TTL are available as tabs on top of the page. Open the one you’re interested in and click *Download* or copy the raw version of the code directly from the page.

In order to download the model in a spreadsheet format, navigate to the very bottom of the page and use XLSX / CSV download.

For bulk download, navigate to the [Download](download.html) page. 

For FSH version of artifacts, PLANTUML diagrams, or the source code for any other parts of this implementation guide navigate to the source code in GitHub (see the link on Home page).

