### Authoring logical information models

Xt-EHR Information models are published as FHIR Logical Models. While they may be represented similarly to the technical FHIR profiles, they remain representations of abstract data structures - simply captured as a technical artifact (a FHIR StructureDefinition) instead of a spreadsheet or document. These models are different and separate artifacts from the profiles. For example, a model for "Prescription" is defined independently of any resource or any FHIR release, and it may me mapped to its FHIR implementation as a MedicationRequest in FHIR R4 or FHIR R5 as well as to a CDA document or a custom national specification.
FHIR Implementation Guide for publishing information models is based on current FHIR R5 release, but this does not imply that the actual implementations would have to use the same FHIR version or FHIR.

#### Minimum metadata for a model:
**Name**: EHDSModelName - CamelCase name with prefix "EHDS". The name part may but does not necessarily follow the resource names in FHIR.  
**Title**: Model Name model – ortographically correct name of the model for human users.  
**Description**: Short description of the model. Significant limitations or considerations can be provided. Markdown allowed, but not recommended.  
**Parent**: marked in case the model is a specialisation of another model.  
**Resource type** (StructureDefinition) and **kind** (’logical’ as in Logical model) are implied.  

For models authored in FSH, the following information is created automatically by IG Publisher using the implementation guide configuration:  
- Id  
- URL  
- Version  
- Status  
- Date  
- Publisher  
- Contact  
- FHIR version  

#### Minimum metadata for a data element
**Name** – data element name starts with lowercase character, and every next word in the name is uppercase character (e.g goodNameExample). When the data element is a subelement, the name should typically not include the parent element name in order to avoid repetitions in path names (e.g when the parent is „example“ and the subelements are for the code and date of the example, name the subelements „code“ and „date“ and avoid „exampleCode“ and „exampleDate“ to avoid paths like „example.exampleCode“)  
**Data type** – Use FHIR data types or other logical models. Please see the list of allowed data types with their descriptions https://build.fhir.org/ig/Xt-EHR/xt-ehr-common/howto.html#data-types-and-references.   
**Cardinality** – There is no „soft“ cardinality in logical models, and all instances without providing a mandatory (1..) element are considered invalid. An ability for a system to populate an element (even though it may not be present in the data) is described through Obligations.  
**Definition** - the actual definition of the data element in the context of the model
**Short description** - this description is visible in the tree view of the model and should contain a definition or clarification about the element. It should be more informative than the element name itself. Short description does not have a length restriction, but the authors should consider the readability in the tree format. Longer texts can be provided in ’definition’ and ’comment’ elements.

In addition, the following elements are often filled in: 
**Definition** – allows markdown and longer descriptions, is not instantly visible in the tree view (appears when hovering the element or opening detailed view)  
**Binding** – Preferred code systems or value set definitions are provided as binding description. Actual value sets are typically not created by the project, as they might be implementation-specific or following a different authoring cycle. This includes binding strength.  
**Requirement** – reference to the source of the requirement (eHN guideline, MyHealth@EU requirements catalogue, ISO model, etc).  

#### Files and folders in GitHub

Every model is authored in a different FSH-file. File name corresponds to the model name, but without the EHDS-prefix. 
Files are allowed to include comments – these comments are visible to everyone in GitHub repository, so they should not include confidential information.


Default data types to use in FHIR logical models are FHIR data types. While these data types are physically constrained and dependent of a FHIR release, in the logical models they are used with a representative intent, and not impose on the physical format. For example, "dateTime" implies a specific format in FHIR resources, but in a logical model it is convened that these constraints may not apply in all cases, and some dateTime elements could have a different physical format. In other words, the logical models do not impose any physical constraints by default.

Only the following data types are allowed:


Additional information about the usage of the model can be added into *intro* and *notes* pages which will appear accordingly before or after the model on the logical model page.

### Change management process

