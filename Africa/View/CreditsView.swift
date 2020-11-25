//
//  CreditsView.swift
//  Africa
//
//  Created by Yermek Sabyrzhan on 25.11.2020.
//

import SwiftUI

struct CreditsView: View {
    var body: some View {
		VStack {
			Image("compass")
				.resizable()
				.scaledToFit()
				.frame(width: 128, height: 128)
			Text("""
			    Copyright made for education
			    All right can go to fuck
			    """)
				.font(.footnote)
				.multilineTextAlignment(.center)
		}
		.padding()
		.opacity(0.4)
    }

}

struct CreditsView_Previews: PreviewProvider {
    static var previews: some View {
        CreditsView()
			.previewLayout(.sizeThatFits)
			.padding()
    }
}
