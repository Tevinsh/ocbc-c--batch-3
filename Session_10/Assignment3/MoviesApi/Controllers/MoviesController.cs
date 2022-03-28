using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using Microsoft.Extensions.Logging;
using MoviesApi.Models;
using MoviesApi.Data;

namespace MoviesApi.Controllers
{
    [ApiController]
    [Route("/api/[controller]")]
    public class MoviesController : ControllerBase
    {
        private readonly ApiDbContext _context;

        public MoviesController(ApiDbContext context)
        {
            _context = context;
        }
        [HttpGet]
        public async Task<IActionResult> GetMovies()
        {
            var movies = await _context.Movies.ToListAsync();
            return Ok(movies);
        }
        [HttpPost]
        public async Task<IActionResult> CreateItem(MovieData data)
        {
            ModelState.Remove("Id");
            if(ModelState.IsValid)
            {
            await _context.Movies.AddAsync(data);
            await _context.SaveChangesAsync();

            return Ok(
                new {
                    keterangan = "sukses",
                    nama = data.Name,
                    Durasi = data.Duration,
                    releasedate = data.ReleaseDate
                }
                );
            }
            return new JsonResult("Something went wrong") {StatusCode = 500};
        }

        [HttpGet("{id}")]
        public async Task<IActionResult> GetItem(int id)
        {
            var item = await _context.Movies.FirstOrDefaultAsync(x => x.Id == id);
            if(item == null)
            return NotFound();
             return Ok(item);
        }
        
        [HttpPut("{id}")]
        public async Task<IActionResult> UpdateMovie(int id, MovieData movie)
        {
            if(id != movie.Id)
            return BadRequest();
            var existMovie = await _context.Movies.FirstOrDefaultAsync(x => x.Id == id);

            if(existMovie == null)
            return NotFound();

            existMovie.Duration = movie.Duration;
            existMovie.ReleaseDate = movie.ReleaseDate;
            existMovie.Name = movie.Name;
            await _context.SaveChangesAsync();
            return Ok(new {
                Status = "sukses diupdate",
                id = id
            });
        }

        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteMovie(int id)
        {
            var existMovie = await _context.Movies.FirstOrDefaultAsync(x => x.Id == id);

            if(existMovie == null)
            return NotFound();

            _context.Movies.Remove(existMovie);
            await _context.SaveChangesAsync();

            return Ok(
                new {
                    keterangan = "dihapus",
                    id = existMovie.Id,
                    nama = existMovie.Name,
                    Durasi = existMovie.Duration,
                    ReleaseDate = existMovie.ReleaseDate
                }
            );
        }
    }
}