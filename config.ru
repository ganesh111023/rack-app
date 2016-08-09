use Rack::Static,
  :urls => ["/img", "/js", "/css", "/fonts", "/making", "/sitemap.xml", "/hire-elixir-phoenix-developer"],
  :root => "public"

run lambda { |env|
  [
    200,
    {
      'Content-Type'  => 'text/html',
      'Cache-Control' => 'public, max-age=86400'
    },
    File.open('public/index.html', File::RDONLY)
  ]
}
