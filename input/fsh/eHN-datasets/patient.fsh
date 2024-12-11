// Based on output from eHN Semantic SG, Consistency task force
// https://docs.google.com/spreadsheets/d/1JGA4xk68xdCC8qOQlu4SXiMYFftoT_fJAENBIZK1bis/edit?gid=1521819365#gid=1521819365
// All cardinalities 0..*, data types are given as the best guess.
/*
Logical: EHNPatient
Title: "eHN Patient"
Description: "eHN Dataset for identification of the patient/subject"
Characteristics: #can-be-target

* personalIdentifier 0..* Identifier "Personal identifier" "An identifier of the patient that is unique within a defined scope. Example: National ID (birth number) for a Czech patient. Multiple identifiers could be provided"
* familyNameSurname 0..* string "Family name/surname" "The family name/surname/last name of the patient [ISO TS 22220:2011]. This field can contain more than one element or multiple data elements could be present."
* givenName 0..* string "Given name" "The given name/first name of the patient (also known as forename or first name) [ISO TS 22220:2011]. This field can contain more than one element."
* dateOfBirth 0..* string "Date of birth" "The date of birth of the patient [ISO TS 22220]. As age of the patient might be important for correct interpretation of the test result values, complete date of birth should be provided."
* gender 0..* CodeableConcept "Gender" "Value for \"administrative gender\". If different, \"physiological gender\" should be communicated elsewhere."
// country of affiliation, native language, nationality are included in some guidelines
* countryOfAffiliation 0..* CodeableConcept "Country of affiliation" "Name of country of affiliation"
* nativeLanguage 0..* CodeableConcept "Native language" "The native language of the patient. This may be important for the information that is given to the patient regarding use of the prescribed product [N1228 ISO NP TS 17251]."
* nationality 0..* CodeableConcept "Nationality" "Nationality of the patient."

*/
