class Doctor
  attr_accessor :name
  attr_reader :appointments

  def initialize(name)
    self.name = name
    self.appointments = []
  end

  def add_appointment(appointment)
    appointments << appointment
    appointment.doctor = self
  end

  def patients
    patients = appointments.map { |appointment| appointment.patient }
  end

  private

  def appointments=(appointments)
    @appointments = appointments
  end
end