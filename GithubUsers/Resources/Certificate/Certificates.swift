//
//  Certificates.swift
//  GithubUsers
//
//  Created by Wanhar on 09/01/23.
//

import Foundation

/// struct for reading Certificates from files for Certificate Pinning
struct Certificates {
    
    /// assign .cer file to this constant
    static let cloudFlare: SecCertificate = Certificates.certificate(filename: "sni.cloudflaressl.com")
  
    /// Read certifice from file
    ///
    /// - Parameter filename: name of the certificate, file must have der extension
    /// - Returns: read certificate from file as SecCertificate, if file doesn't exists it will perform crash
    private static func certificate(filename: String) -> SecCertificate {
        
        let filePath = Bundle.main.path(forResource: filename, ofType: "cer")!
        let data = try! Data(contentsOf: URL(fileURLWithPath: filePath))
        let certificate = SecCertificateCreateWithData(nil, data as CFData)!
        
        return certificate
  }
}
