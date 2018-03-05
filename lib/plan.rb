class Plan
  @@list = []

  attr_accessor :Plan, :Location
  attr_reader :id

  def initialize(attributes)
    @plan = attributes.fetch(:plan)
    @location = attributes.fetch(:location)
    @id = @@list.length + 1
  end
