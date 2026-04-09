# Data types and references - EHDS Logical Information Models v1.0.0

## Data types and references

EHDS models use FHIR data types for defining data types, but with less constraints and without additional elements or extensions that may be provided in the FHIR specification. The following data types are used in logical models.

### Allowed data types

| | | |
| :--- | :--- | :--- |
| **Type** | **Description** | **Notes** |
| Base | Base data type in these models is used as a grouper element for its children elements. It does not have a value. |   |
| string | A sequence of UNICODE characters. | Constraints introduced to string in FHIR standard are not implied for other formats. A string in a logical model may be implemented as a formatted text, such as markdown or xhtml, if supported by the implementation standard. |
| dateTime | Date and time with the precision needed for the use case (from year to millisecond) | FHIR format is not implied |
| date | Date without the exact time. | FHIR format is not implied. |
| time | Time during a day, without the date being present. | FHIR format is not implied. |
| Period | Two dateTimes marking a period from the first dateTime to the second dateTime. Precision is decided by the use case. |   |
| CodeableConcept | Coded value. Code, display name, and code system are expected, but sometimes they may be implicit. | In FHIR, CodeableConcept also includes ‘text’ element. In logical models, ‘text’ instead of code should only be considered as a fallback mechanism, not a design option. When text and code are both expected/acceptable, string option should be explicitly listed in the model. |
| integer | A whole number, positive or negative according to the use case. |   |
| decimal | A number that consists of a whole and a fractional part. Precision is dependent on the use case. | Note that every format has its constraints on decimals to be aware of. |
| Quantity | Integer or decimal accompanied with a unit (preferrably a coded concept). | FHIR has a number of profiles and extensions on Quantity, these are not implied in the logical models unless explicitly stated in element description. |
| Range | Two quantities with the first one indicating the minimum and the second one indicating the maximum (e.g 2mg - 4mg) |   |
| Ratio | Ratio of two quantities, typically used for values like “1 tablet per 4 hours” and “800ml per 1 day. |   |
| boolean | A binary value of true/false. | Typically needs an agreed default value when the element is not present. |
| Identifier | A logical reference to a real-life entity registered in a system. Identifier needs to be coupled with its source system, but in some cases the source may be implicit. | FHIR format and additional elements of Identifier data type are not required. |
| EHDSModel | Any model specifying the expected data | When a data type is marked as EHDSModelName, a contained or referenced block of data is expected from the named model. |

### Reference or contained data

Knowing if a block of data is technically included as a reference or physically contained is not always possible in models. In some cases, a reference is most likely, but there are always exceptions, and the line is never clear. Therefore, when a data type is another model, it does not define whether it should be referenced or contained. These choices are implementation-specific - for example, identifiers or technical references are more likely to be used within a country while containing full information objects is common for crossborder use.

### Polymorphic elements

In some cases a choice between data types is allowed. In that case, the grouper element is marked with [x] and a type-specific element (called "slice" in FHIR) is automatically created for each data type. Only one choice out of the options is allowed to be used at any given time, but when element is repeatable, the repeats may include data of different data types.

