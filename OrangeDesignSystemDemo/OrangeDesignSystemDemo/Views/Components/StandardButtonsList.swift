//
// MIT License
// Copyright (c) 2021 Orange
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the  Software), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.
//
//

import Foundation
import OrangeDesignSystem
import SwiftUI

struct StandardButtonsList: View {

    let hPadding: CGFloat = 16.0
    var body: some View {
        ScrollView {
            let imageDescriptionPlus = ODSImageDescription(image: Image(systemName: "plus.circle").renderingMode(.template), imageWidth: 30, imageHeight: 30, foregroundColor: ODS.coreOrange)
            let imageDescriptionInfo = ODSImageDescription(image: Image(systemName: "info.circle").renderingMode(.template), imageWidth: 30, imageHeight: 30, foregroundColor: ODS.coreOrange)

            VStack(alignment: .center, spacing: 30) {
                HStack(alignment: .center) {
                    Button {
                        print("Action")
                    } label: {
                        ODSGenericButtonContent(imageDescription: imageDescriptionPlus)
                    }
                    .padding(.horizontal, hPadding)

                    Text("Icon (add)").odsFont(style: .bodyBold)
                }

                HStack(alignment: .center) {
                    Button {
                        print("Action")
                    } label: {
                        ODSGenericButtonContent(imageDescription: imageDescriptionInfo)
                    }
                    .padding(.horizontal, hPadding)

                    Text("Icon (info)").odsFont(style: .bodyBold)
                }

                HStack(alignment: .center) {
                    Button {
                        print("Action")
                    } label: {
                        ODSGenericButtonContent(topText: "Button", textColor: ODS.coreOrange)
                    }
                    .padding(.horizontal, hPadding)

                    Text("Label").odsFont(style: .bodyBold)
                }
            }
        }.navigationTitle("Text Buttons")
            .navigationViewStyle(.stack)
    }
}
