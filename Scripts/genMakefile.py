import sys
n=int((sys.argv[1]))
c=0
st="tendermint/localnode"
print("version: '3'")
print("services:")
print('')
for i in range(n):
  print("  node"+str(i)+":")
  print("    container_name: node"+str(i))
  print("    image: "+"\""+st+"\"")
  print("    environment:")
  print("      - ID="+str(i))
  print("      - LOG=${LOG:-tendermint.log}")
  print("    ports:")
  print("      - "+str(26656+c)+"-"+str(26657+c)+":26656-26657")
  print("    volumes:")
  print("      - ./build:/tendermint:Z")
  print("    networks:")
  print("      localnet:")
  print("        ipv4_address: 192.167.10."+str(2+i))
  print('')
  print('')
  c+=2
print("networks:")
print("  localnet:")
print("    driver: bridge")
print("    ipam:")
print("      driver: default")
print("      config:")
print("      -")
print("        subnet: 192.167.10.0/16")


