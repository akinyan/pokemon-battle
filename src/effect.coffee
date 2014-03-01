DefaultEffect = require './effects/defaultEffect'
NoEffect = require './effects/noEffect'
HealEffect = require './effects/healEffect'
RecoilEffect = require './effects/recoilEffect'
RecoilOnMissEffect = require './effects/recoilOnMissEffect'
StruggleEffect = require './effects/struggleEffect'
MultiHitEffect = require './effects/multiHitEffect'
DoublePowerEffect = require './effects/doublePowerEffect'
WeightDependentEffect = require './effects/weightDependentEffect'
CritRateEffect = require './effects/critRateEffect'
BannedEffect = require './effects/bannedEffect'

class Effect
  this.make = (id) ->
    switch id
      when 1, 35, 104 then new NoEffect(id)
      
      # Status Ailments - Also 78, 254, 263, 201, 210, 274, 275, 276
      when 1, 3, 5, 6, 7, 37, 126, 153, 170, 172, 198, 203, 261, 284, 330 then new DefaultEffect(id)
      
      # Pesudo-Status Ailments
      when 77, 268, 338 then new DefaultEffect(id)
      
      # Stat Levels - Also 205, 219, 230, 297, 331
      when 21, 69, 70, 71, 72, 73, 74, 139, 140, 141, 186, 272, 277, 296, 304, 305, 306, 335, 344 then new DefaultEffect(id)
      
      # Flinch
      when 32, 147, 151, 274, 275, 276 then new DefaultEffect(id)
      
      # Accuracy-related
      when 18, 79 then new DefaultEffect(id)
      
      # Items
      when 106, 189, 225, 315 then new DefaultEffect(id)
      
      # Misc
      when 129, 130, 148, 150, 187, 208, 222, 224, 229, 231, 232, 258, 269, 288, 290, 302, 303, 311, 314, 320, 350 then new DefaultEffect(id)
      
      # Fully Implemented
      when 4, 348, 353 then new HealEffect(id)
      when 49, 199, 254, 263, 270 then new RecoilEffect(id)
      when 46 then new RecoilOnMissEffect(id)
      when 255 then new StruggleEffect(id)
      when 30, 45, 78 then new MultiHitEffect(id)
      when 318 then new DoublePowerEffect(id)
      when 197 then new WeightDependentEffect(id)
      when 44, 201, 210, 289 then new CritRateEffect(id)
      else new BannedEffect(id)


module.exports = Effect
