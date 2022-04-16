class Ability
  include CanCan::Ability

  def initialize(user)
    guest_abilities
    return if user.blank?

    patient_abilities(user.id)
    return if user.patient?

    doctor_abilities(user.id)
    return if user.doctor?

    admin_abilities
    return if user.admin?
  end

  private
  def guest_abilities
    can :read, [Category, User]
  end

  def patient_abilities(user_id)
    guest_abilities
  end

  def doctor_abilities(user_id)
    guest_abilities
    # can %i[read create update destroy], Comment, user_id: user_id
  end

  def admin_abilities
    can %i[read create update destroy], Category
  end
end
