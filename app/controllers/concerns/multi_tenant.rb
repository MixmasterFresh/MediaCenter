module MultiTenant
  extend ActiveSupport::Concern

  included do
    helper_method :current_pairing
  end

  def current_pairing(pair_name)
    @@current_pairing ||= {}
  end
end