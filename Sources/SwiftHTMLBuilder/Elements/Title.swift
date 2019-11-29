struct Title {
    var text: String
}

extension Title: HTMLElement {
    var html: String {
        "<title>\(text)</title>"
    }
}
