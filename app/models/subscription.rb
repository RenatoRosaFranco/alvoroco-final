class Subscription < ApplicationRecord
    self.table_name = 'subscriptions'
    self.primary_key = 'id'

    # Validations
    # @implemented
end
