<div markdown="1" class="stu-note">

This Test Plan page is a prototype. We expect the maturity of the content will improve over time. For now, we summarize high level testing scope and available tools. Comments are welcome.
</div>


## Introduction

Overall test plan leverages the Profiles and Examples shown on the [Artifacts Summary](artifacts.html). The [Profiles](artifacts.html#structures-resource-profiles) listed are describing the constraints that would be adhered to by actors claiming conformance to this implementation guide. Thus, any applicable Resources that are known to have been published by an app or server MUST be conformant to these profiles as appropriate.

The Examples listed in [Example Instances](artifacts.html#example-example-instances) are example instances.

This section will be filled in as the IHE Connectathon need drives the creation of the test plans, test procedures, test tools, and reporting.


### Unit Test Procedure

Unit Tests in this context is where a SUT is tested against a simulator or validator. A simulator is a implementation of an actor that is designed specifically to test the opposite pair actor. The simulator might be a reference implementation or may be a specially designed test-bench. Where a reference implementation is used the negative tests are harder to simulate. A validator is a implementation that can check conformance. A validator may be a simulator, but may also be a standalone tool used to validate only a message encoding. Some reference implementations may be able to validate to a StructureDefinition profile, but often these do not include sufficient constraints given the overall actor conformance criteria. 

### Integration Test Procedure

Integration Tests in this context is where two SUT of paired actors test against each other. In this case the subset of tests that can be tested is the intersection. Testing only this intersection is necessary but not sufficient. The testing must also include the capability of the client to exercise the test scenarios that this SUT can test, to determine that failure-modes are handled properly by both SUT.

## High-level Test Scope

### Content Data Structure Creator
The Content Data Structure Creator is able to develop a mADX Measure which describes the base constraints for a valid mADX data message and any required code sets for disaggregation dimensions of the reported values. 

### Content Data Structure Consumer
The Content Data Structure Consumer is able to request a HL7 FHIR Measure that is conformant to mADX from a Content Data Structure Consumer using the  Retrieve Aggregate Report Definition [QRPH-59].

### Content Creator
The Content Creator is able to create a HL7 FHIR Measure that is conformant to mADX. The Content Creator is able to send the Measure to a Content Consumer.

### Content Consumer
The Content Consumer is able to process a data stream that is conformant to the format defined by the Measure resource produced by the Content Data Structure Creator. 

#### Test Case 1: The Content Data Structure Creator provides the normative mADX HL7 FHIR Measure Resource
GIVEN that the Content Data Structure Creator has the authority to develop a normative mADX HL7 FHIR Measure resource and the Content Data Structure Consumer already has a business identifier for the Measure they are interested in
WHEN the Content Data Structure Consumer requests a specific mADX Measure by executing a Retrieve Aggregate Report Definition [QRPH-59]  
THEN the Content Data Structure Creator is able to provide the requested mADX Measure

#### Test Case 2: The Content Creator sends a report with invalid terminology code
GIVEN that the Content Creator is able to create reports, containing aggregate health data, based on a normative mADX HL7 FHIR Measure resource
WHEN the Content Creator transmits a Send Aggregate Report request message that contains invalid terminology codes
THEN the Content Consumer responds with an appropriate HTTP status code

#### Test Case 3: The Content Creator sends a report with invalid reporting location
GIVEN that the Content Creator is able to create reports, containing aggregate health data, based on a normative mADX HL7 FHIR Measure resource
WHEN the Content Creator transmits a Send Aggregate Report request message that contains an invalid reporting location ID
THEN the Content Consumer responds with an appropriate HTTP status code

