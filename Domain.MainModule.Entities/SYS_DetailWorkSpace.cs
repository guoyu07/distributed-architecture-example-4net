//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace CatSolution.Domain.MainModule.Entities
{
    using System;
    using System.Collections.Generic;
    
    public partial class SYS_DetailWorkSpace
    {
        public int DetailWorkSpaceId { get; set; }
        public int WorkSpaceId { get; set; }
        public byte ApplicationId { get; set; }
        public decimal Price { get; set; }
        public System.DateTime StartDate { get; set; }
        public Nullable<System.DateTime> EndDate { get; set; }
        public bool Active { get; set; }
    
        public virtual SYS_WorkSpace SYS_WorkSpace { get; set; }
        public virtual SYS_Application SYS_Application { get; set; }
    }
}