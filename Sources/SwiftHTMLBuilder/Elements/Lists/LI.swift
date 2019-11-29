struct LI {
    var title: String
}

extension LI: HTMLElement {
    var html: String {
        "<li>\(title)</li>"
    }
}
