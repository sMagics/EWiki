//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace EWiki.UnitTest
{
    using System;
    using System.Collections.Generic;
    
    public partial class CharacterInfoGroup
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public CharacterInfoGroup()
        {
            this.CharacterInfos = new HashSet<CharacterInfo>();
        }
    
        public int Id { get; set; }
        public System.DateTime CreatedDate { get; set; }
        public string CreatedUserId { get; set; }
        public string Name { get; set; }
        public int Priority { get; set; }
        public Nullable<System.DateTime> UpdatedDate { get; set; }
        public string UpdatedUserId { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<CharacterInfo> CharacterInfos { get; set; }
    }
}
