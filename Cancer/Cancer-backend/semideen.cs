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
    
    public partial class semideen
    {
        public string nombreMarcador { get; set; }
        public System.DateTime Citometria_fechaRealizado { get; set; }
        public int Citometria_idMuestra { get; set; }
        public int Citometria_paciente { get; set; }
        public Nullable<float> porcentajePositivo { get; set; }
        public Nullable<float> porcentajeNegativo { get; set; }
    
        public virtual citometria citometria { get; set; }
        public virtual marcadores marcadores { get; set; }
    }
}
