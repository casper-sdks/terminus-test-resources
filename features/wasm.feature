Feature: wasm operations

  Scenario: Read wasm, deploy and invoke
    Given that a smart contract "erc20.wasm" is located in the "contracts" folder
    When the wasm is loaded as from the file system
    And the wasm has been successfully deployed
    Then the account named keys contain the "ERC20" name
    And the contract data "name" is a "String" with a value of "Acme Token" and bytes of "0a00000041636d6520546f6b656e"
    And the contract data "symbol" is a "String" with a value of "ACME" and bytes of "0400000041434d45"
    And the contract data "decimals" is a "U8" with a value of "11" and bytes of "0b"
    And the contract data "total_supply" is a "U256" with a value of "500000000000" and bytes of "050088526a74"
    When the contract entry point is invoked by hash with a transfer amount of "2500000000"
    Then the contract invocation deploy is successful
    When the the contract is invoked by name "ERC20" and a transfer amount of "2400000000"
    Then the contract invocation deploy is successful

  Scenario: StoredVersionedContractByName
    Given that a smart contract "counter-v1.wasm" is located in the "contracts" folder
    When the wasm is loaded as from the file system
    And the wasm has been successfully deployed
    Then the account named keys contain the "counter" name and a version uref
    And the version dictionary item value is 1
    And the the contract is invoked by name "counter_package_name", and version 1, and entry point of "counter_inc", and with a payment amount of "1000000000"
    Then the contract invocation deploy is successful

  Scenario: StoredVersionedContractByHash
    Given that a smart contract "counter-v2.wasm" is located in the "contracts" folder
    When the wasm is loaded as from the file system
    And the wasm has been successfully deployed
    Then the account named keys contain the "counter" name and a version uref
    And the version dictionary item value is 2
    And the the contract is invoked by hash, and version 2, and entry point of "counter_inc", and with a payment amount of "1000000000"
    Then the contract invocation deploy is successful
