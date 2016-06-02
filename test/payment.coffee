should = require('chai').should()
_ = require 'lodash'
Q = require 'q'

payment = require '../src/payment'
soap = require 'soap'

describe 'payment', ->
  it 'should exist', ->
    payment.should.exist

  it 'should be able to create soap client', ->
    parser = require 'xml2json'
    soap = require 'soap'
    url = 'https://sandbox.zarinpal.com/pg/services/WebGate/wsdl'
    args = {
      MerchantID:'XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX'
      Amount: '10000'
      Description: 'test'
      CallbackURL: 'http://www.google.com'
    }
    soap.createClient url, (err, client) ->
      client.PaymentRequest args, (err, result) ->
      #err? console.log err
      result.status.should.be.eq 100

###  
  it 'should have merchant code and static IP'
  it 'should be able to pay a fixed amount'
  it 'should containt a transacton code after payment'
  it 'should not work with wrong IP address'
  it 'should have merchant code with length of 36'
  it 'should have proper status with successful transaction'
  it 'should have proper status with unsuccessful transaction'
  it 'should return RefID if only transaction is successful'
  it 'should have status and authority as per payment request'
###

