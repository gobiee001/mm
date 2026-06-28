.class public Lcom/amazon/insights/validate/EncodingValidator;
.super Ljava/lang/Object;
.source "EncodingValidator.java"


# instance fields
.field private final encoding:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "encoding"    # Ljava/lang/String;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/amazon/insights/validate/EncodingValidator;->encoding:Ljava/lang/String;

    .line 13
    return-void
.end method


# virtual methods
.method public validate()V
    .locals 5

    .prologue
    .line 16
    const-string v1, "!\"#$%&\'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~"

    .line 18
    .local v1, "testString":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/amazon/insights/validate/EncodingValidator;->encoding:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    return-void

    .line 19
    :catch_0
    move-exception v0

    .line 20
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Lcom/amazon/insights/impl/InitializationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/amazon/insights/validate/EncodingValidator;->encoding:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " encoding is not supported"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/amazon/insights/impl/InitializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
