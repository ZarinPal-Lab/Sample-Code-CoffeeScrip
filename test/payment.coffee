require('chai').should()
_ = require 'lodash'
Q = require 'q'

payment = require('../src/payment') {
  code: 112233
  ip: "192.168.1.5"
}

describe 'payment', ->
  it 'should exist', ->
    payment.should.exist

  it 'should have merchant code and static IP'
  it 'should be able to pay a fixed amount'
  it 'should containt a transacton code after payment'
  it 'should not work with wrong IP address'

