//
//  CertificatesView.swift
//  SwiftUICombineAndData
//
//  Created by Amaechi Chukwu on 04/06/2022.
//

import SwiftUI

struct CertificatesView: View {
    @StateObject var certificateVM = CertificateViewModel()

    var body: some View {
        VStack {
            ForEach(certificateVM.certificates, id: \.id) {
                certificate in
                CertificateCard(certificate: certificate)
            }
        }
        .background(AccountBackground())
    }
}

struct CertificatesView_Previews: PreviewProvider {
    static var previews: some View {
        CertificatesView()
    }
}
