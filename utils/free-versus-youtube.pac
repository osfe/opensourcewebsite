function FindProxyForURL(url, host) {
  if (isInNet(host,"173.194.52.0","255.255.252.0") ) return "PROXY localhost:1";
  return "DIRECT";
}
