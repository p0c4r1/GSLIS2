qz.security.setCertificatePromise(function (resolve, reject) {
    resolve("-----BEGIN CERTIFICATE-----\n" +
            "MIID/jCCAuagAwIBAgIJAPBaJraIywlZMA0GCSqGSIb3DQEBBQUAMIGTMQswCQYDVQQGEwJJRDEUMBIGA1UECAwLREtJIEpha2FydGExEDAOBgNVBAcMB0pha2FydGExFTATBgNVBAoMDEdTTElTIFJlYm9ybjEMMAoGA1UECwwDRGV2MRQwEgYDVQQDDAsqLmdzbGlzLmNvbTEhMB8GCSqGSIb3DQEJARYSeW9zZXIxNzRAZ21haWwuY29tMB4XDTE5MTIwOTE1MTkwNloXDTI1MDcwODE1MTkwNlowgZMxCzAJBgNVBAYTAklEMRQwEgYDVQQIDAtES0kgSmFrYXJ0YTEQMA4GA1UEBwwHSmFrYXJ0YTEVMBMGA1UECgwMR1NMSVMgUmVib3JuMQwwCgYDVQQLDANEZXYxFDASBgNVBAMMCyouZ3NsaXMuY29tMSEwHwYJKoZIhvcNAQkBFhJ5b3NlcjE3NEBnbWFpbC5jb20wggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDc7KVBkplXaVVjc8xcM9Hx7v0X7V6DuqAqBRoawAhCP3A9WYD6P/TyzqheEAobc8NkEStKR03dpq8I6fxuBbCsvvMBSln/n9ad9cg9Y5Gc7YS9x37HIimSqO14wLkeqLEPSFSwHoQZ/FmK90RlV2/hW195RCWjN91FL6Hh5HK9vyjiEW2DNqghyR55fBKDpUaHoeMFUOToGHbTU6RHlBB8E/8icpaAWMJdX0tMNlUC/7ygb8bcAf1UsIyAimhKXkpc+zsJsdihjq02RVvVsioMVaq+X7diidDDLkmggk5JJqyZTKowHZH4vtV125pDEDvMb51AI8BcGEsl1pzF63m1AgMBAAGjUzBRMB0GA1UdDgQWBBSy0/s4rmrMGqdzJYOGg2Adt+fOkTAfBgNVHSMEGDAWgBSy0/s4rmrMGqdzJYOGg2Adt+fOkTAPBgNVHRMBAf8EBTADAQH/MA0GCSqGSIb3DQEBBQUAA4IBAQA1Aqssfaa3f2v35Q7RM1d0l7kEBjpLWZWFbhUA0e6EEO8K5VZkpGHq/GgDeyRTt462mT7jaEeQaOlsHT8s20pL2TmxG9NgpKng74vM7GCUNFM7ZfVqCt8J5VW5/hLHoyDvUnNP1K9NZVLBo6jNp5tvKwZ4xp3yh1k/jmac9mhhiIcwYMAS/kBn3KXAAI3wiCjonq6b9mXZZ2uQvTj96LGXR77LRu3qujqUDO1RADG8sAaXbrxxqvBLmwTc1xmNnyY4RQID0SzIzrH/uIXhTj8Ddf0oKmCyPaz8GhT0phsbbobZpg772WU95c1vf0CDemg1RMnHaN7qalk+1/anbLiJ\n" +
            "-----END CERTIFICATE-----");
});

