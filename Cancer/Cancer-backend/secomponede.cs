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
    
    public partial class secomponede
    {
        public int paciente { get; set; }
        public int medico { get; set; }
        public System.DateTime fechaRealizadaTerapia { get; set; }
        public int idDroga { get; set; }
        public Nullable<float> dosis { get; set; }
    
        public virtual droga droga { get; set; }
        public virtual terapiapersonalizada terapiapersonalizada { get; set; }
    }
}
