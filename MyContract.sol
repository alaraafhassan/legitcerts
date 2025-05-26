// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract NFCCertification {

    address public admin;

    struct Certificate {
        string studentName;
        string courseName;
        string issueDate;
        string ipfsHash; // IPFS hash of certificate data
        bool isValid;
    }

    mapping(string => Certificate) private certificates;

    event CertificateIssued(string indexed certificateId, string studentName, string courseName);
    event CertificateRevoked(string indexed certificateId);

    modifier onlyAdmin() {
        require(msg.sender == admin, "Only admin can perform this action");
        _;
    }

    constructor() {
        admin = msg.sender;
    }

    function issueCertificate(
        string memory _certificateId,
        string memory _studentName,
        string memory _courseName,
        string memory _issueDate,
        string memory _ipfsHash
    ) public onlyAdmin {
        require(!certificates[_certificateId].isValid, "Certificate already exists");

        certificates[_certificateId] = Certificate({
            studentName: _studentName,
            courseName: _courseName,
            issueDate: _issueDate,
            ipfsHash: _ipfsHash,
            isValid: true
        });

        emit CertificateIssued(_certificateId, _studentName, _courseName);
    }

    function revokeCertificate(string memory _certificateId) public onlyAdmin {
        require(certificates[_certificateId].isValid, "Certificate doesn't exist or already revoked");

        certificates[_certificateId].isValid = false;

        emit CertificateRevoked(_certificateId);
    }

    function verifyCertificate(string memory _certificateId) public view returns (
        string memory studentName,
        string memory courseName,
        string memory issueDate,
        string memory ipfsHash,
        bool isValid
    ) {
        Certificate memory cert = certificates[_certificateId];
        return (
            cert.studentName,
            cert.courseName,
            cert.issueDate,
            cert.ipfsHash,
            cert.isValid
        );
    }
}
