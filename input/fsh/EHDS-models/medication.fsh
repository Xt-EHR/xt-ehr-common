Logical: EHDSMedication
Title: "Medication model"
Description: "Logical model for prescribed/dispensed medication. The model is shared by statements, requests, dispensations, and administrations. Each of those may have different restrictions in a FHIR profile. The model is suitable for generic/virtual medications as well as branded/real products. The model aims to have basic alignment with ISO IDMP but it does not cover the full complexity needed for medication registries."
* ^status = #active

* identifyingCode[x] 0..* CodeableConcept or Identifier "An identifier (e.g. from EMA SPOR PMS or national registry) or a code (e.g. from SNOMED CT or national code system) for the product (virtual product, branded product, or package). If several identifiers are specified, they shall not have conflicting meanings or very different granularities. An identifier might not exist e.g. for substance-based prescriptions."

* classification 0..* CodeableConcept "Classification (e.g. ATC; narcotic/psychotropic; orphan drug; etc.)"
  * ^binding.description = "WHO ATC"
  * ^binding.strength = #preferred
//  * ^comment = "No change"
* productName 0..1 string "Current trade name (authorised name) of the product. When medication is specified by a CodeableConcept, the name may be omitted when available as the display name of the concept."
//  * ^comment = "No change"
* marketingAuthorisationHolder 0..1 Base "Marketing authorisation holder of the medicinal product. Relevant for identifying the exact product. If the product does not have a marketing authorisation, the manufacturer information may be used."
//  * ^comment = "No change, but subelements added"
  * organisationName 0..1 string "Name of the organisation holding the authorisation for marketing/manufacturing"
  * organisationIdentifier 0..* Identifier "Identifier of the organisation and/or its physical location"
* doseForm 0..1 CodeableConcept "Dose form at the package level (e.g. authorised dose form), corresponding to IDMP Combined Pharmaceutical Dose Form (this includes terms from EDQM Combination Pack or Combined Dose Form lists). Dose form for a single package item is defined in item.doseForm."
//  * ^comment = "No change"
  * ^binding.description = "EDQM Standard Terms"
  * ^binding.strength = #preferred
// * packSize 0..* Quantity "Overall amount of product in one package (100 ml; 20 tablets; 1 cream & 6 pessaries)"
* description 0..1 string "Textual description of the product, e.g. including package description."
//  * ^comment = "No change"
  * ^binding.description = "UCUM for units of measure. EDQM Standard Terms for units of presentation."
  * ^binding.strength = #preferred
* item 0..* Base "A medication item. For combination packs, this can be multiple manufactured items with each item having its own dose form and ingredients+strengths defined"
//  * ^comment = "Structure changed, elements repeated for complex packages"
  * doseForm 0..1 CodeableConcept "Administrable or manufactured item dose form, depending on the type of medication definition. This should not include combined dose forms."
  //  * ^comment = "No change"
    * ^binding.description = "EDQM Standard Terms"
    * ^binding.strength = #preferred
  * ingredient 1..* Base "Ingredients"
    * isActive 0..1 boolean "Marks whether the ingredient is considered an active ingredient. Excipients are typically not needed, and by default only active ingredients are expected."
    //  * ^comment = "Added"
    * substance 1..1 CodeableConcept "Substance"
      * ^binding.description = "EMA SPOR SMS"
      * ^binding.strength = #preferred
  //  * ^comment = "No conflicting change"
    * strengthInfo 0..1 Base "Strength of the product - amount of substance per unit"
      * strength 1..1 Ratio "Concentration or presentation strength, e.g '100 mg/1 ml' or '500 mg per 1 tablet'"
      //  * ^comment = "No change"
      * basisOfStrengthSubstance 0..1 CodeableConcept "Substance that the strength refers to, especially when different from .item.strength.substance"
      //  * ^comment = "Added (eHN guidelines A.1.4.4.1 'in addition reference strength could be provided')"
        * ^binding.description = "EMA SPOR SMS"
        * ^binding.strength = #preferred
  * unitOfPresentation 0..1 CodeableConcept "Unit of presentation for the manufactured item (tablet, vial, tube). Typically, the smallest countable object in the package."
    * ^binding.description = "EDQM Standard Terms"
    * ^binding.strength = #preferred
  //  * ^comment = "No change"
  * containedQuantity 0..1 Ratio "Manufactured item quantity per one item (3 ml / 1 vial)"
  //  * ^comment = "Added (eHN guidelines A.1.4.9 mention layered structure for describing a package)"
//    * ^binding.description = "UCUM for units of measure. EDQM Standard Terms for units of presentation."
//    * ^binding.strength = #preferred
  * amount 0..1 Quantity "Number of such items in this product (5 vials). The combined amount of all items will be considered to be the total package size."
    * ^binding.description = "UCUM for units of measure. EDQM Standard Terms for units of presentation."
    * ^binding.strength = #preferred
  //  * ^comment = "Added (eHN guidelines A.1.4.9 mention layered structure for describing a package)"

  * packageType 0..1 CodeableConcept "Type of package of the medication item"
    * ^binding.description = "EDQM Standard Terms for packaging."
    * ^binding.strength = #preferred
  //  * ^comment = "Added (eHN guidelines A.1.4.8 Package type)"

* device 0..* Base "Administration device included in the product. Devices that are not inside the medication package are excluded."
  * deviceQuantity 1..1 Quantity "Number of such devices"
  * device[x] 1..1 CodeableConcept or EHDSDevice "Device coded"
  //  * ^comment = "Added"
* characteristic 0..* Base "Additional features of the product (e.g. reimbursable, sugar-free, easy-open cap, score-lined). It is expected that implementers will define a valueset supporting their use cases."
  * type 1..1 CodeableConcept "A code expressing the type of characteristic."
  * value[x] 0..1 boolean or CodeableConcept or string or Quantity or dateTime or integer or decimal or Ratio "Description of the characteristic value."
//  * ^comment = "Added for any other information."
* batch 0..1 Base "Batch information of a medicinal product. Typically recorded during dispense or administration, rarely known or relevant for a prescription/request."
//  * ^comment = "Added from Patient Summary"
  * lotNumber 0..1 string "Batch identifier of the medicinal product."
  * expirationDate 0..1 dateTime "Batch expiration date of the medicinal product."
//* additionalProductInformation 0..1 Base "Additional information about product - for example, a reference to a product catalogue"
//  * ^comment = "Added"
