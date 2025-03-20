<div markdown="1" class="stu-note">

| [Significant Changes, Open and Closed Issues](issues.html) |

</div>

### Introduction to this Supplement

Whenever possible, IHE profiles are based on established and stable underlying standards. However, if an IHE domain determines that an emerging standard has high likelihood of industry adoption, and the standard offers significant benefits for the use cases it is attempting to address, the domain may develop IHE profiles based on such a standard. During Trial Implementation, the IHE domain will update and republish the IHE profile as the underlying standard evolves.
Product implementations and site deployments may need to be updated in order for them to remain interoperable and conformant with an updated IHE profile.
This mADX Profile incorporates content from Release 4 of the HL7 FHIR specification. HL7 describes FHIR Change Management and Versioning at {{site.data.fhir.path}}versions.html.
HL7 provides a rating of the maturity of FHIR content based on the FHIR Maturity Model (FMM): level 0 (draft) through N (Normative). See {{site.data.fhir.path}}versions.html#maturity. 

The FMM levels for FHIR content used in this profile are:

| FHIR Content (Resources, ValueSets, etc.) | FMM Level |
| --- | --- |
| Measure | 2 |
| MeasureReport | 2 |

The Mobile Aggregate Data Exchange (mADX) Profile supports interoperable public health reporting of aggregate health data. These most typically take the form of routine reports (weekly, monthly, quarterly etc.) from a health facility to some administrative jurisdiction such as a health district, though there are numerous other use cases such as international reporting and community health worker reporting.

As the motivating context and use cases for this profile are the same as the Aggregate Data Exchange (ADX) Profile, they are not repeated here. The mADX and ADX file are intended to be functionally equivalent.

**Difference from existing ADX Profile**

The primary purpose of the mADX Profile is to provide an alternative for the exchange and management of the metadata required for routine reporting by replacing the use of SDMX with HL7 FHIR. Metadata data in ADX, or ADX/DSD, is a profile of the SDMX Data Structure Definition (DSD). Challenges in working with it include:

- Scaling limitations as it requires ongoing maintenance of facility and location lists in the ADX/DSD.
- Bandwidth limitations when trying to transfer an ADX/DSD for validation of an ADX. Facility and location lists can be large which complicates deployments in resource constrained settings.
- Management and exchange of code lists for disaggregators.

mADX profiles HL7 FHIR Measure and MeasureReport resources. Additionally, this profile makes use of the Mobile Care Services Discovery (mCSD) Profile for facility and location data and the Sharing Valuesets and Codes Maps (SVCM) Profile for terminology meta data.  The mADX Profile will allow vendors and implementers to utilize the robust ecosystem of tools around HL7 FHIR and promote standards-based routine reporting.

**Approach**

This specification profiles HL7 FHIR to define an mADX Measure to normatively describe the structure of routine aggregate data reports as an mADX message. The mADX Profile uses the following actors:

- the Content Creators and the Content Consumer for the creation and consumption of mADX messages
- the Content Data Structure Creator and the Content Data Structure Consumer, defined in the ADX Profile, which produce and consume the Measure resources respectively
- the Care Services Update Supplier and the Care Services Update Consumer, defined in the mCSD Profile, for supplying and consuming location data
- the Terminology Consumer defined in the SVCM Profile for querying and validating codes

The FHIR Measure resource is used in mADX to define the metadata required to validate an mADX message and defined in terms of a HL7 FHIR Terminology Service. The HL7 FHIR Terminology Services are used for the exchange of disaggregators and IHE’s Mobile Care Services Discovery (mCSD) is used for the exchange of location metadata. These services may be used by the Content Creator and the Content Consumer to validate the structural metadata of mADX data messages exchanged.

### Organization of This Guide

This guide is organized into the following sections:

1. Volume 1:
   1. [Introduction](volume-1.html)
   1. [Actors, Transactions, and Content Modules](volume-1.html#actors-transactions-content-modules)
   1. [Actor Options](volume-1.html#actor-options)
   1. [Actor Required Groupings](volume-1.html#required-groupings)
   1. [Overview](volume-1.html#overview)
   1. [Security Considerations](volume-1.html#security-considerations)
   1. [Cross Profile Considerations](volume-1.html#other-grouping)
2. Volume 2: Transaction Detail
   1. [Send Aggregate Report [QRPH-58]](QRPH-58.html)
   1. [Retrieve Aggregate Report Definition [QRPH-59]](QRPH-59.html)
3. Volume 3: Metadata and Content
   1. [Content Modules](volume-3.html)
4. Volume 4: National Extensions
   1. [National Extensions](volume-4.html)
5. Other
   1. [Test Plan](testplan.html)
   1. [Changes to Other IHE Specifications](other.html)
   1. [Download and Analysis](download.html)

See also the [Table of Contents](toc.html) and the index of [Artifacts](artifacts.html) defined as part of this implementation guide.

### Conformance Expectations

IHE uses the normative words: Shall, Should, and May according to [standards conventions](https://profiles.ihe.net/GeneralIntro/ch-E.html).

#### Must Support

The use of ```mustSupport``` in StructureDefinition profiles equivalent to the IHE use of **R2** as defined in [Appendix Z](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html#z.10-profiling-conventions-for-constraints-on-fhir).

mustSupport of true - only has a meaning on items that are minimal cardinality of zero (0), and applies only to the source actor populating the data. The source actor shall populate the elements marked with MustSupport, if the concept is supported by the actor, a value exists, and security and consent rules permit.
The consuming actors should handle these elements being populated or being absent/empty.
Note that sometimes mustSupport will appear on elements with a minimal cardinality greater than zero (0), this is due to inheritance from a less constrained profile.

### IHE Technical Frameworks General Introduction
The [IHE Technical Framework General Introduction](https://profiles.ihe.net/GeneralIntro) is shared by all of the IHE domain technical frameworks. Each technical framework volume contains links to this document where appropriate.

#### Copyright Licenses

IHE technical documents refer to, and make use of, a number of standards developed and published by several standards development organizations. Please refer to the IHE Technical Frameworks General Introduction, [Chapter 9 - Copyright Licenses](https://profiles.ihe.net/GeneralIntro/ch-9.html) for copyright license information for frequently referenced base standards. Information pertaining to the use of IHE International copyrighted materials is also available there.

#### Trademark

IHE® and the IHE logo are trademarks of the Healthcare Information Management Systems Society in the United States and trademarks of IHE Europe in the European Community. Please refer to the IHE Technical Frameworks General Introduction, [Chapter 10 - Trademark](https://profiles.ihe.net/GeneralIntro/ch-10.html) for information on their use.