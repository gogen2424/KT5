﻿//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Shop_KT5.Data
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class Stepanyan_GeorgyEntities : DbContext
    {
        public static Stepanyan_GeorgyEntities _context;
        public Stepanyan_GeorgyEntities()
            : base("name=Stepanyan_GeorgyEntities")
        {
        }

        public static Stepanyan_GeorgyEntities GetContext()
        {
            if(_context == null)
            {
                _context = new Stepanyan_GeorgyEntities();
            }
            return _context;
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Enter> Enter { get; set; }
        public virtual DbSet<Role> Role { get; set; }
        public virtual DbSet<Sex> Sex { get; set; }
        public virtual DbSet<sysdiagrams> sysdiagrams { get; set; }
        public virtual DbSet<Workers> Workers { get; set; }
    }
}
