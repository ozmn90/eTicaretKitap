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
    
    public partial class Urunler
    {
        public Urunler()
        {
            this.SatisDetaylari = new HashSet<SatisDetaylari>();
        }
    
        public int UrunID { get; set; }
        public string UrunKodu { get; set; }
        public string UrunAd { get; set; }
        public string Yazar { get; set; }
        public int UrunKategoriNo { get; set; }
        public int Miktar { get; set; }
        public decimal UrunFiyat { get; set; }
        public string UrunBilgisi { get; set; }
        public string UrunResimKucuk { get; set; }
        public string UrunResimBuyuk { get; set; }
        public bool Silindi { get; set; }
    
        public virtual Kategoriler Kategoriler { get; set; }
        public virtual ICollection<SatisDetaylari> SatisDetaylari { get; set; }
    }
}
