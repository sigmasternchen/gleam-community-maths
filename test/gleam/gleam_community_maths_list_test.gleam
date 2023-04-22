import gleam/int
import gleam/list
import gleam/pair
import gleam_community/maths/list as listx
import gleeunit
import gleeunit/should
import gleam/io
import gleam/set

pub fn main() {
  gleeunit.main()
}

pub fn list_trim_test() {
  // An empty lists returns an error
  []
  |> listx.trim(0, 0)
  |> should.be_error()

  // Trim the list to only the middle part of list
  [1.0, 2.0, 3.0, 4.0, 5.0, 6.0]
  |> listx.trim(1, 4)
  |> should.equal(Ok([2.0, 3.0, 4.0, 5.0]))
}

pub fn list_cartesian_product_test() {
  // An empty lists returns an empty list
  []
  |> listx.cartesian_product([])
  |> should.equal([])

  // Test with some arbitrary inputs
  [1, 2, 3]
  |> listx.cartesian_product([1, 2, 3])
  |> set.from_list()
  |> should.equal(set.from_list([
    #(1, 1),
    #(1, 2),
    #(1, 3),
    #(2, 1),
    #(2, 2),
    #(2, 3),
    #(3, 1),
    #(3, 2),
    #(3, 3),
  ]))

  [1.0, 10.0]
  |> listx.cartesian_product([1.0, 2.0])
  |> set.from_list()
  |> should.equal(set.from_list([
    #(1.0, 1.0),
    #(1.0, 2.0),
    #(10.0, 1.0),
    #(10.0, 2.0),
  ]))
}

pub fn list_permutation_test() {
  io.debug("TODO: Implement tests for 'list.permutation'.")
  // // An empty lists returns an empty list
  // []
  // |> listx.permutation([])
  // |> should.equal([[]])

  // Test with some arbitrary inputs
  // [1, 2]
  // |> listx.permutation()

  // should.be_error(Ok(1))
  // |> should.equal([[1, 2], [2, 1]])
  // // Test with some arbitrary inputs
  // [1, 2, 3]
  // |> listx.permutation()
  // |> should.equal([
  //   [1, 2, 3],
  //   [2, 1, 3],
  //   [3, 1, 2],
  //   [1, 3, 2],
  //   [2, 3, 1],
  //   [3, 2, 1],
  // ])
}
