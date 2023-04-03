// See https://aka.ms/new-console-template for more information
var client = new HttpClient();
var response = await client.GetStringAsync("https://localhost:7189");
Console.WriteLine(response);
