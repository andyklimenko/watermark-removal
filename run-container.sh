docker run -d \
  --name watermark-remover  \
  -v ./data/in:/tf/in \
  -v ./data/out:/tf/out \
  watermark-remover