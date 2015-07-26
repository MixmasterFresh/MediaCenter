module MultiTenant
  extend ActiveSupport::Concern

  included do
    helper_method :available_pairs
  end

  def available_pairs(pair_name)
    Player.all
  end
end