# 1 Bounded Buffer

Ich verwende eine `ArrayBlockingQueue`.

## Reflektion

Frage: Worin liegt der grösste Unterschied, zwischen Ihrem Bounded Buffer und
der gewählten Blocking Queue? Haben Sie Unterschiede in den Tests der beiden
Aufgaben festgestellt?

Antwort: Mein `BoundedBuffer` verfügt über eine blockierende `get()`-Methode.
Solange diese Methode keinen Wert aus dem Buffer entfernt und zurückgegeben hat,
kann sie nicht beendet werden. Die `ArrayBlockingQueue` hat als Gegenstück eine
`poll()`-Methode, die sofort `null` zurückgibt, wenn keine Werte in der
Datenstruktur gespeichert sind. Darum muss der Consumer überprüfen, wie viele
Werte er tatsächlich schon ausgelesen hat.

```java
while (itemsToConsume > 0) {
    String str = queue.poll();
    if (str != null) {
        Assert.assertNotNull(str);
        itemsToConsume--;
    }
}
```

Frage: Wie sind Sie mit den anders lautenden Methodennamen umgegangen? 

Antwort: Da ich den Test für den Einsatz eines Executors ohnehin umschreiben
musste, war das kein grosses Problem; ich ersetzte einfach die Methodennamen.
Besser wäre es gewesen, wenn mein `BoundedBuffer` das Interface `Queue`
implementiert hätte, dann wäre dieses Problem gar nicht aufgetreten.
