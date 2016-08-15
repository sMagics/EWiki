﻿
namespace WikiApp.Entities.Models
{
    public class WikiImage : Tracking
    {
        public int Id { get; set; }
        public string ImageName { get; set; }
        public int ImageSize { get; set; }
        public int ImageWidth { get; set; }
        public int ImageHeight { get; set; }
        public int BitDepth { get; set; }
        public string ImageMediaType { get; set; }
        public string ImageMime { get; set; }
        public string ImageDescription { get; set; }
    }
}