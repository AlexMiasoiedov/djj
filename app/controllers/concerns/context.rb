module Context
  extend ActiveSupport::Concern

  def context
    {current_user: current_user}
  end
end