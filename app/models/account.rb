class Account < ApplicationRecord
    has_secure_password
    
        has_many :posts, dependent: :destroy
      
    
         has_one_attached:image
        
        validates :username, presence: true, uniqueness: true
    
    
     
       
    end