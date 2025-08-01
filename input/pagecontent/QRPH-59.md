
This section corresponds to transaction [QRPH-59] of the IHE QRPH Technical Framework. Transaction [QRPH-59] is an optional transaction used by the Content Creator and Content Consumer actors to retrieve the defined FHIR Measure, in which case both shall be grouped with a Content Data Structure Consumer, under the Validate mADX Message Option. It can be exercised as an optional validation step by implementers. 

### 2:3.59.1 Scope

This transaction is used to obtain the FHIR Measure in order to structure and validate a given FHIR MeasureReport.

### 2:3.59.2 Actor Roles
<figure>
{%include Fig3.59.2-1_QRPH-59_ActorRoles_UseCaseDiagram.svg%}
<p id="f3.59.2-1" class="figureTitle"><strong>Figure 2:3.59.2-1: Use Case Diagram</strong></p>
</figure>
<br clear="all">

The roles in this transaction are defined in the following table and may be played by the actors shown here:

<p id ="t3.59.2-1" class="tableTitle"><strong>Table 2:3.59.2-1: Actor Roles</strong></p>

| Actor | Role |
|-------------------|--------------------------|
| [Content Data Structure Creator](volume-1.html#ContentDataStructureCreator)    | The Content Data Structure Creator is responsible for the creation of a Measure Resource, which a given mADX message SHALL conform.|
| [Content Data Structure Consumer](volume-1.html#ContentDataStructureConsumer) | A Content Data Structure Consumer is responsible for receiving the Measure Resource and validating its mADX messages.|
{: .grid .table-striped}

### 2:3.59.3 Referenced Standards
-  [HL7 FHIR R4]({{site.data.fhir.path}})
	- [FHIR Measure]({{site.data.fhir.path}}measure.html)

### 2:3.59.4 Messages

<figure>
{%include Fig3.59.4-1_QRPH-59_RetrieveAggregateReportDefinitionSequenceDiagram.svg%}
<p id="f3.59.4-1" class="figureTitle"><strong>Figure 2:3.59.4-1: Retrieve Aggregate Report Definition Diagram</strong></p>
</figure>
<br clear="all">

#### 2:3.59.4.1 Retrieve Aggregate Report Definition Request Message

This transaction facilitates the Content Data Structure Consumer  requesting an mADX Measure from a Content Data Structure Creator. The Measure MAY be used by the Content Data Structure Consumer to validate their mADX messages upon receipt. 
The Retrieve Aggregate Report Definition [QRPH-59] is implemented as a FHIR Read transaction defined in the RESTful API implementation guide: {{site.data.fhir.path}}http.html#read.


##### 2:3.59.4.1.1 Trigger Events

A Content Data Structure Consumer sends a Retrieve Aggregate Report Definition [QRPH-59] as a request for a given Measure from a Content Data Structure Creator.

##### 2:3.59.4.1.2 Message Semantics

<p id ="t3.59.4.1.2-1" class="tableTitle"><strong>Table 2:3.59.4.1.2-1: Messaging Semantics for Retrieve Aggregate Report Definition Request Message</strong></p>

|         |      Description    |
|-------------|----------------|
| URL | The mADX Profile does not prescribe the form of the URL to be advertised by a Content Data Structure Creator except that the scheme of the URL SHALL be “https”. |
| Headers |The Read request SHALL contain a Content-type header identifying the payload <br> - Type:Content-type: application/ fhir+xml <br>- Type:Content-type: application/fhir+json <br> The request MAY contain any additional headers. For example, a Content Data Structure Creator may require an Authorization header.|
| BODY | The body of an mADX Retrieve Aggregate Report Definition request SHALL contain the ID of the resource. |
{: .grid .table-striped}

##### 2:3.59.4.1.3 Expected Actions

The Content Data Structure Consumer **SHALL** send a request for a given Measure from the Content Data Structure Creator.

#### 2:3.59.4.2 Retrieve Aggregate Report Definition Response Message
This transaction responds to the Content Data Structure Consumer requesting an mADX Measure from a Content Data Structure Creator. The Measure **SHALL** be used by the Content Data Structure Consumer to validate their mADX messages upon receipt.

The Retrieve Aggregate Report Definition [QRPH-59] is implemented as a FHIR Read transaction defined in the RESTful API implementation guide: {{site.data.fhir.path}}http.html#read.

An example Measure is provided in the "Artifacts" page of this profile.

##### 2:3.59.4.2.1 Trigger Events

A Content Data Structure Creator  **SHALL** return a Retrieve Aggregate Report Definition Response Message if a Content Data Structure Consumer has sent a Retrieve Aggregate Report Definition Request Message.

##### 2:3.59.4.2.2 Message Semantics

The Content Data Structure Creator **SHALL** conform to HTTPS standards and respond to the Retrieve Aggregate Report Definition Request Message with the appropriate status code outlined in the table below.

<p id ="t3.59.4.2.2-1" class="tableTitle"><strong>Table 2:3.59.4.2.2-1: Retrieve Aggregate Report Definition Response Message status codes</strong></p>

| HTTP status code | Interpretation |
|------------|--------------|
| 200 | Retrieve Aggregate Report Definition request was successfully processed |
| 202 | Retrieve Aggregate Report Definition request has been accepted for processing, but the processing has not been completed. The request might or might not be eventually acted upon, and may be disallowed when processing occurs.|
| 303 | The response to the Retrieve Aggregate Report Definition request, when the task is complete, can be retrieved from another URL. When received in response to a Retrieve Aggregate Report Definition  request, the client should presume that the server has received the data and should issue a redirect with a separate GET message.|
| 400 | Bad Request - message content is badly formed or invalid |
| 401 | Not authorized - authorization is required for the interaction that was attempted |
| 404 | Not found - The referenced Indicator Report/Measure resource was not found. |
| 405 | Method not allowed - the resource did not exist prior to the update, and the server does not allow client defined ids |
| 409/412 | Conflict - invalid identifier in the message content. |
| 415 | Unsupported content-type or media |
| 422 | Unprocessable entity - The referenced Indicator Report/Measure resource does not adhere to the message semantics of a Retrieve Aggregate Report Definition [QRPH-59] transaction. |
| 501 | The request method is not implemented. |
{: .grid .table-striped}

The HL7 FHIR Measure response **SHALL** contain the following elements:

- `url` Where the definition of the Measure, and any updated versions, can be found.
- `version` The business version of this Measure.
- `title` A human friendly name for this Measure.
- `publisher` The organization responsible for publishing and maintaining the Measure.
- `description` A narrative description of the scope of the Measure.
- `subjectCodeableConcept.coding[].code` It will indicate the base resource in which the indicator is intended to run.
- `improvementNotation` (**MS**) The change in measured values that is indicative of an improvement for the indicator.
- `group[]` There should be a group element for each indicator that can be calculated in the Measure. Each group member should have a unique code defined, relative to the Measure.
- `group[].code.coding[]` The "code" should be a unique code distinguishing the indicator within the Measure.
- `group[].description` A narrative description of an indicator.
- `group.population.code` A required population code for a valid indicator.

The HL7 FHIR Measure response **SHALL** contain the following additional elements if the indicator includes disaggregation criteria: 

- `relatedArtifact[]` There should be a related artifact for each dissagregation set defined under `group[].stratifier[].component[].code`.
- `realatedArtifact[].type` Should be set to 'depends-on' when referencing a disaggregating value set.
- `relatedArtifact[].label` The label should match one of the values of `group[].stratifier[].component[].code` for a disaggregation value set.
- `relatedArtifact[].url` The URL of a FHIR value set that defines the valid values reported in this disaggregation component as cross-referenced by`relatedArtifact[].label`.
- `group[].stratifier[]` Contains the disaggregating value sets needed for an indicator.
- `group[].stratifier[].component[]` There should be a “component” for each set of disaggregators which is linked to a FHIR value set.
- `group[].stratifier[].component[].code` There should be a code used to reference this disaggregating value set. There must be a relatedArtifact (see above) for each disaggregation set which is a reference to a FHIR value set.

The implementers **MUST SUPPORT** support the  element `improvementNotation` because is critical for indicating improvements for the measured values. However `improvementNotation`  is optional in the Measure response message.

##### 2:3.59.4.2.3 Expected Actions

The Content Data Structure Creator **SHALL** return the applicable Measure in the Retrieve Aggregate Report Definition Response Message to the Content Data Structure Consumer.