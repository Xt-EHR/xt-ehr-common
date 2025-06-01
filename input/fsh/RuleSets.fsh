
RuleSet: Obligation (actor, code)
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/obligation"
* ^extension[=].extension[0].url = "code"	
* ^extension[=].extension[0].valueCode = #{code}
* ^extension[=].extension[1].url = "actor"
* ^extension[=].extension[1].valueCanonical = Canonical({actor})
  
 