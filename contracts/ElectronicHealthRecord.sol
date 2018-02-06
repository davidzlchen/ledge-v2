pragma solidity ^0.4.16;

contract ElectronicHealthRecord {
    struct GeneralInformation {
        bytes32 fileHash;
    }

    struct InsuranceInfo {
        bytes32 fileHash;
    }

    struct EmergencyContact {
        bytes32 fileHash;
    }

    struct MedicalHistory {
        bytes32 fileHash;
    }

    struct PersonalHealthRecord {
        bytes32 fileHash;
        GeneralInformation generalInfo;
        InsuranceInfo insuranceInfo;
        EmergencyContact emergencyContact;
        MedicalHistory medicalHistory;
    }

    PersonalHealthRecord healthRecord;

    function ElectronicHealthRecord(bytes32 phrHash, bytes32 genHash, bytes32 insurHash, bytes32 emerHash, bytes32 medHash) public {
        healthRecord.fileHash = phrHash;
        healthRecord.generalInfo.fileHash = genHash;
        healthRecord.insuranceInfo.fileHash = insurHash;
        healthRecord.emergencyContact.fileHash = emerHash;
        healthRecord.medicalHistory.fileHash = medHash;
    }

    function setGenHash(bytes32 hash) public {
        healthRecord.generalInfo.fileHash = hash;
    }

    function setInsurHash(bytes32 hash) public {
        healthRecord.insuranceInfo.fileHash = hash;
    }

    function setEmerHash(bytes32 hash) public {
        healthRecord.emergencyContact.fileHash = hash;
    }
    
    function setMedhash(bytes32 hash) public { 
        healthRecord.medicalHistory.fileHash = hash;
    }
}
