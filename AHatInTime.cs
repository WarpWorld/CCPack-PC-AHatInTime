using ConnectorLib.SimpleTCP;
using CrowdControl.Common;
using ConnectorType = CrowdControl.Common.ConnectorType;

namespace CrowdControl.Games.Packs.AHatInTime;

public class AHatInTime : SimpleTCPPack<SimpleTCPServerConnector>
{
    public override string Host => "127.0.0.1";

    public override ushort Port => 1452;

    public override ISimpleTCPPack.MessageFormatType MessageFormat => ISimpleTCPPack.MessageFormatType.CrowdControlLegacy;

    public AHatInTime(UserRecord player, Func<CrowdControlBlock, bool> responseHandler, Action<object> statusUpdateHandler) : base(player, responseHandler, statusUpdateHandler) { }

    public override Game Game { get; } = new ("A Hat in Time", "AHatInTime", "PC", ConnectorType.SimpleTCPServerConnector);
    
    public override EffectList Effects { get; } = new Effect[]
    {
        new("Give Health", "heal"),
        new("Take Damage", "damage"),
        new("Kill", "kill"),
        new("Make Invincible", "make_invincible") { Duration = 15 },
        new("One Hit Hero", "one_hit_hero") { Duration = 20 },
        new("Increase Gravity", "increase_gravity") { Duration = 20 },
        new("Decrease Gravity", "decrease_gravity") { Duration = 30 },
        new("Wind", "wind")  { Duration = 15 },
        new("Spring World", "spring_bounce") { Duration = 15 },
        new("Give Triple Jump", "give_triple_jump") { Duration = 25 },
        new("Disable Jump", "disable_jump") { Duration = 10 },
        new("Disable Double Jump", "disable_double_jump") { Duration = 15 },
        new("Disable Weapon", "disable_weapon") { Duration = 15 },
        new("Lose Hat", "lose_hat") { Duration = 20 },
        new("Babysitting", "babysit") { Duration = 20 },
        new("Parade", "parade_owls") { Duration = 30 },
        new("Noodly Annoyance", "annoyance") { Duration = 20 },
        new("Go Fast", "go_fast") { Duration = 30 },
        new("Go Slow", "go_slow") { Duration = 20 },
        new("Force Time Stop", "time_stop") { Duration = 20 },
        new("Force Dweller Sphere", "dweller_sphere") { Duration = 10 },
        new("Force Ice Statue", "ice_statue") { Duration = 10 },
        new("Shrink", "shrink") { Duration = 30 },
        new("Grow", "grow") { Duration = 30 },
        new("Make Invisible", "make_invisible") { Duration = 20 },
        new("Random Filter", "random_filter") { Duration = 30 },
        new("Random Costume", "random_outfit"),
        new("First Person", "first_person") { Duration = 30 },
        new("Reverse Controls", "reverse_controls") { Duration = 20 },
        new("Mirror Mode", "mirror_mode") { Duration = 30 },
        new("Give Random Timepiece", "give_timepiece"),
        new("Take Random Timepiece", "take_timepiece"),
    };
}