﻿using EWiki.Api.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Threading.Tasks;

namespace EWiki.Api.DataAccess
{
    public interface IGenericRepository<T, TKey> where T : class, IGenericEntity<TKey>, new()
    {
        IEnumerable<T> AllIncluding(params Expression<Func<T, object>>[] includeProperties);
        Task<IEnumerable<T>> AllIncludingAsync(params Expression<Func<T, object>>[] includeProperties);
        IEnumerable<T> GetAll();
        Task<IEnumerable<T>> GetAllAsync();
        T GetSingle(TKey id);
        T GetSingle(Expression<Func<T, bool>> predicate);
        T GetSingle(Expression<Func<T, bool>> predicate, params Expression<Func<T, object>>[] includeProperties);
        Task<T> GetSingleAsync(TKey id);
        IEnumerable<T> FindBy(Expression<Func<T, bool>> predicate);
        IQueryable<T> Queryable();
        Task<IEnumerable<T>> FindByAsync(Expression<Func<T, bool>> predicate);

        void Add(T entity);
        void AddRange(IEnumerable<T> entities);
        void Delete(T entity);
        Task DeleteByIdAsync(TKey id);
        void Update(T entity);
        void Commit();
        Task CommitAsync();
    }
}
