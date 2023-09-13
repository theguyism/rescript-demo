%%raw(`import './Box.css';`)
@module("./logo.svg") external logo: string = "default"

@react.component
let make = () => {
  let randomColor =
    Js.Math.floor(Js.Math.random() *. 16777215.)->Js.Int.toStringWithRadix(~radix=16)

  let color = Js.String2.concat("#", Js.String2.make(randomColor))

  <div className="box" style={ReactDOM.Style.make(~backgroundColor=color, ())} />
}
