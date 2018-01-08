using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace NewsSystem.Models
{
   public class Article
    {
        [Key]
        public int Id { get; set; }

        public string Title { get; set; }

        public string Content { get; set; }

        public int Likes { get; set; }

        public DateTime DateCreated { get; set; }

        public virtual ApplicationUser Author { get; set; }

        public virtual Category Category { get; set; }
    }
}
