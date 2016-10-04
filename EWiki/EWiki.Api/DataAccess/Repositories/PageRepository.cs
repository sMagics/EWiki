﻿using EWiki.Api.Models;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;
using System.Linq;
using System.Threading.Tasks;

namespace EWiki.Api.DataAccess
{
    public class PageRepository : RepositoryBase<Page>, IPageRepository
    {
        public PageRepository(IDbFactory dbFactory)
            : base(dbFactory)
        { }

        public async Task<IEnumerable<Page>> GetAllPageWithContentAsync()
        {
            IQueryable<Page> query = Queryable().Include(p => p.PageLangs)
                                                .Include(p => p.PageMetas)
                                                .Include(p => p.CurrentContent);

            return await query.ToListAsync();
        }
    }
}