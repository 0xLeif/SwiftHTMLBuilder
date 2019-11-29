struct Img {
    var src: String
    var alt: String?
    var width: Int?
    var height: Int?
}

extension Img: HTMLElement {
    var html: String {
        """
        <img src=\(src) \(alt.map { "alt=\($0)" } ?? "") \(width.map { "width=\($0)" } ?? "") \(height.map { "height=\($0)" } ?? "")>
        """
    }
}
