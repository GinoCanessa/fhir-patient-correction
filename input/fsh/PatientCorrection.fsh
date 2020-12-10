Profile:        PatientCorrectionRequest
Parent:         Task
Id:             patient-correction-request
Title:          "Patient Correction Request"
Description:    "A correction request orginating from a patient."

* identifier MS
* identifier 0..*
* identifier ^short = "A business identifier for the correction process. It could be assigned by requester or fulfiller."

* partOf 0..*
* partOf ^short = "Could potentically be used on child tasks on a request for correction task if part is accepted and part in denied."

* status MS
* status 1..1
* status ^short = "Value Set - certain values recommended. Some must be supported."

* statusReason MS
* statusReason 0..1
* statusReason ^short = "Reason for rejection, for example."

* businessStatus MS
* businessStatus 0..1
* description ^short = "Provide further detail on status. Examples include Extended to represent that the consideration of an amendment request has been extended."

* intent 1..1
* intent ^short = "\"Order\""

* code MS
* code 1..1
* code ^short = "Code and code.text to represent patient correction. Code and code.text to represent a disagreement."

* description MS
* description 1..1
* description ^short = "Human readable description of what is to be performed.  For example: \"Please correct the Progress Note dated 2/10/20 in which you state that I am a smoke cigarettes. I do not smoke cigarettes but do smoke cigars\"."

* focus MS
* focus 0..1
* focus ^short = "Optionally specify the specific resource that is requested to be corrected."

* for MS
* for 1..1
* for ^short = "The patient whose record this correction references."

* encounter 0..1
* encounter ^short = "This is to indicate that this specific task originated in a specific encounter. Correction requests from patients are expected to usually originate outside of an encounter. An exception might be requests for correction sent from the inpatient bedside by patient or caregiver."

* executionPeriod MS
* executionPeriod 0..1
* executionPeriod ^short = "If the requester needs the correction to be done by a specific date, this is specified in ExecutionPeriod.end."

* authoredOn MS
* authoredOn 1..1
* authoredOn ^short = "Constrained to 1..1. Date/Time original request was authored."

* lastModified MS
* lastModified 0..1
* lastModified ^short = ""

* requester MS
* requester 1..1
* requester ^short = "The entity that requests the correction.  Examples - Patient, CareGiver, Clinician."

* owner MS
* owner 0..1
* owner ^short = "The entity that is responsibility for fulfilling the request.  Especially important to indicate owner on Fulfiller side."

* note 0..*
* note ^short = "Notes from those that are working on the correction about that work."

* restriction 0..0
* restriction ^short = ""

* input 0..*
* input ^short = "Provides details about the specific correction being requested."

* input.type 1..1
* input.type ^short = "Possible types: 1) Encounter in which error was made, 2) Original Correction Request that was Denied, 3) Additional Details on Disagreement."

* input.value[x] 1..1
* input.value[x] only string or Attachment or Reference
* input.value[x] ^short = "1) Reference (Encounter), 2) Attachment, 3) Reference (Backbone), 4) Reference (Backbone), 5) Reference (CommunicationRequest), 6) String 7) DocumentReference"

* output 0..*
* output ^short = "Documentation about the Correction from the Fulfiller. For example, an explanation about request is extended 60 days, that patient can ask to have correction sent to third parties, or an explanation of denial and a patient's right to disagree."

* output.type 1..1
* output.type ^short = "Type indicating \"Additional Information.\""

* output.value[x] 1..1
* output.value[x] only string


Profile:        PatientCorrectionDisagreement
Parent:         Task
Id:             patient-correction-disagreement
Title:          "Patient Correction Disagreement"
Description:    "A disagreement to a patient correction request."

* identifier MS
* identifier 0..*
* identifier ^short = "A business identifier for the disagreement process. It could be assigned by requester or fulfiller."

* status MS
* status 1..1
* status ^short = "Value Set - certain values recommended. Some must be supported."

* statusReason MS
* statusReason 0..1

* businessStatus MS
* businessStatus 0..1
* description ^short = "Provide further detail on status. Examples include Extended to represent that the consideration of an amendment request has been extended."

* intent 1..1
* intent ^short = "\"Order\""

* code MS
* code 1..1
* code ^short = "Code and code.text represent that this is a \"patient disagreement with denial\" request."

* description MS
* description 1..1
* description ^short = "Human readable description of the specific disagreement. For example: \"I do not agree that you continue to record that I am a smoker. I do not and never have smoked.\""

* for MS
* for 1..1
* for ^short = "The patient whose record this correction references."

* encounter 0..1
* encounter ^short = "This is to indicate that this specific task originated in a specific encounter. Correction requests from patients are expected to usually originate outside of an encounter. An exception might be requests for correction sent from the inpatient bedside by patient or caregiver."

* authoredOn MS
* authoredOn 1..1
* authoredOn ^short = "Date/time disagreement was authored."

* lastModified MS
* lastModified 0..1

* requester MS
* requester 1..1
* requester ^short = "The entity that disagrees with the denial. Examples - Patient, CareGiver, Clinician."

* owner MS
* owner 0..1
* owner ^short = "The entity that is responsibility for fulfilling the request.  Especially important to indicate owner on Fulfiller side."

* reasonReference MS
* reasonReference 1..1
* reasonReference ^short = "The original correction request Task."

* note ^short = "Notes from those that are working on the disagreement on the fulfiller side."

* restriction 0..0

* input 0..*
* input ^short = "Provides details about the disagreement to a correction denial."

* input.type 1..1
* input.type ^short = "Possible types: 1) Encounter in which error was made, 2) Original Correction Request that was Denied, 3) Additional Details on Disagreement."

* input.value[x] 1..1
* input.value[x] only string or Reference
* input.value[x] ^short = "1) Reference (Encounter), 2) Reference (Task), 3) String"

* output 0..*
* output ^short = "Documentation about the Disagreement, such as noting it will be included with the record. Or documentation of a rebuttal."

* output 0..*
* output ^short = "Documentation about the Correction from the Fulfiller. For example, an explanation about request is extended 60 days, that patient can ask to have correction sent to third parties, or an explanation of denial and a patient's right to disagree."

* output.type 1..1
* output.type ^short = "Type indicating \"Additional Information.\""

* output.value[x] 1..1
* output.value[x] only string
