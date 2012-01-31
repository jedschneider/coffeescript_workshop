describe "Converge", ->
  it "creating a simple function", ->
    expect( Converge.double(2) ).toEqual 4
    expect( Converge.double(5) ).toEqual 10
  