RuleSet: AbleToPopulate(strength)
* ^extension[$obligation][+].extension[code].valueCode = #{strength}:able-to-populate
* ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer

RuleSet: Process(strength)
* ^extension[$obligation][+].extension[code].valueCode = #{strength}:process
* ^extension[$obligation][=].extension[actor].valueCanonical = $actor-consumer

RuleSet: Display(strength)
* ^extension[$obligation][+].extension[code].valueCode = #{strength}:display
* ^extension[$obligation][=].extension[actor].valueCanonical = $actor-consumer

RuleSet: ObligationDocumentation(doc)
* ^extension[$obligation][=].extension[documentation].valueMarkdown = {doc}