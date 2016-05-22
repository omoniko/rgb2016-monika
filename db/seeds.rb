User.destroy_all
user_1 = User.create(first_name: 'Barbara', last_name: 'Cierocka', age: 22)
user_2 = User.create(first_name: 'Paula', last_name: 'Bojar', age: 23)
user_3 = User.create(first_name: 'Monika', last_name: 'Otto', age: 25)

Car.destroy_all
car_1 = Car.create(color: 'Red', user: user_1)
car_2 = Car.create(color: 'Blue', user: user_1)
car_3 = Car.create(color: 'Black', user: user_2)
car_4 = Car.create(color: 'Green', user: user_3)
car_5 = Car.create(color: 'White')

user_1.cars << car_5

car_5.user = user_1
car_5.save!

car_5.user_id = user_1.id
