class Patient
  attr_accessor :name
  attr_reader :appointments

  def initialize(name)
    self.name = name
    self.appointments = []
  end

  def add_appointment(appointment)
    appointments << appointment
    appointment.patient = self
  end

  def doctors
    doctors = appointments.map { |appointment| appointment.doctor }
  end

  private

  def appointments=(appointments)
    @appointments = appointments
  end
end