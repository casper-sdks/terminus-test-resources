Feature: deploys_generated_keys

  Scenario: Generate "Ed25519" Account
    Given that a "Ed25519" sender key is generated
    And the key is written to a .pem file
    When the key is read from the .pem file
    Then the key is the same as the original key
    When fund the account from the faucet user with a transfer amount of 1000000000000 and a payment amount of 100000
    Then wait for a block added event with a timeout of 300 seconds
    Given that a "Ed25519" receiver key is generated
    Then transfer to the receiver account the transfer amount of 2500000000 and the payment amount of 100000
    Then wait for a block added event with a timeout of 300 seconds
    Then the deploy sender account key contains the "Ed25519" algo

  Scenario: Generate "Secp256k1" Account
    Given that a "Secp256k1" sender key is generated
    And the key is written to a .pem file
    When the key is read from the .pem file
    Then the key is the same as the original key
    When fund the account from the faucet user with a transfer amount of 1000000000000 and a payment amount of 100000
    Then wait for a block added event with a timeout of 300 seconds
    Given that a "Secp256k1" receiver key is generated
    Then transfer to the receiver account the transfer amount of 2500000000 and the payment amount of 100000
    Then wait for a block added event with a timeout of 300 seconds
    Then the deploy sender account key contains the "Secp256k1" algo
