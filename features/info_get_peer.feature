Feature: Info Get Peers

  Scenario: info_get_peers
    Given that the info_get_peers RPC method is invoked against a node
    Then the node returns an info_get_peers_result
    And the info_get_peers_result has an API version of "2.0.0"
    And the info_get_peers_result contains 4 peers
    And the info_get_peers_result contains a valid peer with a port number of 11102
    And the info_get_peers_result contains a valid peer with a port number of 11103
    And the info_get_peers_result contains a valid peer with a port number of 11104
    And the info_get_peers_result contains a valid peer with a port number of 11105
