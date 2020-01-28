class OneTimeAppointment < Appointment
    attr_reader :day, :month, :year
    def initialize(day, month, year, location, purpose, hour, min)
        super(day, month, year, location, purpose, hour, min)
        @day = day
        @month = month
        @year = year
    end

    def occurs_on?(day,month,year)
        @day == day && @month ==  month @year == year
    end

    def to_s
        "Reunión única en #{@location} sobre #{@purpose} el día #{@day} a las(s) #{@hour}:#{@min}" 
    end
end


