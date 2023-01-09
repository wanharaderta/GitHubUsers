//
//  AFNetworking.swift
//  GithubUsers
//
//  Created by Wanhar on 09/01/23.
//

import Alamofire

final class AFNetworking {
    /// defined certificates for Certificate pinning
    private let certificates = [
        "reqres.in":
            PinnedCertificatesTrustEvaluator(certificates: [Certificates.cloudFlare],
                                             acceptSelfSignedCertificates: false,
                                             performDefaultValidation: true,
                                             validateHost: true)
    ]
    
    let session: Session
    
    ///
    /// - Parameter allHostsMustBeEvaluated: it configures certificate pinning behaviour
    /// if true: Alamofire will only allow communication with hosts defined in evaluators and matching defined Certificates.
    /// if false: Alamofire will check certificates only for hosts defined in evaluators dictionary. Communication with other hosts than defined will not use Certificate pinning
    required init(allHostsMustBeEvaluated: Bool) {
        
        let serverTrustPolicy = ServerTrustManager(
            allHostsMustBeEvaluated: allHostsMustBeEvaluated,
            evaluators: certificates
        )
        session = Session(serverTrustManager: serverTrustPolicy, eventMonitors: [AlamofireLogger()])
    }
}
