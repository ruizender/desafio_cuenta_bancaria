class CuentaBancaria
  attr_accessor :user_name
  attr_reader :account_num, :vip

    def initialize(user_name, account_num, vip = 0)
        @user_name = user_name
        @vip = vip
      if account_num.digits.count == 8
        @account_num = account_num        
      else
          raise RangeError.new ('Cantidad incorrectas de digitos en num de cuenta')
      end
    end

    def numero_de_cuenta 
        if self.vip == 1
            "1-#{self.account_num}"
        else
            "0-#{self.account_num}"
        end
    end
end

usuario1 = CuentaBancaria.new('Ender',55667788,1)
usuario2 = CuentaBancaria.new('Joel', 99887061,0)

puts usuario1.numero_de_cuenta
puts usuario1
