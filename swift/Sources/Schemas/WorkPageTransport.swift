import Foundation

/// Transport the current blocking turn's harness selects for this attachment. Use the executor channel only while this is 'channel'; otherwise poll this route.
public enum WorkPageTransport: String, Codable, Hashable, CaseIterable, Sendable {
    case channel
    case poll
}