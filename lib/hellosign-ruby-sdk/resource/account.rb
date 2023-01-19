module HelloSign
  module Resource

    #
    # Contains information about an account and its settings.
    # Take a look at our {https://www.hellosign.com/api/reference#Account account resource document}
    # for more information about this.
    #
    # @author [hellosign]
    #
    class Account < BaseResource

      #
      # create a new Account from a hash. if key define then account data with be the value of hash[key], otherwise a hash ifself
      # @param  hash [Hash] account's data
      # @param  key [String] (account) key of the hash, point to where account data is. If nil then the hash itself
      #
      # @return [HelloSign::Resource:Account] a Account resource
      def initialize(hash, key='account')
        super
      end
    end
  end
end
