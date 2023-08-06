using Microsoft.AspNetCore.Mvc;

namespace DioTrilhaNetBancoDeDadosDesafio.Controllers
{
    public class DefaultController : ControllerBase
    {
        [HttpGet("/")]
        [ApiExplorerSettings(IgnoreApi = true)]
        public RedirectResult RedirectToSwaggerUi()
        {
            return Redirect("/swagger/index.html");
        }
    }
}