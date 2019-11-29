struct H4 {
    var text: String
}

extension H4: HTMLElement {
    var html: String {
        "<h4>\(text)</h4>"
    }
}
