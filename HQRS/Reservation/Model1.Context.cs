﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace RoomReservation
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class HQRoomsEntities : DbContext
    {
        public HQRoomsEntities()
            : base("name=HQRoomsEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<ReservationInfo> ReservationInfoes { get; set; }
        public virtual DbSet<room> rooms { get; set; }
        public virtual DbSet<SystemAdmin> SystemAdmins { get; set; }
        public virtual DbSet<SystemUser> SystemUsers { get; set; }
    }
}
