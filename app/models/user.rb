class User
  extend HyperledgerFabric
  include ActiveModel::Model

  attr_accessor :id, :value
  validates :id, :value, presence: true

  def update
    return false unless valid?

    self.class.client.invoke(
      chaincode_id: 'node_blockchain_api_scaffold',
      channel_id: 'mychannel',
      args: ['updateUser', id.to_s, value]
    )
  end

  def save
    return false unless valid?

    self.class.client.invoke(
      chaincode_id: 'node_blockchain_api_scaffold',
      channel_id: 'mychannel',
      args: ['createUser', id.to_s, value]
    )
  end

  def self.find(id)
    hash = JSON.parse query('readUser', id.to_s).first
    User.new(hash)
  end

  def self.query(*args)
    client.query(
      chaincode_id: 'node_blockchain_api_scaffold',
      channel_id: 'mychannel',
      args: args
    )
  end

end
