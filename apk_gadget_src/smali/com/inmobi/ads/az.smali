.class public final Lcom/inmobi/ads/az;
.super Lcom/inmobi/ads/NativeAsset;
.source "NativeVideoAsset.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/ads/az$a;
    }
.end annotation


# instance fields
.field A:Z

.field B:Z

.field C:Z

.field D:Z

.field E:I

.field F:I

.field public G:Ljava/util/Map;
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

.field z:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/inmobi/ads/NativeAsset;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/ads/af;Lcom/inmobi/ads/bq;ZZZZZLjava/util/List;Lorg/json/JSONObject;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/inmobi/ads/af;",
            "Lcom/inmobi/ads/bq;",
            "ZZZZZ",
            "Ljava/util/List",
            "<",
            "Lcom/inmobi/ads/NativeTracker;",
            ">;",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    .prologue
    .line 94
    sget-object v1, Lcom/inmobi/ads/NativeAsset$AssetType;->ASSET_TYPE_VIDEO:Lcom/inmobi/ads/NativeAsset$AssetType;

    invoke-direct {p0, p1, p2, v1, p3}, Lcom/inmobi/ads/NativeAsset;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/ads/NativeAsset$AssetType;Lcom/inmobi/ads/af;)V

    .line 95
    iput-object p4, p0, Lcom/inmobi/ads/az;->e:Ljava/lang/Object;

    .line 96
    const/4 v1, 0x2

    iput v1, p0, Lcom/inmobi/ads/az;->i:I

    .line 97
    iput-boolean p5, p0, Lcom/inmobi/ads/az;->A:Z

    .line 98
    iput-boolean p6, p0, Lcom/inmobi/ads/az;->B:Z

    .line 99
    iput-boolean p7, p0, Lcom/inmobi/ads/az;->C:Z

    .line 100
    iput-boolean p8, p0, Lcom/inmobi/ads/az;->D:Z

    .line 101
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/inmobi/ads/az;->z:Ljava/util/List;

    .line 103
    if-eqz p4, :cond_6

    .line 104
    invoke-interface {p4}, Lcom/inmobi/ads/bq;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/inmobi/ads/az;->r:Ljava/lang/String;

    .line 108
    invoke-interface {p4}, Lcom/inmobi/ads/bq;->d()Ljava/util/List;

    move-result-object v3

    .line 110
    const/4 v1, 0x0

    .line 111
    if-eqz p10, :cond_2

    .line 112
    invoke-interface/range {p10 .. p10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v1

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/ads/NativeTracker;

    .line 113
    sget-object v5, Lcom/inmobi/ads/NativeTracker$TrackerEventType;->TRACKER_EVENT_TYPE_IAS:Lcom/inmobi/ads/NativeTracker$TrackerEventType;

    .line 1301
    iget-object v6, v1, Lcom/inmobi/ads/NativeTracker;->b:Lcom/inmobi/ads/NativeTracker$TrackerEventType;

    .line 113
    if-ne v5, v6, :cond_0

    .line 1305
    iget-object v2, v1, Lcom/inmobi/ads/NativeTracker;->c:Ljava/util/Map;

    .line 2293
    iget-object v5, v1, Lcom/inmobi/ads/NativeTracker;->a:Ljava/lang/String;

    .line 115
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 116
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 119
    :cond_0
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    move-object v1, v2

    move-object v2, v1

    .line 121
    goto :goto_0

    :cond_2
    move-object v2, v1

    .line 124
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/ads/NativeTracker;

    .line 125
    sget-object v5, Lcom/inmobi/ads/NativeTracker$TrackerEventType;->TRACKER_EVENT_TYPE_IAS:Lcom/inmobi/ads/NativeTracker$TrackerEventType;

    .line 2301
    iget-object v6, v1, Lcom/inmobi/ads/NativeTracker;->b:Lcom/inmobi/ads/NativeTracker$TrackerEventType;

    .line 125
    if-ne v5, v6, :cond_4

    .line 2309
    iput-object v2, v1, Lcom/inmobi/ads/NativeTracker;->c:Ljava/util/Map;

    goto :goto_1

    .line 130
    :cond_5
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 131
    invoke-virtual {p0, v3}, Lcom/inmobi/ads/az;->a(Ljava/util/List;)V

    .line 135
    :cond_6
    if-eqz p11, :cond_7

    .line 136
    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/inmobi/ads/az;->f:Lorg/json/JSONObject;

    .line 144
    :cond_7
    iget-object v1, p0, Lcom/inmobi/ads/az;->v:Ljava/util/Map;

    const-string v2, "placementType"

    sget-object v3, Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;->PLACEMENT_TYPE_INLINE:Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    iget-object v1, p0, Lcom/inmobi/ads/az;->v:Ljava/util/Map;

    const-string v2, "lastVisibleTimestamp"

    const/high16 v3, -0x80000000

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    iget-object v1, p0, Lcom/inmobi/ads/az;->v:Ljava/util/Map;

    const-string v2, "visible"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    iget-object v1, p0, Lcom/inmobi/ads/az;->v:Ljava/util/Map;

    const-string v2, "seekPosition"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    iget-object v1, p0, Lcom/inmobi/ads/az;->v:Ljava/util/Map;

    const-string v2, "didStartPlaying"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    iget-object v1, p0, Lcom/inmobi/ads/az;->v:Ljava/util/Map;

    const-string v2, "didPause"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    iget-object v1, p0, Lcom/inmobi/ads/az;->v:Ljava/util/Map;

    const-string v2, "didCompleteQ1"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    iget-object v1, p0, Lcom/inmobi/ads/az;->v:Ljava/util/Map;

    const-string v2, "didCompleteQ2"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    iget-object v1, p0, Lcom/inmobi/ads/az;->v:Ljava/util/Map;

    const-string v2, "didCompleteQ3"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    iget-object v1, p0, Lcom/inmobi/ads/az;->v:Ljava/util/Map;

    const-string v2, "didCompleteQ4"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    iget-object v1, p0, Lcom/inmobi/ads/az;->v:Ljava/util/Map;

    const-string v2, "didRequestFullScreen"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    iget-object v1, p0, Lcom/inmobi/ads/az;->v:Ljava/util/Map;

    const-string v2, "isFullScreen"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    iget-object v1, p0, Lcom/inmobi/ads/az;->v:Ljava/util/Map;

    const-string v2, "didImpressionFire"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    iget-object v1, p0, Lcom/inmobi/ads/az;->v:Ljava/util/Map;

    const-string v2, "mapViewabilityParams"

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    iget-object v1, p0, Lcom/inmobi/ads/az;->v:Ljava/util/Map;

    const-string v2, "didSignalVideoCompleted"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    iget-object v1, p0, Lcom/inmobi/ads/az;->v:Ljava/util/Map;

    const-string v2, "shouldAutoPlay"

    invoke-static/range {p9 .. p9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    iget-object v1, p0, Lcom/inmobi/ads/az;->v:Ljava/util/Map;

    const-string v2, "lastMediaVolume"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    iget-object v1, p0, Lcom/inmobi/ads/az;->v:Ljava/util/Map;

    const-string v2, "currentMediaVolume"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    iget-object v1, p0, Lcom/inmobi/ads/az;->v:Ljava/util/Map;

    const-string v2, "didQ4Fire"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    return-void
.end method


# virtual methods
.method public final a(Lcom/inmobi/ads/az;)V
    .locals 2

    .prologue
    .line 240
    iget-object v0, p0, Lcom/inmobi/ads/az;->v:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/inmobi/ads/az;->v()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 241
    iget-object v0, p0, Lcom/inmobi/ads/az;->G:Ljava/util/Map;

    .line 3170
    iget-object v1, p1, Lcom/inmobi/ads/az;->G:Ljava/util/Map;

    .line 241
    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 242
    invoke-virtual {p1}, Lcom/inmobi/ads/az;->f()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/ads/az;->u:Ljava/util/List;

    .line 243
    return-void
.end method

.method public final x()Lcom/inmobi/ads/bq;
    .locals 1

    .prologue
    .line 231
    invoke-virtual {p0}, Lcom/inmobi/ads/az;->d()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/ads/az;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/bq;

    goto :goto_0
.end method
