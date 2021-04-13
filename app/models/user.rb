class User < ApplicationRecord
    before_validation :strip_input_fields
    require 'csv'

    def self.to_user_csv
        headers = %w(email country date)
        attributes = %w(user)
        CSV.generate(headers: true) do |csv|
            csv << headers
          
            all.each do |user|
                # byebug
                data = headers.map{ |attr| user.send(attr) }
                  # byebug
                csv <<  data
                  # byebug
            end
        end
    end    

    def strip_input_fields
        self.attributes.each do |k,v|
          self[k] =v.strip if v.respond_to?("strip")
        end
    end
end
