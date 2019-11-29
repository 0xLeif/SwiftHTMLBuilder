struct H5 {
    var text: String
}

extension H5: HTMLElement {
    var html: String {
        "<h5>\(text)</h5>"
    }
}
