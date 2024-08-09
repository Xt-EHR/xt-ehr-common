// Based on output from eHN Semantic SG, Consistency task force
// https://docs.google.com/spreadsheets/d/1JGA4xk68xdCC8qOQlu4SXiMYFftoT_fJAENBIZK1bis/edit?gid=1521819365#gid=1521819365
// All cardinalities 0..*, data types are given as the best guess.

Logical: EHNHealthProfessional 
Title: "eHN Health Professional"
Description: "eHN Dataset for identification of the health professional"
Characteristics: #can-be-target

* identifier 0..* Identifier "Halth proifessional identifier" "An identifier of the health professional that is unique within a defined scope. Example: National health professional ID. Multiple identifiers could be provided."
* name 0..* HumanName "Name" "Structured name of the HP. The structure of the name will be the same as for the patient (given name, family name / surname."
* role 0..* CodeableConcept "Role or occupation" "Role or occupation of the health professional. Multiple roles could be provided (medical doctor; nursing professional; pharmacist)."
* organization 0..* Reference(Organization) "Provider organization" "The healthcare provider organisation the health professional is associated with."
* address 0..* Address "Health professional address" "Mailing and home or office addresses. The addresses are always sequences of address parts (e.g. street address line, country, postcode, city) even if postal address formats may vary depending on the country. An address may or may not include a specific use code; if this attribute is not present it is assumed to be the default address useful for any purpose."
* relatedWith 0..* Reference(Resource) "Related with" "Identify the entry or entries of this Patient Summary for which the health professional is the preferred contact."
/*
Identifier	An identifier of the health professional that is unique within a defined scope. Example: National health professional ID. Multiple identifiers could be provided.
Name	Structured name of the HP. The structure of the name will be the same as for the patient (given name, family name / surname
Role/occupation? of the HP	Health professional role. Multiple roles could be provided (medical doctor; nursing professional; pharmacist).
HP Organisation	The healthcare provider organisation information.
Address	Mailing and home or office addresses. The addresses are always sequences of address parts (e.g. street address line, country, postcode, city) even if postal address formats may vary depending on the country. An address may or may not include a specific use code; if this attribute is not present it is assumed to be the default address useful for any purpose.
Telecom	Telecommunication contact information (addresses) associated with a person, such as phone number, email, or messaging service. Multiple telecommunication addresses might be provided.
*/