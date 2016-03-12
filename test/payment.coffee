require('chai').should()
_ = require 'lodash'
Q = require 'q'

payment = require('../src/payment') {
  merchantcode: 112233
  ip: 192.168.1.5
}

describe 'payments', ->
  it 'exist', ->
    console.log fake test

