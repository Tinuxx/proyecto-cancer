//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace cancer_backend
{
    using System;
    using System.Collections.Generic;
    
    public partial class patologia
    {
        public int idMuestra { get; set; }
        public int paciente { get; set; }
        public int idPatologia { get; set; }
    
        public virtual muestra muestra { get; set; }
    }
}
