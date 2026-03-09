Alias: $obligation = http://hl7.org/fhir/StructureDefinition/obligation

RuleSet: OblProducer(code)
* ^extension[$obligation][+].extension[code].valueCode = {code}
* ^extension[$obligation][=].extension[actor].valueCanonical = "https://www.xt-ehr.eu/specifications/fhir/actor-producer"

RuleSet: OblConsumer(code)
* ^extension[$obligation][+].extension[code].valueCode = {code}
* ^extension[$obligation][=].extension[actor].valueCanonical = "https://www.xt-ehr.eu/specifications/fhir/actor-consumer"

RuleSet: OblProducerDoc(code, documentation)
* ^extension[$obligation][+].extension[code].valueCode = {code}
* ^extension[$obligation][=].extension[actor].valueCanonical = "https://www.xt-ehr.eu/specifications/fhir/actor-producer"
* ^extension[$obligation][=].extension[documentation].valueMarkdown = {documentation}

RuleSet: OblConsumerDoc(code, documentation)
* ^extension[$obligation][+].extension[code].valueCode = {code}
* ^extension[$obligation][=].extension[actor].valueCanonical = "https://www.xt-ehr.eu/specifications/fhir/actor-consumer"
* ^extension[$obligation][=].extension[documentation].valueMarkdown = {documentation}

/* RuleSet: OblProducerType(code)
* ^type[0].extension[$obligation][+].[code].valueCode = {code}
* ^type[0].extension[$obligation][=].extension[actor].valueCanonical = "https://www.xt-ehr.eu/specifications/fhir/actor-producer"
 */

/* RuleSet: OblConsumer(code, documentation)
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/obligation"
* ^extension[=].extension[+].url = "code"
* ^extension[=].extension[=].valueCode = {code}
* ^extension[=].extension[+].url = "actor"
* ^extension[=].extension[=].valueCanonical = "https://www.xt-ehr.eu/specifications/fhir/actor-consumer"
* ^extension[=].extension[+].url = "documentation"
* ^extension[=].extension[=].valueMarkdown = {documentation}
 */