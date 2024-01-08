using System;
using CrowdControl.Common;
using ConnectorType = CrowdControl.Common.ConnectorType;

namespace CrowdControl.Games.Packs.AHatInTime;

public class AHatInTime : SimpleTCPPack
{
    public override string Host => "127.0.0.1";

    public override ushort Port => 1452;

    public override ISimpleTCPPack.MessageFormat MessageFormat => ISimpleTCPPack.MessageFormat.CrowdControlLegacy;

    public AHatInTime(UserRecord player, Func<CrowdControlBlock, bool> responseHandler,
        Action<object> statusUpdateHandler) : base(player, responseHandler, statusUpdateHandler)
    {
    }

    public override Game Game => new("A Hat in Time", "AHatInTime", "PC", ConnectorType.SimpleTCPConnector);


        public override EffectList Effects { get; } = new Effect[]
        {
            new Effect("Give Health", "heal"),
            new Effect("Take Damage", "damage"),
            new Effect("Kill", "kill"),
            new Effect("Make Invincible", "make_invincible") { Duration = 15 },
            new Effect("One Hit Hero", "one_hit_hero") { Duration = 20 },
            new Effect("Increase Gravity", "increase_gravity") { Duration = 20 },
            new Effect("Decrease Gravity", "decrease_gravity") { Duration = 30 },
            new Effect("Wind", "wind")  { Duration = 15 },
            new Effect("Spring World", "spring_bounce") { Duration = 15 },
            new Effect("Give Triple Jump", "give_triple_jump") { Duration = 25 },
            new Effect("Disable Jump", "disable_jump") { Duration = 10 },
            new Effect("Disable Double Jump", "disable_double_jump") { Duration = 15 },
            new Effect("Disable Weapon", "disable_weapon") { Duration = 15 },
            new Effect("Lose Hat", "lose_hat") { Duration = 20 },
            new Effect("Babysitting", "babysit") { Duration = 20 },
            new Effect("Parade", "parade_owls") { Duration = 30 },
            new Effect("Noodly Annoyance", "annoyance") { Duration = 20 },
            new Effect("Go Fast", "go_fast") { Duration = 30 },
            new Effect("Go Slow", "go_slow") { Duration = 20 },
            new Effect("Force Time Stop", "time_stop") { Duration = 20 },
            new Effect("Force Dweller Sphere", "dweller_sphere") { Duration = 10 },
            new Effect("Force Ice Statue", "ice_statue") { Duration = 10 },
            new Effect("Shrink", "shrink") { Duration = 30 },
            new Effect("Grow", "grow") { Duration = 30 },
            new Effect("Make Invisible", "make_invisible") { Duration = 20 },
            new Effect("Random Filter", "random_filter") { Duration = 30 },
            new Effect("Random Costume", "random_outfit"),
            new Effect("First Person", "first_person") { Duration = 30 },
            new Effect("Reverse Controls", "reverse_controls") { Duration = 20 },
            new Effect("Mirror Mode", "mirror_mode") { Duration = 30 },
            new Effect("Give Random Timepiece", "give_timepiece"),
            new Effect("Take Random Timepiece", "take_timepiece"),
        };
    }
}
