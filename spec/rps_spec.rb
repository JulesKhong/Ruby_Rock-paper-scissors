require('rspec')
require('rps')

describe('String#rps') do
  it("returns wins if rock is the object and scissors is the argument") do
  expect("rock".beats("scissors")).to(eq("win"))
  end
  it("returns ties if rock is the object and rock is the argument") do
  expect("rock".beats("rock")).to(eq("tied"))
  end
  it("returns lose if rock is the object and paper is the argument") do
  expect("rock".beats("paper")).to(eq("lose"))
  end
  it("returns wins if paper is the object and rock is the argument") do
  expect("paper".beats("rock")).to(eq("win"))
  end
  it("returns ties if paper is the object and paper is the argument") do
  expect("paper".beats("paper")).to(eq("tied"))
  end
  it("returns lose if paper is the object and scissors is the argument") do
  expect("paper".beats("scissors")).to(eq("lose"))
  end
  it("returns wins if scissors is the object and paper is the argument") do
  expect("scissors".beats("paper")).to(eq("win"))
  end
  it("returns ties if scissors is the object and scissors is the argument") do
  expect("scissors".beats("scissors")).to(eq("tied"))
  end
  it("returns lose if scissors is the object and rock is the argument") do
  expect("scissors".beats("rock")).to(eq("lose"))
  end
end
