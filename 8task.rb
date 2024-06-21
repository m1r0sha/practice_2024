# задание 4
# Написать регулярные выражения для 1. Почта 2. Мобильный телефон 3. ip адрес

#!/usr/bin/env ruby

# email
email_check = /^[a-zA-Z0-9._]+@[a-zA-Z0-9_]+\.[a-zA-Z]{2,}$/

# phone number
phone_number_check = /^\+?(7|8)9\d{7,9}$/

# ip address
ip_address_check = /^(([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])\.){3}([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])$/

email = "mircakotya776@gmail.com"
phone = "+79375670883"
ip = "256.255.255.255"

puts email_check.match?(email)
puts phone_number_check.match?(phone)
puts ip_address_check.match?(ip)
