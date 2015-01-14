StatusAilment = require './statusAilment'

class PoisonStatusAilment extends StatusAilment
  affects: (pokemon) ->
    types = (type.name for type in pokemon.types)
    return ('Poison' not in types) and ('Steel' not in types)
  
  whenInflicted: (pokemon, log) ->
    log.message pokemon.trainerAndName() + " was poisoned!"

  endTurn: (pokemon, log) ->
    pokemon.takeDamage Math.round(pokemon.maxHp / 8), "%(pokemon) was hurt %(damage) by poison!", log

  battleMultiplier: (chance) -> 1 + 0.4 * chance / 100

module.exports = PoisonStatusAilment