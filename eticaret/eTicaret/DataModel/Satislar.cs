//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace eTicaret.DataModel
{
    using System;
    using System.Collections.Generic;
    
    public partial class Satislar
    {
        public Satislar()
        {
            this.SatisDetaylari = new HashSet<SatisDetaylari>();
        }
    
        public int SatisNo { get; set; }
        public System.DateTime Tarih { get; set; }
        public int KullaniciNo { get; set; }
        public decimal Tutar { get; set; }
        public int Miktar { get; set; }
        public System.DateTime TeslimTarihi { get; set; }
        public byte Durumu { get; set; }
        public bool Silindi { get; set; }
    
        public virtual Kullanicilar Kullanicilar { get; set; }
        public virtual ICollection<SatisDetaylari> SatisDetaylari { get; set; }
    }
}