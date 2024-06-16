// Based on output from eHN Semantic SG, Consistency task force
// https://docs.google.com/spreadsheets/d/1JGA4xk68xdCC8qOQlu4SXiMYFftoT_fJAENBIZK1bis/edit?gid=1521819365#gid=1521819365
// All cardinalities 0..*, data types are given as the best guess.

Logical: EHNDocumentMetadata
Parent: Base
Title: "Document Metadata"
Description: "Document Metadata"
Characteristics: #can-be-target
Id: ehn-documentmetadata-model

* identifier 0..* Identifier "Document Identifier" "Unique identifier of the document"
* type 0..* CodeableConcept "Document type" "Identifies the type of document at hand, e.g. Laboratory report. Includes document name."
// Document name
* status 0..* CodeableConcept "Document status" "The status of the report. E.g., preliminary, final."
* issueDate 0..* dateTime "Issue date" "Date and optionally the time of issuing the document (according to the local implementation rules, this could be either the date of authoring or signing the document)."	
* language 0..* CodeableConcept "Language" "Language in which the document is written. Language is expressed by the ISO language code."
* version 0..* string "Version" "Version of the document"
* lastUpdated 0..* dateTime "Date of last update" "Date on which document was modified (date of most recent version)"
* confidentiality 0..* CodeableConcept "Confidentiality" "Level of confidentiality of the document. Implicit value is normal."