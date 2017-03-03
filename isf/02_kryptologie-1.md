# Kryptologie 1

## Arten der Kryptoanalyse

Bei bekannten Verfahren:

- Brute-Force
- Ciphertext-Only

Bei unbekannten Verfahren:

- Known-Plaintext: (Beispiel: Ein Telegramm ist immer mit "Heil Hitler" unterschrieben)
- Chosen-Plaintext: Die Möglichkeit, einen Klartext durch das Krypto-Verfahren und dem gesuchten Schlüssel zu verschlüsseln.
- Chosen-Ciphertext: Man kann beliebige Cyphertexte entschlüsseln lassen, kennt aber den Key nicht.

zu Folie 12: Geburtstagsparadox!

zu Folie 16:

- Electronic Codebook (ECB)
- CBC: Output eines Blockes fliesst (mittels XOR) in die Chiffrierung mit ein
    - sicherer
    - fehleranfälliger (jeder Fehler wirkt sich auf den nächsten Block aus, wegen XOR jedoch nicht auf den gesamten Rest (doppelt gedreht))
