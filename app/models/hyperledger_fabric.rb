module HyperledgerFabric

  def client
    identity = user_identity
    enrollment_response = fabric_ca_client.enroll(identity.generate_csr([%w(CN admin)]))
    identity.certificate = enrollment_response[:result][:Cert]
    fabric_sdk.client(identity: identity)
  end

  def fabric_ca_client
    FabricCA.client(
      endpoint: 'http://localhost:17050',
      username: 'admin',
      password: 'adminpw'
    )
  end

  def fabric_sdk
    Fabric.new(
      orderers: ['http://localhost:17051'],
      peers: ['localhost:17051']
    )
  end

  def user_identity
    Fabric::Identity.new(
      Fabric.crypto_suite,
      {
        username: 'admin',
        affiliation: 'org1.department1',
        mspid: 'Org1MSP'
      }
    )
  end
end
