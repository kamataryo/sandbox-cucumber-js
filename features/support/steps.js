const { Given, When, Then } = require('cucumber')
const { expect } = require('chai')

Given('変数に {int} がセットされる', function(number) {
  const world = this
  world.setTo(number)
})

Given('変数に {string} がセットされる', function(string) {
  const world = this
  world.setTo(string)
})

When('変数を {int} 増加させる', function(number) {
  const world = this
  world.incrementBy(number)
})

When('変数を {int} 減少させる', function(number) {
  const world = this
  world.decrementBy(number)
})

Then('変数の値が {int} に等しい', function(number) {
  const world = this
  expect(world.variable).to.eql(number)
})

Then('変数の値が {string} に等しい', function(number) {
  const world = this
  expect(world.variable).to.eql(number)
})
