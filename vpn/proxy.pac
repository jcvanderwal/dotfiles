function FindProxyForURL(url, host) {
    if (shExpMatch(host,"*.prd.ecpnv.com")) {
        return "proxy.ecp.loc";
    }
    return "DIRECT";
}
