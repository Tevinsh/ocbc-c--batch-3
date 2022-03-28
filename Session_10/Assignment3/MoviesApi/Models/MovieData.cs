using System;
using System.ComponentModel.DataAnnotations;

namespace MoviesApi.Models
{
    public class MovieData
    {
        public int Id {get; set;}
        [Required]
        public string Name {get; set;}
        [Required]
        public string Duration {get; set;}
        [Required]
        public DateTime ReleaseDate {get; set;}
    }
}