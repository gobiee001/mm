.class public Lcom/supersonicads/sdk/utils/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field private static enableLogging:Z


# direct methods
.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 124
    sget-boolean v0, Lcom/supersonicads/sdk/utils/Logger;->enableLogging:Z

    if-eqz v0, :cond_0

    .line 125
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 64
    sget-boolean v0, Lcom/supersonicads/sdk/utils/Logger;->enableLogging:Z

    if-eqz v0, :cond_0

    .line 65
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :cond_0
    return-void
.end method

.method public static enableLogging(I)V
    .locals 1
    .param p0, "mode"    # I

    .prologue
    .line 18
    sget-object v0, Lcom/supersonicads/sdk/data/SSAEnums$DebugMode;->MODE_0:Lcom/supersonicads/sdk/data/SSAEnums$DebugMode;

    invoke-virtual {v0}, Lcom/supersonicads/sdk/data/SSAEnums$DebugMode;->getValue()I

    move-result v0

    if-ne v0, p0, :cond_0

    .line 19
    const/4 v0, 0x0

    sput-boolean v0, Lcom/supersonicads/sdk/utils/Logger;->enableLogging:Z

    .line 23
    :goto_0
    return-void

    .line 21
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/supersonicads/sdk/utils/Logger;->enableLogging:Z

    goto :goto_0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 34
    sget-boolean v0, Lcom/supersonicads/sdk/utils/Logger;->enableLogging:Z

    if-eqz v0, :cond_0

    .line 35
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    :cond_0
    return-void
.end method
