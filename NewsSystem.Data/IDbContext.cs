using NewsSystem.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace NewsSystem.Data
{
    public interface IDbContext
    {
        IDbSet<Article> Articles { get; }

        IDbSet<Category> Categories { get; }
    }
}
