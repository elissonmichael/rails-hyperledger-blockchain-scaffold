class UserChaincode
  extend HyperledgerFabric

  def self.show(id)
    JSON.parse query('readUser', id.to_s)
  end

  def self.query(*args)
    client.query(
      chaincode_id: 'node_blockchain_api_scaffold',
      channel_id: 'mychannel',
      args: args
    ).first
  end

  private_class_method :query
end
