open TestFramework
open RescriptReactRouter

describe("it allows to create url from string", ({test}) => {
  test("it supports basic paths", ({expect}) => {
    let expected = {path: list{"foo", "bar"}, hash: "", search: ""}
    let generated = dangerouslyGetInitialUrl(~serverUrlString="/foo/bar", ())

    expect.bool(generated == expected).toBeTrue()
  })

  test("it creates with search", ({expect}) => {
    let expected = {path: list{"foo", "bar"}, hash: "", search: "q=term"}
    let generated = dangerouslyGetInitialUrl(~serverUrlString="/foo/bar?q=term", ())

    expect.bool(generated == expected).toBeTrue()
  })
})
