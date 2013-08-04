class Admin < ActiveRecord::Base
	has_one :wallet
	has_many :ptel_activations, :through => :wallet
	has_many :ptel_portins, :through => :wallet
	has_many :ptel_reups, :through => :wallet 
	has_many :ultra_activations, :through => :wallet
	has_many :ultra_portins, :through => :wallet 
	has_many :ultra_reups, :through => :wallet
	has_many :simple_activations, :through => :wallet
	has_many :simple_portins, :through => :wallet 
	has_many :simple_reups, :through => :wallet
	has_many :lyca_activations, :through => :wallet 
	has_many :lyca_reups, :through => :wallet 
	has_many :lyca_portins, :through => :wallet
	has_many :tmobile_activations, :through => :wallet
	has_many :tmobile_portins, :through => :wallet
	has_many :tmobile_reups, :through => :wallet
	has_many :h20_activations, :through => :wallet
	has_many :h20_portins, :through => :wallet
	has_many :h20_reups, :through => :wallet 
	has_many :international_recharges, :through => :wallet  
	has_many :cellphone_unlockings, :through => :wallet        
end
