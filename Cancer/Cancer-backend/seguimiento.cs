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
    
    public partial class seguimiento
    {
        public System.DateTime fechaSeguimiento { get; set; }
        public int Paciente_numeroCedula { get; set; }
        public int Medico_idMedico { get; set; }
        public string descripcion { get; set; }
        public Nullable<int> estadio { get; set; }
        public Nullable<int> categoria { get; set; }
    
        public virtual medico medico { get; set; }
        public virtual paciente paciente { get; set; }
    }
}
