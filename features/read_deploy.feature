Feature: read_deploy

  Scenario: read_deploy
    Given that the "transfer.json" JSON deploy is loaded
    Then a valid transfer deploy is created
    And the deploy hash is "b2d3e9118249acd8394c8eb440b1d65b7676fb401e0a18284d1685539e18ca02"
    And the account is "01af79f28bde4522b27edb8dc9df146c9d3a65f944bbdcf153ea107b291bae232d"
    And the timestamp is "2021-05-04T14:20:35.104Z"
    And the ttl is 30m
    And the gas price is 2
    And the body_hash is "eaf11e3193f460abaed621762442cce19ca53ac42c11e6a0550263a8e4d34273"
    And the chain name is  "mainnet"
    And dependency 0 is "0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f"
    And dependency 1 is "1010101010101010101010101010101010101010101010101010101010101010"
    And the payment amount is 1000000000
    And the session is a transfer
    And the session "amount" is 24500000000
    And the session "amount" type is "U512"
    And the session "amount" bytes is "05005550b405"
    And the session "amount" parsed is "24500000000"
    And the session "id" is "999"
    And the session "id" type is "U64"
    And the session "id" bytes is "01e703000000000000"
    And the session "id" parsed is "999"
    And the session "target" is "01e8e1e0b10972e4945d1e493d41be8f39f47bb1299f3248f297d22cbc02010f89"
    And the session "target" type is "PublicKey"
    And the session "target" bytes is "01e8e1e0b10972e4945d1e493d41be8f39f47bb1299f3248f297d22cbc02010f89"
    And the session "additional_info" is "this is transfer"
    And the session "additional_info" type is "String"
    And the session "additional_info" bytes is "1000000074686973206973207472616e73666572"
    And the session "additional_info" parsed is "this is transfer"
    And the deploy has 1 approval
    And the approval signer is "01af79f28bde4522b27edb8dc9df146c9d3a65f944bbdcf153ea107b291bae232d"
    And the approval signature is "016ac6506f649e55024f1544d6c265a8b1b9f90574faeef71595ceda83d0e0e9c449f235abb898d1b2249822a000e9cdc24f03f89b7d3346744044816ceb358502"
