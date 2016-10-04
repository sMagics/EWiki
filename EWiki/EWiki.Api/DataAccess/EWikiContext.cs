﻿using EWiki.Api.Models;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using System;
using System.IO;

namespace EWiki.Api.DataAccess
{
    public class EWikiContext : IdentityDbContext
    {
        public DbSet<Archive> Archives { get; set; }
        public DbSet<BlockedIp> BlockedIps { get; set; }
        public DbSet<Category> Categories { get; set; }
        public DbSet<Character> Characters { get; set; }
        public DbSet<CharacterInfo> CharacterInfos { get; set; }
        public DbSet<CharacterInfoGroup> CharacterInfoGroups { get; set; }
        public DbSet<CharacterSection> CharacterSections { get; set; }
        public DbSet<CharacterSectionGroup> CharacterSectionGroups { get; set; }
        public DbSet<FileArchive> FileArchives { get; set; }
        public DbSet<InfoValue> InfoValues { get; set; }
        // For pokedex
        public DbSet<Location> Locations { get; set; }
        public DbSet<Move> Moves { get; set; }
        public DbSet<PokemonType> Type { get; set; }
        // End pokedex
        public DbSet<Page> Pages { get; set; }
        public DbSet<PageContent> PageContents { get; set; }
        public DbSet<PageLang> PageLangs { get; set; }
        public DbSet<PageMeta> PageMetas { get; set; }
        public DbSet<PageRestriction> PageRestrictions { get; set; }
        public DbSet<ProtectedTitle> ProtectedTitles { get; set; }
        public DbSet<RecentChange> RecentChanges { get; set; }
        public DbSet<Reference> References { get; set; }
        public DbSet<Revision> Revisions { get; set; }
        public DbSet<Site> Sites { get; set; }
        public DbSet<Tag> Tags { get; set; }
        public DbSet<User> Users { get; set; }
        public DbSet<UserMeta> UserMetas { get; set; }
        public DbSet<UserNewtalk> UserNewtalks { get; set; }
        public DbSet<WatchList> WatchLists { get; set; }
        public DbSet<WikiImage> WikiImages { get; set; }
        public DbSet<WikiVideo> WikiVideos { get; set; }

        public virtual int Commit()
        {
           return base.SaveChanges();
        }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            IConfigurationRoot config = new ConfigurationBuilder()
                .SetBasePath(Directory.GetCurrentDirectory())
                .AddJsonFile("appsettings.json")
                .Build();

            optionsBuilder.UseSqlServer(config.GetSection("Data:DefaultConnection:ConnectionString").Value);
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);
            // This needs to go before the other rules!

            // Pokemon and Type many-to-many relation ship
            modelBuilder.Entity<PokemonType>()
                .HasKey(t => new { t.CharacterId, t.TypeId });

            modelBuilder.Entity<PokemonType>()
                .HasOne(pt => pt.Pokemon)
                .WithMany(p => p.Types)
                .HasForeignKey(pt => pt.CharacterId);

            modelBuilder.Entity<PokemonType>()
                .HasOne(pt => pt.Type)
                .WithMany(t => t.PokemoTypes)
                .HasForeignKey(pt => pt.TypeId);

            // Pokemon and Move many-to-many relation ship
            modelBuilder.Entity<PokemonMove>()
                .HasKey(t => new { t.CharacterId, t.MoveId });

            modelBuilder.Entity<PokemonMove>()
                .HasOne(pm => pm.Pokemon)
                .WithMany(p => p.NormalMoves)
                .HasForeignKey(pm => pm.CharacterId);

            modelBuilder.Entity<PokemonMove>()
                .HasOne(pt => pt.PokeMove)
                .WithMany(t => t.PokemoMoves)
                .HasForeignKey(pt => pt.MoveId);

            // Special move
            modelBuilder.Entity<PokemonSpecialMove>()
               .HasKey(t => new { t.CharacterId, t.MoveId });

            modelBuilder.Entity<PokemonSpecialMove>()
                .HasOne(pm => pm.Pokemon)
                .WithMany(p => p.SpecialMoves)
                .HasForeignKey(pm => pm.CharacterId);

            modelBuilder.Entity<PokemonSpecialMove>()
                .HasOne(pt => pt.PokeSpecialMove)
                .WithMany(t => t.PokemoSpecialMoves)
                .HasForeignKey(pt => pt.MoveId);

            // Pokemon and Location many-to-many relation ship
            modelBuilder.Entity<PokemonLocation>()
                .HasKey(t => new { t.CharacterId, t.LocationId });

            modelBuilder.Entity<PokemonLocation>()
                .HasOne(pl => pl.Pokemon)
                .WithMany(p => p.Locations)
                .HasForeignKey(pt => pt.CharacterId);

            modelBuilder.Entity<PokemonLocation>()
                .HasOne(pl => pl.PokeLocation)
                .WithMany(l => l.PokemonLocations)
                .HasForeignKey(pl => pl.LocationId);
        }
    }
}