Logical: EHDSMedication
Title: "Medication model"
Description: "Logical model for prescribed/dispensed medication. The model is shared by statements, requests, dispensations, and treatment lines. Each of those may have different restrictions in FHIR profile. Model is suitable for generic/virtual medications as well as branded/real products."
Characteristics: #can-be-target
* ^status = #active

* identifyingCode[x] 0..* CodeableConcept or Identifier "Identifier or code for the product (virtual product, branded product or package). If several identifiers are specified, they shall not have conflicting meanings or very different granularities."
//  * ^comment = "Non-conflicting change"
* classification 0..* CodeableConcept "Classification (e.g. ATC; narcotic/psychotropic; orphan drug; etc.)"
  * ^binding.description = "WHO ATC"
  * ^binding.strength = #preferred
//  * ^comment = "No change"
* productName 0..1 string "Name of the product (full name, invented name, other). When the product has different names, the appropriate one for the context should be used. Translations of names can be provided."
//  * ^comment = "No change"
* marketingAuthorisationHolder 0..1 Base "Marketing authorisation holder or manufacturer of the medicinal product. Relevant for identifying the exact product."
//  * ^comment = "No change, but subelements added"
  * organisationName 0..1 string "Name of the organisation holding the authorisation for marketing/mahufacturing"
  * organisationIdentifier 0..* Identifier "Identifier of the organisation and/or its physical location"
* doseForm 0..1 CodeableConcept "Dose form(s) on a product level. Dose form for a single package item is defined below."
//  * ^comment = "No change"
  * ^binding.description = "EDQM Standard Terms"
  * ^binding.strength = #preferred
* packSize 0..* Quantity "Overall amount of product in one package (100ml; 20 tablets; 1 creme & 6 pessaries)"
//  * ^comment = "No change"
  * ^binding.description = "UCUM for units of measure. EDQM Standard Terms for units of presentation."
  * ^binding.strength = #preferred
* item 0..* Base "A medication item. For combination packs, this can be manufactured items with each item having its own dose form and ingredients+strengths defined"
//  * ^comment = "Structure changed, elements repeated for complex packages"
  * doseForm 0..1 CodeableConcept "Dose form"
  //  * ^comment = "No change"
    * ^binding.description = "EDQM Standard Terms"
    * ^binding.strength = #preferred
  * ingredient 1..* Base "Ingredients"
    * isActive 0..1 boolean "Marks if the ingredient is considered an active ingredient. Typically excipients are not needed, so by default active ingredients are expected."
    //  * ^comment = "Added"
    * substance 1..1 CodeableConcept "Substance"
      * ^binding.description = "EMA SPOR SMS"
      * ^binding.strength = #preferred
  //  * ^comment = "No conflicting change"
    * strengthInfo 0..1 Base "Strength of the product - amount of substance per unit"
      * strength 1..1 Ratio "Concentration or presentation strength, e.g 100mg/1ml or 500mg per 1 tablet"
      //  * ^comment = "No change"
//      * strengthType 0..1 CodeableConcept "Type of strength that is expressed"
//      //  * ^comment = "Added"
      * basisOfStrengthSubstance 0..1 CodeableConcept "Substance that the strength refers to, in case it's different from the main substance"
      //  * ^comment = "Added (eHN guidelines A.1.4.4.1 'in addition reference strength could be provided')"
        * ^binding.description = "EMA SPOR SMS"
        * ^binding.strength = #preferred
  * unitOfPresentation 0..1 CodeableConcept "Unit of presentation for the manufactured item (tablet, vial, tube). Typically, the smallest countable object in the package."
    * ^binding.description = "EDQM Standard Terms"
    * ^binding.strength = #preferred
  //  * ^comment = "No change"
  * containedQuantity 0..1 Ratio "Manufactured item quantity for liquids (3ml / 1 vial)"
  //  * ^comment = "Added (eHN guidelines A.1.4.9 mention layered structure for describing a package)"
//    * ^binding.description = "UCUM for units of measure. EDQM Standard Terms for units of presentation."
//    * ^binding.strength = #preferred
  * amount 0..1 Quantity "Number of such manufactured items in this product (5 vials)"
    * ^binding.description = "UCUM for units of measure. EDQM Standard Terms for units of presentation."
    * ^binding.strength = #preferred
  //  * ^comment = "Added (eHN guidelines A.1.4.9 mention layered structure for describing a package)"

  * packageType 0..1 CodeableConcept "Type of package of the medication item"
    * ^binding.description = "EDQM Standard Terms for packaging."
    * ^binding.strength = #preferred
  //  * ^comment = "Added (eHN guidelines A.1.4.8 Package type)"

* device 0..* Base "Administration device included in the product"
  * deviceQuantity 1..1 Quantity "Number of such devices"
  * device[x] 1..1 CodeableConcept or Reference(EHDSDevice) "Device coded"
  //  * ^comment = "Added"
* characteristic 0..* Base "Other features of the product"
  * type 1..1 CodeableConcept "A code expressing the type of characteristic"
  * value[x] 0..1 boolean or CodeableConcept or string or Quantity or dateTime or integer or decimal or Ratio "Description of the characteristic"
//  * ^comment = "Added for any other information. "
* batch 0..1 Base "Batch information of a medicinal product. Typically recorded during dispense or administration, rarely known or relevant for a prescription/request."
//  * ^comment = "Added from Patient Summary"
  * lotNumber 0..1 string "Batch identifier of the medicinal product"
  * expirationDate 0..1 dateTime "Batch expiration date of the medicinal product."
//* additionalProductInformation 0..1 Base "Additional information about product - for example, a reference to a product catalogue"
//  * ^comment = "Added"