var privateKey = "-----BEGIN PRIVATE KEY-----\n" +
        "MIIEpQIBAAKCAQEA3OylQZKZV2lVY3PMXDPR8e79F+1eg7qgKgUaGsAIQj9wPVmA+j/08s6oXhAKG3PDZBErSkdN3aavCOn8bgWwrL7zAUpZ/5/WnfXIPWORnO2Evcd+xyIpkqjteMC5HqixD0hUsB6EGfxZivdEZVdv4VtfeUQlozfdRS+h4eRyvb8o4hFtgzaoIckeeXwSg6VGh6HjBVDk6Bh201OkR5QQfBP/InKWgFjCXV9LTDZVAv+8oG/G3AH9VLCMgIpoSl5KXPs7CbHYoY6tNkVb1bIqDFWqvl+3YonQwy5JoIJOSSasmUyqMB2R+L7VdduaQxA7zG+dQCPAXBhLJdacxet5tQIDAQABAoIBAQCa7IB+2VUbDUzJ7zySM+y4IgXuL5EmA0up6+YAeEXSXzZQb2GZHByj4PQE8m6EDcwpcjjPX+1k0CzSrXNNnEPnAAjdEMzIC8ivANqo4hgM2itKAooPDw/kPv44vb2TmGyB8REiaGPu7R3F69xUzNoySKdNHNLgAJ70k5CMHm2wTP2j53eT+bcx9MmPOmAszJJoB9zUqsHx+nNrm5dHCA0appTHtjKgUZF35twO6FlJu45UbGzEoBesF0sGWopt4Vl4RlOaD4zTROwQWLgPm+0w/zpJnXNj8VXz7y1bLH0DfkKn6w3H1VAuX+K4v65JiyShUwO/a5Z/l3V17BDUGpGJAoGBAPVVFVauwz4yTK2Oh3TRtI5Zg8BzFeW1o8jLy36NU2Zabt9W1n2pnsy2GhiX+3puWRhM6yKK6KQgozT4DuH5HDX8mGPYIrlpQxYYhtyFKbbEA0OBnyaS/C3uc+TaxemLI5OCN8Quy+ga+7i2tN/8iG39Q7AOwBp3yuD8yd77ADYrAoGBAOaH3XG6rOdp+ieF/RM19qaTGxa/ghfCDlWbKVjWUcxOkNFrZ7kgf5hakL4kIpDzsqmKR/mAzzeaLDTSKz25Dm9z+8ppxKXLOuqhWABgbkPzupr4N3a5C5HvSsp+zfYSUS6DNsdaNwa5lpacOSX/lEIXoc96f2N54F1UbxYi//+fAoGBALtq/lw0Mi+HmZBU/CJAOeEtfTs+MBJGSxMQrSrGqFne6ChyXHWvaQMWcqUrJhCH0ESCLnc7CzKnREco4aW7+tM7XueXrB9czMVKg2xfxlg7MgsWMRD05PXp3luMzfj2NH1x00xqO5fbVUXtPgyHDWqJOnZ7LkKKFVD/jPBta+H1AoGBAJy1Iv1ajorI6bnQRVa3yjE1sqZmDIMl8SSUUykGl5gwmBUj0+BujQ3+EoKOgcjTQFIro/2haDs93GsTqz1L/Noal8Di4UBqxGQWxYGMC6i5l9IchWd5JrpPViIMzOlHTlQ18hjV5K33nrxG+jowYJIFCoPFm679fF01NkZwCGG1AoGAZtWBdjpxREvSFVDTCqjmwa6lc1sDiUFW6dPKSj9DDpw6lV5FVGgyLD0a5eEA3zSBY0j5dDrJMMrpu/rfOEBy7vFpKXP9PuIFNAFGNfb+46ZdkjHWq8uyKbaO/3Lnk8lHS92cRhMumyOC6CLPrqvPbG6uMxTxjNbRVwzcMNZ+VMM=\n" +
        "-----END PRIVATE KEY-----";

qz.security.setSignaturePromise(function (toSign) {
    return function (resolve, reject) {
        try {
            var pk = new RSAKey();
            pk.readPrivateKeyFromPEMString(strip(privateKey));
            var hex = pk.signString(toSign, 'sha1');
            console.log("DEBUG: \n\n" + stob64(hextorstr(hex)));
            resolve(stob64(hextorstr(hex)));
        } catch (err) {
            console.error(err);
            reject(err);
        }
    };
});

function strip(key) {
    if (key.indexOf('-----') !== -1) {
        return key.split('-----')[2].replace(/\r?\n|\r/g, '');
    }
}
