// Based on output from eHN Semantic SG, Consistency task force
// https://docs.google.com/spreadsheets/d/1JGA4xk68xdCC8qOQlu4SXiMYFftoT_fJAENBIZK1bis/edit?gid=1521819365#gid=1521819365
// All cardinalities 0..*, data types are given as the best guess.

/*
Logical: EHNMedication
Title: "eHN Medication"
Description: "eHN Dataset for medication"
Characteristics: #can-be-target

* productName 0..* string "Name of the medicinal product" "Name of the medicinal product. It has to be noted, that according to Implementing Directive 2012/52/EU additional requirements may apply."
* identifierMedicinalProduct 0..* Identifier "Identifier/code of the medicinal product" "Identifier of a medicinal product refers to the product inside the package, not the packaged item as such. It could be MPID according to ISO 11615, EMA PMS ID and/or a national identifier." 
* identifierPharmaceuticalProduct 0..* Identifier "Identifier(s) of the pharmaceutical product" "Identifier of a pharmaceutical product refers to unique PhPID according to ISO 11616. This could be a part of a description of a specific medicinal product or an attribute of a generic prescription."
* identifierPackagedProduct 0..* Identifier "Identifier/code of the packaged medicinal product" "Identifier of a packaged medicinal product refers to a specific pack size of a specific product. It could be PCID according to ISO 11615 and/or its national equivalent."
* mah 0..* string "Marketing authorisation holder" "Organisation that holds the marketing authorisation of the prescribed product."
* activeSubstance 0..* CodeableConcept "Active substance" "All active substances according to ISO 11238. Referred to by common name in implementing directive 2012/52/EU." 
* strength 0..* string "Strength of the active substance" "The content of the active ingredient expressed quantifiably per dosage unit, per unit of volume or per unit of weight, according to the pharmaceutical dose form. Example: 500 mg per tablet"
* classification 0..* CodeableConcept "Product classification" "WHO ATC code of the product." 
* doseForm 0..* CodeableConcept "Pharmaceutical dose form" "Dose form of a product could be either authorised dose form (includes EDQM combination pack dose forms), administrable dose form or manufactured item dose form. It must be made clear which type of dose forms are provided. For example, for the same product several different dose forms can be provided: powder and solvent for solution for injection as authorised dose form, solution for injection as administrable dose form, and powder and solvent as the dose forms for the manufactured items in the inner packaging. Referred to by pharmaceutical formulation in implementing directive 2012/52/EU."
* unitOfPresentation 0..* CodeableConcept "Unit of presentation" "Unit of presentation is used as a unit when describing the strength, but according to ISO IDMP it is also a separate attribute of the pharmaceutical product and manufactured item." 
* packageType 0..* CodeableConcept "Package type" "Type of the container. Examples: bottle, blister, box." 
* packSize 0..* Base "Pack size" "Typically, the pack size is the number of unit of presentations in the package. It could also be presented using units of measurement (ml, g). In some cases, there is a need to refine the package size that it describes the amounts of different manufactured items in more than one inner packages. However, the overall amount of a prescribed product must be calculable from the pack size description." 

*/