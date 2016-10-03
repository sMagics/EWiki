using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using System.Collections.Generic;

namespace EWiki.Api.Models
{
    public class User : IdentityUser, IGenericEntity<string>
    {
        public List<PokemonGoAccount> PokemonGoAccounts { get; set; }
    }

    public class PokemonGoAccount
    {
        public string AuthType { get; set; }
        public string UserName { get; set; }
        public string Password { get; set; }
        public string CurrentLattitude { get; set; }
        public string CurrentLongtitude { get; set; }
        public string AZ { get; set; }
        public string Priority { get; set; }
        public bool IsDefault { get; set; }
        public bool IsActive { get; set; }
    }
}
