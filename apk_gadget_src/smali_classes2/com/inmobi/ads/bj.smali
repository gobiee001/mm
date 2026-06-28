.class public final Lcom/inmobi/ads/bj;
.super Ljava/lang/Object;
.source "TrackerAttr.java"


# instance fields
.field public a:Lcom/inmobi/ads/AdUnit$AdTrackerType;

.field public b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/inmobi/ads/AdUnit$AdTrackerType;)V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/inmobi/ads/bj;->a:Lcom/inmobi/ads/AdUnit$AdTrackerType;

    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/inmobi/ads/bj;->b:Ljava/util/Map;

    .line 13
    return-void
.end method
