class Actor < ApplicationRecord
  validates :first_name, length: { minimum: 2 }, presence: true
  validates :last_name, length: { minimum: 2 }, presence: true
  validates :known_for, presence: true

  def validate(actor)
    if actor.age < 13
      actor.errors.add :base, "This person is too young"
    end
  end
end
