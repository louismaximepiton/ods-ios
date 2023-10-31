//
// Software Name: Orange Design System (iOS)
// SPDX-FileCopyrightText: Copyright (c) 2021 - 2023 Orange SA
// SPDX-License-Identifier: MIT
//
// This software is distributed under the MIT license.
//

import SwiftUI

protocol Guideline {
    var title: String { get }
    var imageName: String { get }
    var description: String { get }
    var pageDescription: AnyView { get }
}
