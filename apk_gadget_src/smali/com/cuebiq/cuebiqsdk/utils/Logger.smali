.class public Lcom/cuebiq/cuebiqsdk/utils/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field private static final PREFIX:Ljava/lang/String; = "[CuebiqSDK]"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static error(Ljava/lang/String;)V
    .locals 3
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0xfa0

    .line 28
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_0

    .line 29
    const-string v0, "[CuebiqSDK]"

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cuebiq/cuebiqsdk/utils/Logger;->error(Ljava/lang/String;)V

    .line 33
    :goto_0
    return-void

    .line 32
    :cond_0
    const-string v0, "[CuebiqSDK]"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static log(Ljava/lang/String;)V
    .locals 3
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0xfa0

    .line 17
    sget-object v0, Lcom/cuebiq/cuebiqsdk/api/ApiConfiguration;->workingEnvironment:Lcom/cuebiq/cuebiqsdk/api/Environment;

    sget-object v1, Lcom/cuebiq/cuebiqsdk/api/Environment;->PRODUCTION:Lcom/cuebiq/cuebiqsdk/api/Environment;

    if-ne v0, v1, :cond_0

    .line 25
    :goto_0
    return-void

    .line 20
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_1

    .line 21
    const-string v0, "[CuebiqSDK]"

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cuebiq/cuebiqsdk/utils/Logger;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 24
    :cond_1
    const-string v0, "[CuebiqSDK]"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
