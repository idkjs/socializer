module Container = {
  @module("react-bootstrap/Container") @react.component
  external make: (~children: option<React.element>=?) => React.element =
    "default"
}

module Row = {
  @module("react-bootstrap/Row") @react.component
  external make: (
    ~className: string,
    ~children: option<React.element>=?,
  ) => React.element = "default"
}
module Nav = {
  @module("react-bootstrap/Nav") @react.component
  external make: (
    ~className: string,
    ~children: option<React.element>=?,
  ) => React.element = "default"
}
module Navbar = {
  @module("react-bootstrap/Navbar") @react.component
  external make: (
    ~className: string,
    ~children: option<React.element>=?,
  ) => React.element = "default"
}
module Col = {
  @module("react-bootstrap/Col") @react.component
  external make: (
    ~className: string,
    ~children: option<React.element>=?,
  ) => React.element = "default"
}
module Button = {
  @module("react-bootstrap/Button") @react.component
  external make:   (
      ~active: bool=?,
      ~variant: string=?,
      ~onClick: ReactEvent.Form.t => unit=?,
      ~_type: string=?,
      ~className: string=?,
      ~children: React.element=?
    ) => React.element = "default"
}
module Form = {
  @module("react-bootstrap/Form") @react.component
  external make: (
    ~inline: bool=?,
    ~validated: bool=?,
    ~onSubmit: ReactEvent.Form.t => unit=?,
    ~children: React.element=?,
  ) => React.element = "default"
}

