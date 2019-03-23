//
// This file was automatically generated and should not be edited.
//
//  iPhones.swift
//  Orchard
//
//  Created by Jeff Kelley on 7/16/18.
//

import Foundation

#if os(watchOS)

public enum Watches {

    @available (watchOS, introduced: 1.0, deprecated: 4.0)
    case AppleWatch_38mm

    @available (watchOS, introduced: 1.0, deprecated: 4.0)
    case AppleWatch_42mm

    @available (watchOS, introduced: 3.0)
    case AppleWatchSeries1_38mm

    @available (watchOS, introduced: 3.0)
    case AppleWatchSeries1_42mm

    @available (watchOS, introduced: 3.0)
    case AppleWatchSeries2_38mm

    @available (watchOS, introduced: 3.0)
    case AppleWatchSeries2_42mm

    @available (watchOS, introduced: 4.0)
    case AppleWatchSeries3_38mm

    @available (watchOS, introduced: 4.0)
    case AppleWatchSeries3_42mm

    @available (watchOS, introduced: 5.0)
    case AppleWatchSeries4_40mm

    @available (watchOS, introduced: 5.0)
    case AppleWatchSeries4_44mm

    case unknown

    internal init(model: String) {
        self = .unknown

        switch model {
        case "Watch1,1":
            self = .AppleWatch_38mm

        case "Watch1,2":
            self = .AppleWatch_42mm

        case "Watch2,6":
            if #available(watchOS 3.0, *) {
                self = .AppleWatchSeries1_38mm
            }

        case "Watch2,7":
            if #available(watchOS 3.0, *) {
                self = .AppleWatchSeries1_42mm
            }

        case "Watch2,3":
            if #available(watchOS 3.0, *) {
                self = .AppleWatchSeries2_38mm
            }

        case "Watch2,4":
            if #available(watchOS 3.0, *) {
                self = .AppleWatchSeries2_42mm
            }

        case "Watch3,1", "Watch3,3":
            if #available(watchOS 4.0, *) {
                self = .AppleWatchSeries3_38mm
            }

        case "Watch3,2", "Watch3,4":
            if #available(watchOS 4.0, *) {
                self = .AppleWatchSeries3_42mm
            }

        case "Watch4,1", "Watch4,3":
            if #available(watchOS 5.0, *) {
                self = .AppleWatchSeries4_40mm
            }

        case "Watch4,2", "Watch4,4":
            if #available(watchOS 5.0, *) {
                self = .AppleWatchSeries4_44mm
            }

        default: break

        }
    }

    public var marketingName: String? {
        switch self {
        case .AppleWatch_38mm: return "Apple Watch"
        case .AppleWatch_42mm: return "Apple Watch"
        case .AppleWatchSeries1_38mm: return "Apple Watch Series 1"
        case .AppleWatchSeries1_42mm: return "Apple Watch Series 1"
        case .AppleWatchSeries2_38mm: return "Apple Watch Series 2"
        case .AppleWatchSeries2_42mm: return "Apple Watch Series 2"
        case .AppleWatchSeries3_38mm: return "Apple Watch Series 3"
        case .AppleWatchSeries3_42mm: return "Apple Watch Series 3"
        case .AppleWatchSeries4_40mm: return "Apple Watch Series 4"
        case .AppleWatchSeries4_44mm: return "Apple Watch Series 4"

        default: return nil
        }
    }
}

#endif