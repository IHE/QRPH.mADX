## Significant Changes

### Significant Changes from Revision 2.1 (2021-10-26)

- Converted the IHE-Profile to IG format from PDF
- Added a dependency to the [CRMIShareableMeasure](http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareablemeasure) profile to reuse already defined constraints.
- Aligned in the specifications the message names of both transactions, to ensure consistency in naming.
- Message semantics changes:
	- **MeasureReport**:
		- Deletions: `period`
		- Additions: `improvementNotation`, `group.population.code`, `group.population.count`, `group.stratifier.stratum.measureScore`
		- Updates: `subject`- updated the functional definition. The old definition suggested that the subject is always a `Location`.
	- **Measure**:
		- Additions: `improvementNotation`, `group.population.code`

## Issues

### Submit an Issue
IHE welcomes [New Issues](https://github.com/IHE/QRPH.mADX/issues/new/choose) from the GitHub community. 
For those without GitHub access, issues can be submitted to the [QRPH Public Comment form](https://www.ihe.net/QRPH_Public_Comments/).

As issues are submitted they will be managed on the [QRPH GitHub Issues](https://github.com/IHE/QRPH.mADX/issues), where discussion and workarounds can be found. These issues, when critical, will be processed using the normal [IHE Change Proposal](https://wiki.ihe.net/index.php/Category:CPs) management and balloting. 
It is important to note that as soon as a Change Proposal is approved, it carries the same weight as a published Implementation Guide (i.e., it is testable at an [IHE Connectathon](https://www.ihe.net/participate/connectathon/) from the time it is approved, even if it will not be integrated until several months later).

### Open Issues

- mADX_001: Are the current validation options sufficient, currently it is only the Content Consumer. Potential to validate on submission of data to the Content Consumer (in which case the Validate Option is only for the Content Consumer and not so much the Content Creator) or as a separate transaction to a Content Data Structure Creator (which could be the same actor as the Content Consumer)?
- mADX_002: Should the FHIR resource OperationOutcome described in Section 3.58.4.2.3 Expected Actions have its messaging semantics detailed as part of the validation transaction?
- mADX_003: For each value set referenced, a FHIRPath needs to be defined. See Section 3.58.4.2.4 Expected Actions Validation Option.<br>
Question in sure the cross-referencing of components and related artifacts are correct.
- mADX_004: Should the mCSD Find Matching Care Services [ITI-90] transaction be used to locate care services or should the mCSD Request for Care Services Updates [ITI-91] transaction be used instead? Should we provide optionality to choose either one, or should we add a discussion in the cross-profile considerations which would suggest that the [ITI-91] transaction can be used in production for caching/performance issues?
- mADX_005: FHIR supports batch use of the Read and Update transactions. Should those transactions be profiled in mADX?
- mADX_006: Is there a need to profile async transactions in mADX? This was in scope for ADX, but is Maturity Level 2 in [FHIR: Async]({{site.data.fhir.path}}async.html)
- mADX_007: Do we need to make required in mADXMeasureReport to have a "reporter"? In FHIR R4 and R5 "reporter" is optional.
- mADX_008: Do we need a search transaction on Measure that reflects how a Content Data Structure Consumer is able to request all Measures available? If the answer is "yes", then what [search parameters]({{site.data.fhir.path}}measure.html#search) should be included?
- mADX_010: An example for stratification by 2 dimensions (Age group and Gender) was added, as this is a common scenario. We encourage the community to review the example and come up with suggestions related to how we can best represent the disaggregation by multiple criteria and multiple dimensions at the same time.

### Closed Issues

- mADX_001: How will mADX handle what is covered in Appendix 8D - Formatting of times and time intervals in mADX?
*Resolution*: mADX does not include ADX to mADX mapping. This may be included in the IHE QRPH Clinical Quality Language for [ADX White Paper](https://www.ihe.net/uploadedFiles/Documents/QRPH/IHE_QRPH_White_Paper_CQL.pdf).
- mADX_002: How are stratification codes handled in the FHIR Terminology Server? E.g., Age 1-4 and Male/Female. In ADX the added Schematron definition handled this issue, how will validation of stratified codes work in mADX?
*Resolution*: The stratification codes are defined as ValueSets that are referenced in a Measure.relatedArtifact and then linked to the stratifiers. This can be used to validate under the Validate Option. There is no need for the mADX Profile to have the equivalent of the Schematron.
- mADX_003: Should the term Data Structure Definition (DSD) be changed? This is an SDMX specific term from ADX that has been borrowed in mADX because we anticipate the FHIR Measure shares a similar role. Changing the term DSD may also necessitate of a change of the actor the Content Data Structure Creator.
*Resolution*: This term should be changed to use Measure, so as not to cause confusion with the ADX Profile.
- mADX_004: Is how mADX return errors for validation as an OperationOutcome against the FHIR Terminology Service and Content Services Update Supplier specified in mCSD sufficient? Should the profile describe the potential errors and messages?
*Resolution*: This behavior is described in the SVCM transaction Validate Code [ITI-99] detailed in Section 3.99.4.3.3 of the SVCM Profile. The Terminology Service shall respond with an error message.
