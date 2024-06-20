Feature: Blocks Integration Tests

  Scenario: Evaluate Block Methods

    Given that the latest block is requested via the sdk
    Then request the latest block via the test node
    Then the body of the returned block is equal to the body of the returned test node block
    And the hash of the returned block is equal to the hash of the returned test node block
    And the header of the returned block is equal to the header of the returned test node block
    And the proofs of the returned block are equal to the proofs of the returned test node block

    Given that a block is returned by hash via the sdk
    Then request a block by hash via the test node
    Then the body of the returned block is equal to the body of the returned test node block
    And the hash of the returned block is equal to the hash of the returned test node block
    And the header of the returned block is equal to the header of the returned test node block
    And the proofs of the returned block are equal to the proofs of the returned test node block

    Given that a block is returned by height 2 via the sdk
    Then request the returned block from the test node via its hash
    Then the body of the returned block is equal to the body of the returned test node block
    And the hash of the returned block is equal to the hash of the returned test node block
    And the header of the returned block is equal to the header of the returned test node block
    And the proofs of the returned block are equal to the proofs of the returned test node block

    Given that an invalid block hash is requested via the sdk
    Then a valid error message is returned

    Given that an invalid block height is requested via the sdk
    Then a valid error message is returned

    Given that 10 node transfers are initiated
    Then a list of 10 transaction hashes are generated
    Then each transaction has a transacted block
    And the transactions of the SDK block equal the transactions on the node block


