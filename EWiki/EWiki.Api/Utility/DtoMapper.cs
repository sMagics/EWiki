﻿using EWiki.Api.Models;
using System;
using System.Linq;
using EWiki.Api.Dto.Enum;
using System.Collections.Generic;

namespace EWiki.Api.Utility
{
    public class DtoMapper
    {
        public static CategoryDto MapCategoryDto(Category catEfo)
        {
            catEfo = catEfo ?? new Category();

            return new CategoryDto()
            {
                Id = catEfo.Id,
                CatTitle = catEfo.CatTitle,
                CatTitleVI = catEfo.CatTitleVI,
                CatPages = catEfo.CatPages.Value,
                NumberOfSubcat = catEfo.NumberOfSubcat,
                CatImage = catEfo.CatImage,

                CreatedUserId = catEfo.CreatedUserId,
                CreatedUser = catEfo.CreatedUser,
                CreatedDate = catEfo.CreatedDate,
                UpdatedUserId = catEfo.CreatedUserId,
                UpdatedUser = catEfo.UpdatedUser,
                UpdatedDate = catEfo.UpdatedDate ?? new DateTime()
            };
        }

        public static MoveDto MapMoveDto(Move moveEfo)
        {
            moveEfo = moveEfo ?? new Move();

            return new MoveDto()
            {
                Id = moveEfo.Id,
                Name = moveEfo.Name,
                Power = moveEfo.Power,
                Cooldown = moveEfo.Cooldown,
                Energy = moveEfo.Energy,
                DPS = moveEfo.DPS,
                WithSTAB = moveEfo.WithSTAB,
                CritChange = moveEfo.CritChange,
                Bars = moveEfo.Bars,
                BarLength = moveEfo.BarLength,
                MoveCategory = moveEfo.MoveCategory.CatTitle,
                Type = moveEfo.Type.CatTitle,

                CreatedUserId = moveEfo.CreatedUserId,
                CreatedUser = moveEfo.CreatedUser,
                CreatedDate = moveEfo.CreatedDate,
                UpdatedUserId = moveEfo.CreatedUserId,
                UpdatedUser = moveEfo.UpdatedUser,
                UpdatedDate = moveEfo.UpdatedDate ?? new DateTime()
            };
        }

        public static LocationDto MapLocationDto(Location locationEfo)
        {
            locationEfo = locationEfo ?? new Location();

            return new LocationDto()
            {
                Id = locationEfo.Id,
                Name = locationEfo.Name,
                Description = locationEfo.Description,
                Type = MapCategoryDto(locationEfo.Type),

                CreatedUserId = locationEfo.CreatedUserId,
                CreatedUser = locationEfo.CreatedUser,
                CreatedDate = locationEfo.CreatedDate,
                UpdatedUserId = locationEfo.CreatedUserId,
                UpdatedUser = locationEfo.UpdatedUser,
                UpdatedDate = locationEfo.UpdatedDate ?? new DateTime()
            };
        }

        public static PokedexDto MapPokedexDto(Character pokemonEfo, IEnumerable<Character> pokemons = null)
        {
            pokemonEfo = pokemonEfo ?? new Character();

            PokedexDto dto = new PokedexDto(){
                Id = pokemonEfo.Id,
                PokemonId = (PokemonId)Enum.Parse(typeof(PokemonId), pokemonEfo.Name),

                Types = pokemonEfo.Types.Where(t => t.Type != null)
                                .Select(t => t.Type.CatTitle)
                                .ToArray(),
                SpecialMoves = pokemonEfo.SpecialMoves.Where(nm => nm.PokeSpecialMove != null)
                                .Select(sm => MapMoveDto(sm.PokeSpecialMove))
                                .ToList(),
                NormalMoves = pokemonEfo.NormalMoves.Where(nm => nm.PokeMove != null)
                                .Select(nm => MapMoveDto(nm.PokeMove))
                                .ToList(),
                Locations = pokemonEfo.Locations.Where(l => l.PokeLocation != null)
                                .Select(l => MapLocationDto(l.PokeLocation))
                                .ToList(),

                Name = pokemonEfo.Name,
                Slug = pokemonEfo.Slug,
                Number = pokemonEfo.Number,
                Species = pokemonEfo.Species,
                Weight = pokemonEfo.Weight.Value,
                Height = pokemonEfo.Height.Value,
                Stamina = pokemonEfo.Stamina.Value,
                Attack = pokemonEfo.Attack.Value,
                Defense = pokemonEfo.Defense.Value,
                Candy = pokemonEfo.Candy.Value,
                CPGain = pokemonEfo.CPGain.Value,
                MaxCP = pokemonEfo.MaxCP.Value,
                Description = pokemonEfo.Description,
                Avatar = pokemonEfo.Avatar,

                EvolveIntoNumbers = pokemonEfo.EvolveIntos,
                EvolveIntos = pokemonEfo.EvolveIntoPokemons == null ? null :
                                        pokemonEfo.EvolveIntoPokemons
                                        .Select(p => MapPokemonEvolveDto(p))
                                        .ToList(),

                EvolveFromNumbers = pokemonEfo.EvolveFroms,
                EvolveFroms = pokemonEfo.EvolveFromPokemons == null ? null :
                                        pokemonEfo.EvolveFromPokemons
                                        .Select(p => MapPokemonEvolveDto(p))
                                        .ToList(),

                PageObjectId = pokemonEfo.InfoContentId,

                CreatedUserId = pokemonEfo.CreatedUserId,
                CreatedUser = pokemonEfo.CreatedUser,
                CreatedDate = pokemonEfo.CreatedDate,
                UpdatedUserId = pokemonEfo.CreatedUserId,
                UpdatedUser = pokemonEfo.UpdatedUser,
                UpdatedDate = pokemonEfo.UpdatedDate ?? new DateTime()
            };

            if (pokemonEfo.InfoContents != null)
            {
                dto.Description = pokemonEfo.InfoContents.Where(c => c.CurrentContent.ContentFlags == LanguageFlag.DESCRIPTION)
                                                .SingleOrDefault().CurrentContent.ContentText;
                dto.Species = pokemonEfo.InfoContents.Where(c => c.CurrentContent.ContentFlags == LanguageFlag.SPECIES)
                                                .SingleOrDefault().CurrentContent.ContentText;
            }

            return dto;
        }

        public static PokemonEvolveDto MapPokemonEvolveDto(Character pokemonEfo)
        {
            return pokemonEfo == null ? null :
                new PokemonEvolveDto()
                {
                    EvolveId = pokemonEfo.Id,
                    EvolveName = pokemonEfo.Name,
                    EvolveDescription = pokemonEfo.InfoContents == null ? pokemonEfo.Description : 
                                                                            pokemonEfo.InfoContents
                                                                            .Where(c => c.CurrentContent.ContentFlags == LanguageFlag.DESCRIPTION)
                                                                            .SingleOrDefault().CurrentContent.ContentText,
                    EvolveNumber = pokemonEfo.Number,
                    EvolveAvatar = pokemonEfo.Avatar != null ? pokemonEfo.Avatar.ImageUrl : string.Empty
                };
        }
    }
}
