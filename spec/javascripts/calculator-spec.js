describe("calculator", function() {
  it("should add two numbers", function() {
    var x = 4;
    var y =2;
    expect(calculator.add(x,y)).toEqual(6);
  });

  it("should subtract two numbers", function() {
    var x = 4;
    var y = 2;
    expect(calculator.subtract(x,y)).toEqual(2)
  });

  it("should multiply two numbers", function() {
    var x = 4;
    var y = 2;
    expect(calculator.multiply(x,y)).toEqual(8)
  });

  it("should divide two numbers", function() {
    var x = 4;
    var y = 2;
    expect(calculator.divide(x,y)).toEqual(2)
  });
});