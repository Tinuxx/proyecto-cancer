﻿//------------------------------------------------------------------------------
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
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class ProyectoCancerEntities : DbContext
    {
        public ProyectoCancerEntities()
            : base("name=ProyectoCancerEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public DbSet<casacomercial> casacomercial { get; set; }
        public DbSet<citometria> citometria { get; set; }
        public DbSet<componenteregla> componenteregla { get; set; }
        public DbSet<conjuntoexamenes> conjuntoexamenes { get; set; }
        public DbSet<consistede> consistede { get; set; }
        public DbSet<droga> droga { get; set; }
        public DbSet<ensayoinvitro> ensayoinvitro { get; set; }
        public DbSet<estacompuestade> estacompuestade { get; set; }
        public DbSet<examen> examen { get; set; }
        public DbSet<indice> indice { get; set; }
        public DbSet<localizacion> localizacion { get; set; }
        public DbSet<log> log { get; set; }
        public DbSet<marcadores> marcadores { get; set; }
        public DbSet<medico> medico { get; set; }
        public DbSet<muestra> muestra { get; set; }
        public DbSet<paciente> paciente { get; set; }
        public DbSet<patologia> patologia { get; set; }
        public DbSet<secomponede> secomponede { get; set; }
        public DbSet<seguimiento> seguimiento { get; set; }
        public DbSet<semideen> semideen { get; set; }
        public DbSet<seobtienen> seobtienen { get; set; }
        public DbSet<terapiapersonalizada> terapiapersonalizada { get; set; }
        public DbSet<tiene> tiene { get; set; }
        public DbSet<tipotumor> tipotumor { get; set; }
        public DbSet<tratamientoenmuestra> tratamientoenmuestra { get; set; }
        public DbSet<usuario> usuario { get; set; }
    }
}
