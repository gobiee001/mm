.class Lcom/applovin/impl/sdk/gc;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/xml/sax/ContentHandler;


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/gb;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/gb;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/gc;->a:Lcom/applovin/impl/sdk/gb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1, v1, p3}, Ljava/util/Arrays;->copyOfRange([CII)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/sdk/fy;->isValidString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/applovin/impl/sdk/gc;->a:Lcom/applovin/impl/sdk/gb;

    invoke-static {v1}, Lcom/applovin/impl/sdk/gb;->d(Lcom/applovin/impl/sdk/gb;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method public endDocument()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    iget-object v2, p0, Lcom/applovin/impl/sdk/gc;->a:Lcom/applovin/impl/sdk/gb;

    invoke-static {v2}, Lcom/applovin/impl/sdk/gb;->b(Lcom/applovin/impl/sdk/gb;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/applovin/impl/sdk/gc;->a:Lcom/applovin/impl/sdk/gb;

    invoke-static {v2}, Lcom/applovin/impl/sdk/gb;->a(Lcom/applovin/impl/sdk/gb;)Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v2

    const-string v3, "XmlParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Finished parsing in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " seconds"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v1, p0, Lcom/applovin/impl/sdk/gc;->a:Lcom/applovin/impl/sdk/gb;

    iget-object v0, p0, Lcom/applovin/impl/sdk/gc;->a:Lcom/applovin/impl/sdk/gb;

    invoke-static {v0}, Lcom/applovin/impl/sdk/gb;->c(Lcom/applovin/impl/sdk/gb;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/impl/sdk/gd;

    invoke-static {v1, v0}, Lcom/applovin/impl/sdk/gb;->a(Lcom/applovin/impl/sdk/gb;Lcom/applovin/impl/sdk/gd;)Lcom/applovin/impl/sdk/gd;

    iget-object v0, p0, Lcom/applovin/impl/sdk/gc;->a:Lcom/applovin/impl/sdk/gb;

    invoke-static {v0}, Lcom/applovin/impl/sdk/gb;->e(Lcom/applovin/impl/sdk/gb;)Lcom/applovin/impl/sdk/gd;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/gc;->a:Lcom/applovin/impl/sdk/gb;

    invoke-static {v1}, Lcom/applovin/impl/sdk/gb;->d(Lcom/applovin/impl/sdk/gb;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/gd;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/gc;->a:Lcom/applovin/impl/sdk/gb;

    invoke-static {v0}, Lcom/applovin/impl/sdk/gb;->d(Lcom/applovin/impl/sdk/gb;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    return-void
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public ignorableWhitespace([CII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 0

    return-void
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public startDocument()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/sdk/gc;->a:Lcom/applovin/impl/sdk/gb;

    invoke-static {v0}, Lcom/applovin/impl/sdk/gb;->a(Lcom/applovin/impl/sdk/gb;)Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v0

    const-string v1, "XmlParser"

    const-string v2, "Begin parsing..."

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/gc;->a:Lcom/applovin/impl/sdk/gb;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/applovin/impl/sdk/gb;->a(Lcom/applovin/impl/sdk/gb;J)J

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/applovin/impl/sdk/gc;->a:Lcom/applovin/impl/sdk/gb;

    invoke-static {v1}, Lcom/applovin/impl/sdk/gb;->c(Lcom/applovin/impl/sdk/gb;)Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/gc;->a:Lcom/applovin/impl/sdk/gb;

    invoke-static {v0}, Lcom/applovin/impl/sdk/gb;->c(Lcom/applovin/impl/sdk/gb;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/impl/sdk/gd;

    :cond_0
    new-instance v1, Lcom/applovin/impl/sdk/gd;

    iget-object v2, p0, Lcom/applovin/impl/sdk/gc;->a:Lcom/applovin/impl/sdk/gb;

    invoke-static {v2, p4}, Lcom/applovin/impl/sdk/gb;->a(Lcom/applovin/impl/sdk/gb;Lorg/xml/sax/Attributes;)Ljava/util/Map;

    move-result-object v2

    invoke-direct {v1, p2, v2, v0}, Lcom/applovin/impl/sdk/gd;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/applovin/impl/sdk/ga;)V

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/gd;->a(Lcom/applovin/impl/sdk/ga;)V

    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/sdk/gc;->a:Lcom/applovin/impl/sdk/gb;

    invoke-static {v0}, Lcom/applovin/impl/sdk/gb;->c(Lcom/applovin/impl/sdk/gb;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/gc;->a:Lcom/applovin/impl/sdk/gb;

    invoke-static {v1}, Lcom/applovin/impl/sdk/gb;->a(Lcom/applovin/impl/sdk/gb;)Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v1

    const-string v2, "XmlParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to process element <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lcom/applovin/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v1, Lorg/xml/sax/SAXException;

    const-string v2, "Failed to start element"

    invoke-direct {v1, v2, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method
