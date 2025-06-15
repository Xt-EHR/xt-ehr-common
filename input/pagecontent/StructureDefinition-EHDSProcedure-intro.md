Procedures is suggested as a mandatory section of Patient Summary. Implementers should as a minimum be able to produce a list of procedures and give an empty list reason if there are no procedures. The only required element for each listed procedure, is specifying the procedure. The information elements for each procedure are listed in the EHDS-PS-Procedure model.   
If the producing system have no record of procedures to list (e.g. the patient has no history of procedures, or the system have no procedure information), it must provide a reason for the empty list. This is accordance with the specification in ISO IPS and updates to the HL7 FHIR IPS.  
 
Receiving systems must be able to handle the data and are encouraged to display the received information to the user but are not obliged to do so.  

The information elements and value sets suggested is taken from eHN GL, MyHealth@EU and HL7 FHIR IPS.  
