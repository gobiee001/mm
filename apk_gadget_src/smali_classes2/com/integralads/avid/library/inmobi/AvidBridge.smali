.class public Lcom/integralads/avid/library/inmobi/AvidBridge;
.super Ljava/lang/Object;
.source "AvidBridge.java"


# static fields
.field private static avidJS:Ljava/lang/String;


# direct methods
.method public static getAvidJs()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/integralads/avid/library/inmobi/AvidBridge;->avidJS:Ljava/lang/String;

    return-object v0
.end method

.method public static isAvidJsReady()Z
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/integralads/avid/library/inmobi/AvidBridge;->avidJS:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setAvidJs(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 14
    sput-object p0, Lcom/integralads/avid/library/inmobi/AvidBridge;->avidJS:Ljava/lang/String;

    .line 15
    return-void
.end method
