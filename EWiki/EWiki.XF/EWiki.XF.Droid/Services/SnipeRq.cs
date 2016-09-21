using EWiki.XF.Models.Enum;
using Newtonsoft.Json;
using Newtonsoft.Json.Converters;

namespace EWiki.XF.Droid.Services
{
    public class SnipeRq : BaseRq
    {
        [JsonConverter(typeof(StringEnumConverter))]
        public PokemonId PokemonId { get; set; }
        public double Latitude { get; set; }
        public double Longitude { get; set; }
        public string UserName { get; set; }
        public string Password { get; set; }
        public double DefaultLatitude { get; set; }
        public double DefaultLongitude { get; set; }
    }
}