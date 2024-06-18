// Based on output from eHN Semantic SG, Consistency task force
// https://docs.google.com/spreadsheets/d/1JGA4xk68xdCC8qOQlu4SXiMYFftoT_fJAENBIZK1bis/edit?gid=1521819365#gid=1521819365
// All cardinalities 0..*, data types are given as the best guess.

Logical: EHNOrganizationModel
Parent: Base
Title: "eHN HP Organisation"
Description: "eHN Dataset for health professional organisation"
Characteristics: #can-be-target
Id: ehn-organization-model
* identifier 0..* Identifier "Organisation ID" "The healthcare provider organisation identifier. Identifier that is unique within a defined scope. Example: National healthcare provider ID. Multiple identifiers could be provided."
* name 0..* string "Organisation name" "The healthcare provider organisation information."
* address 0..* Address "Address" "Mailing and home or office addresses. The addresses are always sequences of address parts (e.g. street address line, country, postcode, city) even if postal address formats may vary depending on the country. An address may or may not include a specific use code; if this attribute is not present it is assumed to be the default address useful for any purpose."
* telecom 0..* ExtendedContactDetail "Telecom" "Telecommunication contact information (addresses) associated with a person, such as phone number, email, or messaging service. Multiple telecommunication addresses might be provided."
* networkAffiliation 0..* Reference(EHNOrganizationModel) "Network affiliation" "The HP organization is affiliated with a European network, for example an ERN."
* relatedWith 0..* Reference(Resource) "Related with" "Identify the entry or entries of this Patient Summary for which the health professional is the preferred contact."
// only in eP/eD
* detailsForDirectContact 1..1 ExtendedContactDetail "Details for direct contact" "Details for direct contact could be an email address and/or phone/fax number of the prescriber in order for the dispenser and/or patient to contact the prescriber. This might be necessary if problems arise with dosage, allergies, reimbursement etc." // text from eP/eD


/*
Mapping: EHNOrganizationModelToResource
Source: EHNOrganizationModel
Target: "Organization"
* detailsForDirectContact -> "Organization.contact.telecom" // specific purpose?
* address -> "Organization.contact.address"
* telecom -> "Organization.contact.telecom"
* networkAffiliation -> "Organization.qualification" // extension needed? or qualification?
* relatedWith -> "Organization" // extension needed?

*/