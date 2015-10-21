# Implementing and testing IBAN validation

The International Bank Account Number (IBAN) was designed to facility international money transfer, to uniquely identify bank accounts worldwide. It is described in [this](http://www.europeanpaymentscouncil.eu/documents/ECBS%20IBAN%20standard%20EBS204_V3.2.pdf) document. The document also defines a procedure for validating IBAN codes. Write a function

```
iban :: String -> Bool
```

that implements this validation procedure.
