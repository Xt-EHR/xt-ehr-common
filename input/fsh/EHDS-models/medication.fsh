Logical: EHDSMedication
Title: "Medicinal product (model)"
Description: "Logical model for prescribed/dispensed medication. The model is shared by statements, requests, dispensations, and treatment lines. Each of those may have different restrictions in FHIR profile."
Characteristics: #can-be-target
* ^status = #active

* identifyingCode[x] 0..* CodeableConcept or Identifier "Identifier or product code for the product, independently of the level of product. If several identifiers are specified, they shall not have conflicting meanings or very different granularities."
* classification 0..* CodeableConcept "Classification (e.g. ATC; narcotic/psychotropic; orphan drug; etc.)"
  * ^binding.description = "WHO ATC"
  * ^binding.strength = #preferred
* productName 0..1 string "Name of the product (full name, invented name, other). When the product has different names, the appropriate one for the context should be used. Translations of names can be provided."
* marketingAuthorisationHolder 0..1 BackboneElement "Marketing authorisation holder or manufacturer of the medicinal product. Relevant for identifying the exact product."
  * organizationName 0..1 string "Name of the organisation holding the authorisation for marketing/mahufacturing"
  * organizationIdentifier 0..* Identifier "Identifier of the organisation and/or its physical location"
* doseForm 0..1 CodeableConcept "Dose form(s) on a product level. Dose form for a single package item is defined below."
  * ^binding.description = "EDQM Standard Terms"
  * ^binding.strength = #preferred
* packSize 0..* Quantity "Overall amount of product in one package (100ml; 20 tablets; 1 creme & 6 pessaries)"
  * ^binding.description = "UCUM for units of measure. EDQM Standard Terms for units of presentation."
  * ^binding.strength = #preferred
* item 0..* BackboneElement "A medication item. For combination packs, this can be manufactured items with each item having its own dose form and ingredients+strengths defined"
  * doseForm 0..1 CodeableConcept "Dose form"
    * ^binding.description = "EDQM Standard Terms"
    * ^binding.strength = #preferred  
  * ingredient 1..* BackboneElement "Ingredients"
    * isActive 0..1 boolean "Role (active ingredient, excipient). Typically excipients are not needed, so by default active ingredients are expected."
    * substance 1..1 CodeableConcept "Substance"
      * ^binding.description = "EMA SPOR SMS"
      * ^binding.strength = #preferred
    * strengthInfo 0..* CodeableConcept "Concentration or presentation strength"
      * strength 1..1 Ratio "Concentration or presentation strength of the precise active ingredient"
      * strengthType 0..1 CodeableConcept "Type of strength that is expressed"
      * strengthSubstance 0..1 CodeableConcept "Substance that the strength refers to, if different from the main substance"
        * ^binding.description = "EMA SPOR SMS"
        * ^binding.strength = #preferred
  * unitOfPresentation 0..1 CodeableConcept "Unit of presentation for the manufactured item (tablet, vial, tube). Typically, the smallest countable object in the package."
    * ^binding.description = "EDQM Standard Terms"
    * ^binding.strength = #preferred
  * containedQuantity 0..1 Ratio "Manufactured item quantity for liquids (3ml / 1 vial)"
//    * ^binding.description = "UCUM for units of measure. EDQM Standard Terms for units of presentation."
//    * ^binding.strength = #preferred
  * amount 0..1 Quantity "Number of such manufactured items in this product (5 vials)"
    * ^binding.description = "UCUM for units of measure. EDQM Standard Terms for units of presentation."
    * ^binding.strength = #preferred
* device 0..* BackboneElement "Administration device included in the product"
  * deviceQuantity 1..1 Quantity "Number of such devices"
  * device 1..1 Reference(EHDSDevice) "Device coded"
* characteristic 0..* BackboneElement "Other features of the product"
  * type 1..1 CodeableConcept "A code expressing the type of characteristic"
  * value[x] 0..1 Any "Description of the characteristic"
* additionalProductInformation 0..1 BackboneElement "Additional information about product - for example, a reference to a product catalogue"
