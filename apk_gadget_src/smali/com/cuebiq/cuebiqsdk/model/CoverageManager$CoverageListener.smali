.class public interface abstract Lcom/cuebiq/cuebiqsdk/model/CoverageManager$CoverageListener;
.super Ljava/lang/Object;
.source "CoverageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cuebiq/cuebiqsdk/model/CoverageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CoverageListener"
.end annotation


# virtual methods
.method public abstract onCountryCovered()V
.end method

.method public abstract onCountryNotCovered()V
.end method

.method public abstract onError(Ljava/lang/String;)V
.end method
