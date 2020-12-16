program main 
      
      type date_record
            integer year
            integer month
            integer day
      end type date_record
      
      type car_record
            integer num
            character*10 part
            real weight
            type(date_record) date
      end type car_record            

      type(car_record)taxi(100)

end 
      