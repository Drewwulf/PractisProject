using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using System.Text.Json;
using System.Text.Encodings.Web;

namespace PractiseProject.Drivers
{
    public class JsonStorage
    {
        public static string filePath => $"C:/Users/Cobta/source/repos/PractiseProject/Controller/{Today}.json";
        public static string Today => DateTime.UtcNow.ToString("yyyy-MM-dd");

        public static TestStorage cache;

        public class TestStorage
        {
            public string Version { get; set; } = "1.0";
            public string Date { get; set; } = DateTime.UtcNow.ToString("yyyy-MM-dd");
            public Dictionary<string, List<TestResult>> Tests { get; set; } = new Dictionary<string, List<TestResult>>();
        }

        public class TestResult
        {
            public string Time { get; set; }
            public string Result { get; set; }
            public string Details { get; set; }
        }

        public static void EnsureLoading()
        {
            if (cache == null)
            {
                if (File.Exists(filePath))
                {
                    try
                    {
                        string json = File.ReadAllText(filePath, Encoding.UTF8);
                        cache = JsonSerializer.Deserialize<TestStorage>(json);
                    }
                    catch (Exception ex)
                    {
                        Console.WriteLine($"Помилка завантаження JSON: {ex.Message}");
                        cache = new TestStorage();
                    }

                    if (cache == null)
                        cache = new TestStorage();
                }
                else
                {
                    cache = new TestStorage();
                }
            }
        }

        public static void SaveToJson(string key, string details)
        {
            EnsureLoading();

            if (!cache.Tests.ContainsKey(key))
                cache.Tests[key] = new List<TestResult>();

            cache.Tests[key].Add(new TestResult
            {
                Time = DateTime.UtcNow.ToString("HH:mm:ss"),
                Result = key.ToLower().Contains("failed") ? "Failed" : "Passed",
                Details = details
            });

            var options = new JsonSerializerOptions
            {
                WriteIndented = true,
                Encoder = JavaScriptEncoder.UnsafeRelaxedJsonEscaping
            };

            try
            {
                string json = JsonSerializer.Serialize(cache, options);
                File.WriteAllText(filePath, json, Encoding.UTF8);
            }
            catch (Exception ex)
            {
                Console.WriteLine($"Помилка збереження JSON: {ex.Message}");
            }
        }
    }
}
