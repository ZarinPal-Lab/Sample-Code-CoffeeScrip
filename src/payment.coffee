parser = require 'xml2json'
soap = require 'soap'
url = 'https://ir.zarinpal.com/pg/services/WebGate/wsdl'
args = {
  MerchantID:'55bcbeac-27b8-4a3d-8796-1b215bef37d4'
  Amount: 10000
  Description: 'test'
  CallbackURL: 'http://www.zarinpal.com/pg/transaction/pay/12755944'
}
soap.createClient url, (err, client) ->
  client.PaymentRequest args, (err, result) ->
    #err? console.log err
    console.log result
