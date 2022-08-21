import nazca as nd
nd.image('Sinbino.png', threshold=0.5, size=100, pixelsize=1.0, layer=12).put(0)
nd.export_gds()
