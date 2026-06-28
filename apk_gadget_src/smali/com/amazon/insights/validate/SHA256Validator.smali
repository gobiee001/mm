.class public Lcom/amazon/insights/validate/SHA256Validator;
.super Ljava/lang/Object;
.source "SHA256Validator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public validate()V
    .locals 5

    .prologue
    .line 16
    :try_start_0
    const-string v3, "SHA-256"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 17
    .local v0, "digest":Ljava/security/MessageDigest;
    const-string v3, "ABCDEFGHIJKLMNOPQRSTUVWXYZABCDEF"

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    .line 18
    .local v2, "hashedKey":[B
    if-nez v2, :cond_0

    .line 19
    new-instance v3, Lcom/amazon/insights/impl/InitializationException;

    const-string v4, "SHA-256 algorithm cannot hash bytes"

    invoke-direct {v3, v4}, Lcom/amazon/insights/impl/InitializationException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 21
    .end local v0    # "digest":Ljava/security/MessageDigest;
    .end local v2    # "hashedKey":[B
    :catch_0
    move-exception v1

    .line 22
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Lcom/amazon/insights/impl/InitializationException;

    const-string v4, "No valid SHA-256 implementation found"

    invoke-direct {v3, v4, v1}, Lcom/amazon/insights/impl/InitializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 23
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v1

    .line 24
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v3, Lcom/amazon/insights/impl/InitializationException;

    const-string v4, "UTF-8 encoding is not supported"

    invoke-direct {v3, v4, v1}, Lcom/amazon/insights/impl/InitializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 26
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v0    # "digest":Ljava/security/MessageDigest;
    .restart local v2    # "hashedKey":[B
    :cond_0
    return-void
.end method
