parser = require 'xml2json'
soap = require 'soap'
url = 'https://www.zarinpal.com/pg/services/WebGate/wsdl'
args = {
  MerchantID:'XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX'
  Amount: 10000
  Description: 'test'
  CallbackURL: 'http://www.google.com'
}
soap.createClient url, (err, client) ->
  client.PaymentRequest args, (err, result) ->
    #err? console.log err
    console.log result
