//
//  Extensions.swift
//  instagram
//
//  Created by Enrique Sotomayor on 9/24/21.
//

import Foundation
import UIKit

extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
