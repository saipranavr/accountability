//
//  PopularApp.swift
//  accountability
//
//  Enum of popular apps for picker in App Intent.
//

import AppIntents

@available(iOS 17.0, *)
enum PopularApp: String, AppEnum {
    case instagram = "instagram://"
    case youtube = "youtube://"
    case tiktok = "tiktok://"
    case spotify = "spotify://"
    case facebook = "fb://"
    case snapchat = "snapchat://"
    case whatsapp = "whatsapp://"
    case gmail = "googlegmail://"
    case chrome = "googlechrome://"
    case maps = "maps://"
    case messages = "sms://"
    case phone = "tel://"

    static var typeDisplayRepresentation: TypeDisplayRepresentation = TypeDisplayRepresentation(name: "App")

    static var caseDisplayRepresentations: [PopularApp : DisplayRepresentation] = [
        .instagram: DisplayRepresentation(title: "Instagram"),
        .youtube: DisplayRepresentation(title: "YouTube"),
        .tiktok: DisplayRepresentation(title: "TikTok"),
        .spotify: DisplayRepresentation(title: "Spotify"),
        .facebook: DisplayRepresentation(title: "Facebook"),
        .snapchat: DisplayRepresentation(title: "Snapchat"),
        .whatsapp: DisplayRepresentation(title: "WhatsApp"),
        .gmail: DisplayRepresentation(title: "Gmail"),
        .chrome: DisplayRepresentation(title: "Chrome"),
        .maps: DisplayRepresentation(title: "Maps"),
        .messages: DisplayRepresentation(title: "Messages"),
        .phone: DisplayRepresentation(title: "Phone")
    ]

    var displayTitle: String {
        switch self {
        case .instagram: return "Instagram"
        case .youtube: return "YouTube"
        case .tiktok: return "TikTok"
        case .spotify: return "Spotify"
        case .facebook: return "Facebook"
        case .snapchat: return "Snapchat"
        case .whatsapp: return "WhatsApp"
        case .gmail: return "Gmail"
        case .chrome: return "Chrome"
        case .maps: return "Maps"
        case .messages: return "Messages"
        case .phone: return "Phone"
        }
    }
}


