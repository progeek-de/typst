use ecow::EcoString;
use typst_macros::elem;

use crate::foundations::Content;

/// Places content on a PDF layer.
///
/// ```example
/// #pdf.layer("Logo")[
///   #circle(fill: aqua, radius: 8pt)
/// ]
/// The logo can be hidden in the viewer.
/// ```
#[elem(since = "unreleased")]
pub struct LayerElem {
    /// The layer's name, as shown in the PDF viewer.
    #[required]
    pub name: EcoString,

    /// Whether the layer is initially visible on screen.
    #[default(true)]
    pub view: bool,

    /// The content on the layer.
    #[required]
    pub body: Content,

    #[internal]
    #[ghost]
    pub current: Option<Layer>,
}

#[derive(Debug, Clone, PartialEq, Eq, Hash)]
pub struct Layer {
    pub name: EcoString,
    pub view: bool,
}
