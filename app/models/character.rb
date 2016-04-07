##
# = char-ac-ter
# == /'kerekter/
# _noun_
#
# 1. a person in a User's story.
#
#    exists within a Universe.
class Character < ActiveRecord::Base
  include Comparable
  include NilsBlankUniverse

  validates :name, presence: true

  belongs_to :user
  belongs_to :universe

  def description
    role
  end

  def self.color
    'red'
  end

  def self.icon
    'group'
  end

  def self.attribute_categories
    {
      general_information: {
        icon: 'info',
        attributes: %w(name role gender age universe_id),
      },
      appearance: {
        icon: 'face',
        attributes: %w(weight height haircolor hairstyle facialhair eyecolor race skintone bodytype identmarks)
      },
      social: {
        icon: 'groups',
        attributes: %w(bestfriend religion politics prejudices occupation)
      },
      mannerisms: {
        icon: 'groups',
        attributes: %w(mannerisms)
      },
      history: {
        icon: 'info',
        attributes: %w(birthday birthplace education background)
      },
      favorites: {
        icon: 'star',
        attributes: %w(fave_color fave_food fave_possession fave_weapon fave_animal)
      },
      relationships: {
        icon: 'face',
        attributes: %w(mother father spouse siblings archenemy)
      },
      notes: {
        icon: 'edit',
        attributes: %w(notes private_notes)
      }
    }
  end
end
