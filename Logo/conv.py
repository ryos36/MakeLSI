import nazca as nd
nd.image('sinby2048x2048-R.png', threshold=0.5, size=100, pixelsize=1.0, layer=10).put(0)
nd.image('sinby2048x2048-L.jpg', threshold=0.5, size=100, pixelsize=1.0, layer=3,invert=True).put(2)
nd.export_gds()
