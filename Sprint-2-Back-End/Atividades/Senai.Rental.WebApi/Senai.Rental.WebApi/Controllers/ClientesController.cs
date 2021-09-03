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
/// Controlador responsável pelo end points references aos Clientes!
/// </summary>
namespace Senai.Rental.WebApi.Controllers
{
    //Define o tipo de resposta da API que nesse caso será em json!
    [Produces("application/json")]

    //Define a ota de uma requisição será no formato dominio/api/nomeController!
    //ex: http://localhost:5000/api/Clientes
    [Route("api/[controller]")]
    //Define que é um controlador de API!
    [ApiController]
    public class ClientesController : ControllerBase
    {
        /// <summary>
        /// Objeto que irá receber todos os métodos definidos na interface!
        /// </summary>
        private IClienteRepository _ClienteRepository { get; set; }


        /// <summary>
        /// Instancia um objeto _Clientepoisitoy para que haja referencia dos métodos do repositórios 
        /// </summary>
        public ClientesController()
        {
            _ClienteRepository = new ClienteRepository();
        }

        [HttpGet]
        //IActionResult = Resultado de uma ação.
        //Get () = nome generico
        public IActionResult GET() 
        {
            //Lista de Clientes
            //Se conectar com o Repositorio.

            //Cria uma lista nomeada ListaClients para receber os dados!
            List<ClienteDomain> ListaClientes =_ClienteRepository.ListarTodos();

            //Retorna os status code 200(OK) com a lista Clientes no formato JSON!
            return Ok(ListaClientes);
        }
    }
}
