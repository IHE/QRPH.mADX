## 5 IHE Namespaces, Concept Domains and Vocabularies

### 5.1 IHE Namespaces
The QRPH registry of OIDs is located at [https://wiki.ihe.net/index.php/QRPH_Registry](https://wiki.ihe.net/index.php/QRPH_Registry)

Additions to the QRPH OID Registry are:
|codeSystem | codeSystemName | Description |
|-------------------|--------------------------|---------------|
| NA | NA|NA|

### 5.2 IHE Concept Domains

NA

### 5.3 IHE Format Codes and Vocabularies

#### 5.3.1 IHE Format Codes
|Profile | Format Code| Media Type | Template ID |
|-------------------|--------------------------|---------------|--------|
| NA | NA|NA|NA|

#### 5.3.2 IHEActCode Vocabulary
|Code| Description |
|-------------------|--------------------------|
| NA | NA|

#### 5.3.3 IHERoleCode Vocabulary
|Code| Description |
|-------------------|--------------------------|
| NA | NA|


## 6 Content Modules

NA

## 7 DICOM Content Definitions

NA
## 8 mADX Content Modules

This section defines Content Modules for the Aggregate Data Exchange (mADX) Profile.

### 8.1 Overview of mADX process
A Content Data Structure Creator creates mADX-conformant Measure and schema streams. Typically, the mADX Content Data Structure Creator will be an implementing jurisdiction such as a ministry of health, a global non-government organization (NGO) or a donor.

- An mADX compliant Measure is a profile of the HL7 FHIR Measure, as described in Section 8.2.
- mADX Content data messages can be validated using valuesets from the HL7 FHIR Terminology Service.

Content Creators and Content Consumers exchange a data payload that conforms to the mADX compliant resources. A sample mADX compliant data payload is provided in the informative Appendix 8C.

Additional (informative) message constraints for interoperability of mADX data exchange which are outside of the scope of this profile are described in Section 8.4.

<a name="section-8.2"> </a>

### 8.2 FHIR Measure Report

An mADX FHIR Measure Report shall be compliant with the additional constraints defined in Section 8.3 of this profile.

The purpose of profiling the base Measure is to provide guidance regarding which parts of an mADX Measure are fixed by the profile and which parts may be extended to support implementation-specific requirements.

### 8.3 mADX Message Exchange Constraints

There are implicit assumptions regarding the sharing of additional metadata between Content Creators and Content Consumers which are not covered within the scope of the mADX Profile. In order to ensure semantic validity of the exchanged data, the constraints described below shall be specified using processes not defined by this profile:
- The data elements to be reported for particular Organizational Units. For example, reporting ‘Number of lab Tests performed’ from a health facility which did not perform laboratory tests is not constrained by mADX.

The Value type (real or integer) expected for individual data elements.

- Which period types are appropriate for which data elements. For an informative sample of period types please see the Aggregate Data Exchange Technical Framework Supplement Appendix 8J – (Informative) Formatting of times and time intervals in ADX.
- Description of age disaggregations shall follow the format described in the ADX Profile (Appendix 8K – Representation of age groups in ADX).

The preceding is not an exhaustive list. Other business rules that may affect interoperability may need to be established such as bounds on data values, bounds on date ranges, relationships between different data elements (e.g., the sum of these data elements cannot be greater than the sum of those data elements, etc.)