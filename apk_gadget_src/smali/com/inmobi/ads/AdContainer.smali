.class public interface abstract Lcom/inmobi/ads/AdContainer;
.super Ljava/lang/Object;
.source "AdContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/ads/AdContainer$RenderingProperties;,
        Lcom/inmobi/ads/AdContainer$EventType;,
        Lcom/inmobi/ads/AdContainer$a;
    }
.end annotation


# virtual methods
.method public abstract a()V
.end method

.method public abstract a(Lcom/inmobi/ads/AdContainer$EventType;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inmobi/ads/AdContainer$EventType;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract b()V
.end method

.method public abstract c()Z
.end method

.method public abstract destroy()V
.end method

.method public abstract getApkDownloader()Lcom/inmobi/ads/l;
.end method

.method public abstract getDataModel()Ljava/lang/Object;
.end method

.method public abstract getFullScreenEventsListener()Lcom/inmobi/ads/AdContainer$a;
.end method

.method public abstract getMarkupType()Lcom/inmobi/ads/AdUnit$AdMarkupType;
.end method

.method public abstract getRenderingProperties()Lcom/inmobi/ads/AdContainer$RenderingProperties;
.end method

.method public abstract getVideoContainerView()Landroid/view/View;
.end method

.method public abstract getViewableAd()Lcom/inmobi/ads/ViewableAd;
.end method

.method public abstract setExitAnimation(I)V
.end method

.method public abstract setFullScreenActivityContext(Landroid/app/Activity;)V
.end method

.method public abstract setRequestedScreenOrientation()V
.end method
