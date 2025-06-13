/*
Temporarily copied from IHE datatypes (https://github.com/IHE/datatypes/blob/master/input/fsh/datatypes.fsh), which is based on:

Sources: https://wiki.hl7.de/index.php?title=HL7_CDA_Core_Principles
https://www.hl7.org/documentcenter/public/standards/v3/iso_datatypes/iso-21090-datatypes.xsd



Profile: Untyped
Parent: Element
Description: "No data type defined"
* . ^short = "No specific data type assigned"
* . ^definition = "No specific data type assigned - should not be used in finished data models"



Profile: Class
Parent: BackboneElement
Description: "Class of data elements"
* . ^short = "group"
* . ^definition = "Class of data elements"
// Why is class derived from BackboneElement better than BackboneElement itself?


Profile: BL
Parent: Element
Description: "Boolean - true or false"
* . ^short = "Boolean"
* . ^definition = "A binary value for use in boolean logic. A BL value can be either true or false, or, as any other value, MAY be NULL."
// value

Profile: CD
Parent: Element
Description: "ConceptDescriptor"
* . ^short = "A reference to a concept defined in a code system"
* . ^definition = "A reference to a concept defined in a code system"
//system, code, display name?

Profile: ST
Parent: Element
Description: "CharacterString"
* . ^short = "Text"
* . ^definition = "String"
// value, language?

Profile: II
Parent: Element
Title: "II"
Id: InstanceIdentifier
Description: "InstanceIdentifier"
* . ^short = "identifier"
* . ^definition = "	An identifier that uniquely identifies a thing or object. Examples are object identifier for HL7 RIM objects, medical record number, order id, service catalog item id, Vehicle Identification Number (VIN), etc."
//Now, if you look at the definition and think of the meaning of 'instance', I think it's not correct to use it as any Identifier. Unfortunately, there is only OID, UUID and RUID in V3, and none of those work either.
//If we go custom, I'd say we lose "Instance" and one I.
// system, value

//I suggest replacing this with PQ or making it a generic quantity: supertype for REAL and INT
Profile: QT
Parent: Element
Description: "Quantity"
* . ^short = "quantity"
* . ^definition = "Quantity"


Profile: PQ
Parent: Element
Description: "PhysicalQuantity"
* . ^short = "Physical, measurable quantity with unit"
* . ^definition = "Elements of this data type are physical quantities, i.e. a measurable quantity (or countable) value from the physical world. This is different from just a “number”, because there is a (natural) unit specified in which the measurable quantity is expressed."
// value, unit, comparator(?)


Profile: TS
Parent: Element
Description: "TimeStamp"
* . ^short = "Timestamp"
* . ^definition = "A quantity specifying a point on the axis of natural time. A point in time is most often represented as a calendar expression."
// value

Profile: DT
Parent: Element
Description: "Date"
* . ^short = "Date"
* . ^definition = "Date"


Profile: RTO //RTO-QTY-QTY
Parent: Element
Description: "Ratio"
* . ^short = "Ratio of quantities"
* . ^definition = "A quantity constructed as the quotient of a numerator quantity divided by a denominator quantity."
// Let's go with just RTO

Profile: INT
Parent: Element
Description: "IntegerNumber"
* . ^short = "Integer numbers"
* . ^definition = "Integer numbers (-1,0,1,2, 100, 3398129, etc.) are precise numbers that are results of counting and enumerating. Integer numbers are discrete, the set of integers is infinite but countable."

Profile: REAL
Parent: Element
Description: "RealNumber"
* . ^short = "Decimal number"
* . ^definition = "A scalar magnitude. Typically used whenever quantities are measured, estimated, or computed from other real numbers. The typical representation is decimal, where the number of significant decimal digits is known as the precision."

Profile: EN
Parent: Element
Description: "EntityName"
* . ^short = "Entity name"
* . ^definition = "A name for a person, organization, place or thing. A sequence of name parts, such as given name or family name, prefix, suffix, etc."

*/
/*
Profile: AD
Parent: Element
Description: "Address"
* . ^short = "Address"
* . ^definition = "Mailing and home or office addresses. A sequence of address parts, such as street or post office box, city, postal code, country, etc."
*/


// Other candidates
// Sequence:	LIST	An ordered collection of discrete (but not necessarily distinct) values.
// Set:	SET	A value that contains distinct values in no particular order.
// EncapsulatedData:	ED
// MonetaryAmount	MO	A quantity expressing an amount of money in some currency. While the monetary amount is a single kind of quantity (money) the exchange rates between the different units are variable. This is the principle difference between PQ and MO, and the reason why currency units are not physical units.
// Interval	IVL	A set of consecutive values of an ordered base data type.

// Profile: Coded
// Parent: CodeableConcept
// Description: "Coded data element"
// * . ^short = "Coded"
// * . ^definition = "Coded data element should have at least one code from a specified code system present"
// * coding 1..*


// Profile: ANY
// Parent: Element
// Description: "An abstract type"
// * . ^short = "Undefined"
// * . ^definition = "An abstract type that defines the basic properties common to all data values defined in this specification. Data Value is an abstract type, meaning that no proper value can be just a data value without belonging to any concrete type. Every concrete type is a specialization of this general abstract DataValue type."
