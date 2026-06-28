.class public Lcom/amazon/insights/validate/EncryptionValidator;
.super Ljava/lang/Object;
.source "EncryptionValidator.java"


# instance fields
.field private final encryptionAlgorithm:Ljava/lang/String;

.field private final secretKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "secretKey"    # Ljava/lang/String;
    .param p2, "encryptionAlgorithm"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/amazon/insights/validate/EncryptionValidator;->secretKey:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/amazon/insights/validate/EncryptionValidator;->encryptionAlgorithm:Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method public validate()V
    .locals 11

    .prologue
    .line 28
    const-string v7, "!\"#$%&\'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~"

    .line 29
    .local v7, "testString":Ljava/lang/String;
    const/4 v5, 0x0

    .line 32
    .local v5, "encryptedBytes":[B
    :try_start_0
    new-instance v6, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v9, p0, Lcom/amazon/insights/validate/EncryptionValidator;->secretKey:Ljava/lang/String;

    const-string v10, "UTF-8"

    invoke-virtual {v9, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    iget-object v10, p0, Lcom/amazon/insights/validate/EncryptionValidator;->encryptionAlgorithm:Ljava/lang/String;

    invoke-direct {v6, v9, v10}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 34
    .local v6, "secretKeySpec":Ljavax/crypto/spec/SecretKeySpec;
    invoke-virtual {v6}, Ljavax/crypto/spec/SecretKeySpec;->getAlgorithm()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v4

    .line 35
    .local v4, "encryptCipher":Ljavax/crypto/Cipher;
    const/4 v9, 0x1

    invoke-virtual {v4, v9, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 37
    const-string v9, "UTF-8"

    invoke-virtual {v7, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    .line 38
    .local v8, "testStringBytes":[B
    invoke-virtual {v4, v8}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v5

    .line 40
    invoke-virtual {v6}, Ljavax/crypto/spec/SecretKeySpec;->getAlgorithm()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 41
    .local v0, "decryptCipher":Ljavax/crypto/Cipher;
    const/4 v9, 0x2

    invoke-virtual {v0, v9, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 43
    invoke-virtual {v0, v5}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 44
    .local v1, "decryptedBytes":[B
    new-instance v2, Ljava/lang/String;

    const-string v9, "UTF-8"

    invoke-direct {v2, v1, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 46
    .local v2, "decryptedString":Ljava/lang/String;
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 47
    new-instance v9, Lcom/amazon/insights/impl/InitializationException;

    const-string v10, "Could not encrypt and decrypt string with AES"

    invoke-direct {v9, v10}, Lcom/amazon/insights/impl/InitializationException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_5

    .line 49
    .end local v0    # "decryptCipher":Ljavax/crypto/Cipher;
    .end local v1    # "decryptedBytes":[B
    .end local v2    # "decryptedString":Ljava/lang/String;
    .end local v4    # "encryptCipher":Ljavax/crypto/Cipher;
    .end local v6    # "secretKeySpec":Ljavax/crypto/spec/SecretKeySpec;
    .end local v8    # "testStringBytes":[B
    :catch_0
    move-exception v3

    .line 50
    .local v3, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v9, Lcom/amazon/insights/impl/InitializationException;

    const-string v10, "UTF-8 encoding is not supported"

    invoke-direct {v9, v10, v3}, Lcom/amazon/insights/impl/InitializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 51
    .end local v3    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v3

    .line 52
    .local v3, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v9, Lcom/amazon/insights/impl/InitializationException;

    const-string v10, "No Provider for AES"

    invoke-direct {v9, v10, v3}, Lcom/amazon/insights/impl/InitializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 53
    .end local v3    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_2
    move-exception v3

    .line 54
    .local v3, "e":Ljavax/crypto/NoSuchPaddingException;
    new-instance v9, Lcom/amazon/insights/impl/InitializationException;

    const-string v10, "No Such Padding AES"

    invoke-direct {v9, v10, v3}, Lcom/amazon/insights/impl/InitializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 55
    .end local v3    # "e":Ljavax/crypto/NoSuchPaddingException;
    :catch_3
    move-exception v3

    .line 56
    .local v3, "e":Ljava/security/InvalidKeyException;
    new-instance v9, Lcom/amazon/insights/impl/InitializationException;

    const-string v10, "Invalid Key for AES"

    invoke-direct {v9, v10, v3}, Lcom/amazon/insights/impl/InitializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 57
    .end local v3    # "e":Ljava/security/InvalidKeyException;
    :catch_4
    move-exception v3

    .line 58
    .local v3, "e":Ljavax/crypto/IllegalBlockSizeException;
    new-instance v9, Lcom/amazon/insights/impl/InitializationException;

    const-string v10, "Illegal Block size for AES"

    invoke-direct {v9, v10, v3}, Lcom/amazon/insights/impl/InitializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 59
    .end local v3    # "e":Ljavax/crypto/IllegalBlockSizeException;
    :catch_5
    move-exception v3

    .line 60
    .local v3, "e":Ljavax/crypto/BadPaddingException;
    new-instance v9, Lcom/amazon/insights/impl/InitializationException;

    const-string v10, "Bad Padding for AES"

    invoke-direct {v9, v10, v3}, Lcom/amazon/insights/impl/InitializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 62
    .end local v3    # "e":Ljavax/crypto/BadPaddingException;
    .restart local v0    # "decryptCipher":Ljavax/crypto/Cipher;
    .restart local v1    # "decryptedBytes":[B
    .restart local v2    # "decryptedString":Ljava/lang/String;
    .restart local v4    # "encryptCipher":Ljavax/crypto/Cipher;
    .restart local v6    # "secretKeySpec":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v8    # "testStringBytes":[B
    :cond_0
    return-void
.end method
