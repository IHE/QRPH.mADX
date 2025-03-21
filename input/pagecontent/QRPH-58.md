## 2:3.58 Send Aggregate Report [QRPH-58]
This section corresponds to transaction [QRPH-58] of the IHE QRPH Technical Framework. Transaction [QRPH-58] is used by the Content Creator and Content Consumer Actors to share aggregate health data within a jurisdiction using a FHIR MeasureReport. 

### 2:3.58.1 Scope

This transaction is used to communicate aggregate health data from the Content Creator to the Content Consumer at the end of each reporting cycle. 

### 2:3.58.2 Actor Roles
<figure>
{%include Fig3.58.2-1_QRPH-58_ActorRoles_UseCaseDiagram.svg%}
<p id="f3.58.2-1" class="figureTitle">Figure 2:3.58.2-1: Use Case Diagram<strong></p>
</figure>
<br clear="all">

The roles in this transaction are defined in the following table and may be played by the actors shown here:

<p id ="t3.58.2-1" class="tableTitle">Table 2:3.58.2-1: Actor Roles<strong></p>

| Actor | Role |
|-------------------|--------------------------|
| [Content Creator](volume-1.html#ContentCreator)    | The Content Creator is responsible for the creation of an mADX message containing aggregate health data conformant to the jurisdiction defined Measure Resource and transmitting this message to a Content Consumer.|
| [Content Consumer](volume-1.html#ContentConsumer) | A Content Consumer is responsible for receiving the mADX message containing aggregate health data conformant to the jurisdiction defined Measure Resource from the Content Creator and processing it. |
{: .grid .table-striped}

### 2:3.58.3 Referenced Standards
-  [HL7 FHIR R4]({{site.data.fhir.path}})
	- [FHIR MeasureReport]({{site.data.fhir.path}}measurereport.html)

### 2:3.58.4 Messages

<figure>
{%include Fig3.58.4-1_QRPH-58_SendAggregateReportSequenceDiagram.svg%}
<p id="f3.58.4-1" class="figureTitle">Figure 2:3.58.4-1: Send Aggregate Report Diagram<strong></p>
</figure>
<br clear="all">

#### 2:3.58.4.1 Send Aggregate Report Request Message

This transaction transmits mADX-conformant messages containing aggregate health data from the Content Creator to the Content Consumer. A Content Consumer implemented at a jurisdiction may receive this transaction from multiple Content Creators.

The Send Aggregate Report is implemented as a FHIR Update Transaction defined in the RESTful API implementation guide: [{{site.data.fhir.path}}http.html#update]({{site.data.fhir.path}}http.html#update).

##### 2:3.58.4.1.1 Trigger Events

There are a wide variety of implementation and jurisdiction specific events which might trigger a Send Aggregate Report transaction. This might be automated, for example a timeout indicating the end of a routine reporting period, or manually triggered in response to prevailing business logic. The trigger event is implementation specific.

##### 2:3.58.4.1.2 Message Semantics

The Content Creator creates an mADX conformant message containing aggregate health data that meets the requirements of the mADX Measure in their jurisdiction. The Content Creator **MAY** send the message using Send Aggregate Report. The Content Consumer **SHALL** consume the message that meets the requirements of the mADX Measure in their jurisdiction.

The table below describes the request.
<p id ="t3.58.4.1.2-1" class="tableTitle">Table 2:3.58.4.1.2-1: Messaging Semantics for Send Aggregate Report Request Message<strong></p>

|  | Description |  |
|--------|---------|--------------|
| URL | The mADX Profile does not prescribe the form of the URL to be advertised by a Content Consumer except that the scheme of the URL **SHALL** be “https”.<br>The following is a non-exhaustive list of valid examples:<br>·       https://hmis.gov.rw/datasets/mADX <br>·       https://hmis.gov.rw/routinereports/mADX <br>·       https://hmis.gov.rw/routinereports <br> Note: These links are served only as examples. They do not point to real addresses.|
| Headers | The **Update** request **SHALL** contain a Content-type header identifying the payload<br>·       Type:Content-type: application/fhir+xml<br>·       Type:Content-type: application/fhir+json<br>The request **MAY** contain any additional headers. For example, a Content Consumer may require an Authorization header. |
|  | A Content Consumer **MAY** support additional parameters. |
| BODY | The body of an mADX Send Aggregate Report request **SHALL** contain a valid mADX data payload as described in [Section 8.2 from Volume 3](volume-3.html#section-8.2) of this profile |
{:.grid .table-striped}

The indicator **SHALL** contain the following elements: 
- `subject` A required subject reference
- `improvementNotation` Indicates if the values reported indicate an improvement
- `group.code.coding.code` A required reference for a valid indicator
- `group.population.code` The populations in the group
- `group.population.count` Size of the population

The indicator **SHALL** contain the following additional elements if the indicator includes disaggregation criteria: 

- `group.stratifier.code` Indicates the disaggregation criterion
- `group.stratifier.stratum` Indicates the stratum results
- `group.stratifier.stratum.measureScore` The value that is reported
- `group.stratifier.stratum.measureScore.value` The numeric value reported in the aggregate report

The implementer **MUST SUPPORT** the following elements, needed for representing disaggregation criteria:
- `group.stratifier.stratum.value` Represents a disaggregation value for the disaggregation criterion reported
- `group.stratifier.stratum.component` Represents a disaggregation dimension for the disaggregation criterion reported


##### 2:3.58.4.1.3 Expected Actions

The Content Consumer **SHALL** process the mADX message received and return the status of the transaction as per section 2:3.58.4.2. .

##### 2:3.58.4.1.4 Send Aggregate Report Bundle Message
A Content Creator may submit multiple Measures using a Collection Bundle in FHIR in a single transaction. This option can be valuable in use cases where the system may not have constant connection. (See  [{{site.data.fhir.path}}bundle.html]({{site.data.fhir.path}}bundle.html).)

#### 2:3.58.4.2 Send Aggregate Report Response Message
This transaction is an acknowledgement of mADX POST Content transaction from the Content Consumer to the Content Creator.

The Send Aggregate Report Response Message is implemented as an HTTP response. It can be emitted synchronously in response to the initial Update request, or maybe made available at a later time. The Content Consumer makes no guarantee that either the status URL or the result URL will be available permanently.

##### 2:3.58.4.2.1 Trigger Events

A Content Consumer sends a Send Aggregate Report Response Message after receiving and processing a Send Aggregate Report Request Message from the Content Creator. For a synchronous request this will be the HTTP Response of the originating Request. For an asynchronous Request this will be in the HTTP Response of a later request that the Content Creator may make after polling for completion.

##### 2:3.58.4.2.2 Message Semantics

The Send Aggregate Report Response Message is implemented as an HTTP Response. The response may include content in the body to provide an implementation and jurisdiction specific informative message on the completed status of the transaction. The response shall contain an HTTP status code. The table below describes the codes which may be produced by the Content Consumer which have a specific meaning related to the transaction.

Note that a Content Creator should be prepared to handle additional status codes not particular to the transaction, such as authorization, server or network error codes. HTTP status codes correspond to FHIR HTTP 3.1.0.4.2 Rejecting Updates ([{{site.data.fhir.path}}http.html#rejecting-updates]({{site.data.fhir.path}}http.html#rejecting-updates)).

<p id ="t3.58.4.2.2-1" class="tableTitle">Table 2:3.58.4.2.2-1: Send Aggregate Report Response Message status codes<strong></p>

| HTTP status code | Interpretation |  |
| --- | --- | --- |
| 200 | Send Aggregate Report request message was successfully processed |
| 202 | Send Aggregate Report request message has been accepted for processing, but the processing has not been completed. The request might or might not be eventually acted upon, and may be disallowed when processing occurs. |
| 303 | The response to the Send Aggregate Report request message, when the task is complete, can be retrieved from another URL. When received in response to a Send Aggregate Report request message, the client should presume that the server has received the data and should issue a redirect with a separate GET message. |
| 400 | Bad Request - message content is badly formed or invalid |
| 401 | Not authorized - authorization is required for the interaction that was attempted |
| 404 | Not found - resource type is not supported |
| 405 | Method not allowed - the resource did not exist prior to the update, and the server does not allow client defined ids |
| 409/412 | Conflict - invalid identifier in the message content. |
| 415 | Unsupported content-type or media |
| 422 | Unprocessable entity - The MeasureReport does not adhere to mADX Profile on the required fields, etc. |
| 501 | The request method is not implemented. |

##### 2:3.58.4.2.3 Expected Actions

A Content Consumer **SHALL** respond with appropriate error codes in the event of receiving an invalid Send Aggregate Report Request Message according to the FHIR 3.1.0.4.2 _Rejecting Updates_.

If no other error conditions are encountered, a Content Consumer **SHALL** respond to a Send Aggregate Report Request Message with a 422 _Unprocessable Entity_ and an appropriate OperationOutcome resource if any of the following business rule(s) are violated:
- The Send Aggregate Report Request Message does not adhere to the message semantics as defined in Section 2:3.58.4.1.2 Message Semantics.

An OperationOutcome resource **SHALL** be generated for each MeasureReport resource submitted in the batch transaction which violates the above business rule(s), in which case the OperationOutcome **SHALL**:
- Use response codes as in Table 2:3.58.4.2.2-1 for the OperationOutcome.issue.code
- Provide a FHIRPath identifying the invalid MeasureReport in OperationOutcome.issue.expression
- Set the value of OperationOutcome.issue.expression to fatal.

### 2:3.58.5 Protocol Requirements

See [ITI TF-2: Appendix Z](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html)

### 2:3.58.6 Security Considerations

This profile assumes either implied or explicit data sharing agreements between the data exchange entities, and the envisaged use cases of the Send Aggregate Report [QRPH-58] transaction, which do not include the exchange of PHI. Therefore, this transaction would not typically require security mechanisms that protects PHI, such as the ITI Audit Trail and Node Authentication (ATNA) Profile. Implementers **SHOULD** nevertheless be sensitive to the possibility of approximate personal identification arising from aggregate data derived from small population sets. In the instance where a quality measurement entity needs de-identified data, the IHE ITI Handbook on De-identification should be referenced.

Transport of mADX data **SHALL** be safeguarded according to jurisdictional guidelines. To protect data integrity these **SHALL** include encryption of the transport layer and the use of an appropriate mutual authentication mechanism which meets these guidelines.

Content Consumers should also take adequate account of security considerations related to the generic processing of mADX documents (RFC7303).

#### 2:3.58.6.1 Security Audit Considerations

There is no specific ATNA security audit event that is associated with this transaction.
