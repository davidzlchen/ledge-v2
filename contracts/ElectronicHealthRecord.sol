pragma solidity ^0.4.16;

contract ElectronicHealthRecord {
  struct GeneralInformation {
    bytes32 name;
    bytes32 birthday;
    uint heightFt;
    uint heightIn;
    uint weight;
  }

  struct InsuranceInfo {
    bytes32 primaryInsurance;
    bytes32 otherInsurance;
    bytes32 primaryPhysician;
    bytes32 otherPhysician;
    bytes32 pharmacy;
  }

  struct EmergencyContact {
    bytes32 contactName;
    bytes32 relationship;
    bytes32 contactPhoneNumber;
  }

  struct MedicalHistory {
    bytes32 medicalConditions;
    bytes32 allergies;
    bytes32 symptoms;
    bytes32 illness;
    bytes32 surgery;
  }

  struct PersonalHealthRecord {
    GeneralInformation generalInformation;
    InsuranceInfo insuranceInfo;
    EmergencyContact emergencyContact;
    MedicalHistory medicalHistory;
  }

  PersonalHealthRecord healthRecord;

  public function ElectronicHealthRecord() {
    healthRecord.medicalHistory.medicalConditions = "yes";
  }

}
