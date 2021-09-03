using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Senai.Rental.WebApi.Domains;
using Senai.Rental.WebApi.Interfaces;
using Senai.Rental.WebApi.Repositories;

/// <summary>
/// Controlador responsável pelo end points referentes aos Alugueis!
/// </summary>
namespace Senai.Rental.WebApi.Controllers
{
    //Define ue o tipo de resposta da API será no formato JSON!
    [Produces("Application/json")]
    
    //Define a rota de uma requisição!
    [Route("api/[controller]")]

    //Define que é um controlador da API!
    [ApiController]
    public class AlugueisController : ControllerBase
    {
        /// <summary>
        /// Objeto que irá receber todos os métodos definidos na interface!
        /// </summary>
        private IAluguelRepository _AluguelRepository { get; set; }

        /// <summary>
        /// Instancia de um objeto para que haja referencia dos métodos no repositório
        /// </summary>
        //Construtor responsável pelos métodos do repositório dos aluguéis!
        public AlugueisController()
        {
            _AluguelRepository = new AluguelRepository();
        }

        [HttpGet]
        //IActionResult = Resultado de uma ação!
        //Get() = nome generico!
        public IActionResult GET()
        {
            //
            //

            //
            List<AluguelDomain> ListaAlugueis = _AluguelRepository.ListarTodos();

            //
            return Ok(ListaAlugueis);
        }
    }
}
