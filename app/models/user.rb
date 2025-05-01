class User < ApplicationRecord

    def full_name
      "#{name}"
    end
end
