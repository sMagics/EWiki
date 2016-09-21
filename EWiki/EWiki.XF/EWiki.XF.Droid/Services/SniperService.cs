using System.Threading.Tasks;
using Android.Content;
using Android.Widget;
using EWiki.XF.Droid.Services;
using EWiki.XF.Models.Enum;
using EWiki.XF.Services;
using Newtonsoft.Json;
using WebSocket4Net;
using Xamarin.Forms;

[assembly: Xamarin.Forms.Dependency(typeof(SniperService))]
namespace EWiki.XF.Droid.Services
{
    public class SniperService : ISniperService
    {
        private WebSocket client;
        public SniperService()
        {
            client = new WebSocket($"ws://bongvl.vn:7777", "basic", WebSocketVersion.Rfc6455);
            client.Opened += (sender, args) =>
            {
                var message = new SniperMessage()
                {
                    Message = "Accepted"
                };
                Device.BeginInvokeOnMainThread(
                () => MessagingCenter.Send(message, "Sniper")
                );
            };
            client.MessageReceived += (sender, args) =>
            {
                var message = new SniperMessage()
                {
                    Message = args.Message
                };
                Device.BeginInvokeOnMainThread(
                () => MessagingCenter.Send(message, "Sniper")
                );
            };
            client.Open();
        }
        public async Task Snipe(PokemonId pokemonId, double latitude, double longitude, string pokemonGoAccount)
        {
            if (pokemonGoAccount.Split(':').Length < 4 || string.IsNullOrEmpty(pokemonGoAccount.Split(':')[0]) || string.IsNullOrEmpty(pokemonGoAccount.Split(':')[1]))
            {
                var message = new SniperMessage()
                {
                    Message = "Please input Pokemon Go info..."
                };
                Device.BeginInvokeOnMainThread(
                () => MessagingCenter.Send(message, "Sniper")
                );
                return;
            }
            var running = true;
            while (running)
            {
                if (client.State == WebSocketState.Open)
                {
                    var snipeRq = new SnipeRq()
                    {
                        Action = "Snipe",
                        PokemonId = pokemonId,
                        Latitude = latitude,
                        Longitude = longitude,
                        UserName = pokemonGoAccount.Split(':')[0],
                        Password = pokemonGoAccount.Split(':')[1],
                        DefaultLatitude = double.Parse(pokemonGoAccount.Split(':')[2]),
                        DefaultLongitude = double.Parse(pokemonGoAccount.Split(':')[3])
                    };
                    client.Send(JsonConvert.SerializeObject(snipeRq));
                    running = false;
                }

                if (client.State == WebSocketState.Closed)
                {
                    client.Open();
                }

                await Task.Delay(1000);
            }
        }
    }
}