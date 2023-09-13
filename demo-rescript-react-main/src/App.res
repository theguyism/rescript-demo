%%raw(`import './App.css';`)
@module("./logo.svg") external logo: string = "default"

let numBox = [1, 2, 3]
@react.component
let make = () => {
  <div className="App">
    <h1> {React.string("Name: Hunter")} </h1>
    <hr className="rounded" />
    {numBox
    ->Belt.Array.mapWithIndex((i, todo) => {
      <div className="grid-container">
        <div className="item1"> <Box /> </div>
        <div className="item1"> <Box /> </div>
        <div className="item1"> <Box /> </div>
      </div>
    })
    ->React.array}
  </div>
}
