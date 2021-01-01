//
//  PickerViewItem.swift
//  modaltransitionsample
//
//  Created by tkhs0604 on 2021/01/01.
//

import UIKit

enum PickerViewItem: CaseIterable {
    case fullScreen
    case pageSheet
    case formSheet
    case currentContext
//    case custom
    case overFullScreen
    case overCurrentContext
//    case popover
//    case none
    case automatic
    
    var label: String {
        return String(describing: self)
    }
    
    var style: UIModalPresentationStyle {
        switch self {
        case .fullScreen:
            return .fullScreen
        case .pageSheet:
            return .pageSheet
        case .formSheet:
            return .formSheet
        case .currentContext:
            return .currentContext
//        case .custom:
//            return .custom
        case .overFullScreen:
            return .overFullScreen
        case .overCurrentContext:
            return .overCurrentContext
//        case .popover:
//            return .popover
//        case .none:
//            return .none
        case .automatic:
            return .automatic
        }
    }
    
}
