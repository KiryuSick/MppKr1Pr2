class Task < ApplicationRecord
    status = ["В очікуванні", "В роботі", "Завершено"]
    validates :name, presence: true
    validates :status, inclusion: { in: status }

    def start
      self.status = "В роботі"
      save
    end

    def complete
      self.status = "Завершено"
      save
    end

    def waiting
      self.status = "В очікуванні"
      save
    end
  end