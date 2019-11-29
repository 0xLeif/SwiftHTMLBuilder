struct Button {
    var text: String
}

extension Button: HTMLElement {
    var html: String {
        "<button>\(text)</button>"
    }
}
