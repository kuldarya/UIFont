import Foundation

class Font: NSObject {
    var familyName: String
    var fontName: String
    
    init (familyName: String, fontName: String) {
        self.familyName = familyName
        self.fontName = fontName
    }
    
}
