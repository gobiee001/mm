.class public Lcom/inmobi/ads/bn;
.super Ljava/lang/Object;
.source "VastHelper.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/inmobi/ads/NativeTracker$TrackerEventType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Lcom/inmobi/ads/b$g;

.field private final c:Ljava/lang/String;

.field private e:I

.field private f:Lcom/inmobi/ads/bp;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 53
    const-class v0, Lcom/inmobi/ads/bn;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/ads/bn;->a:Ljava/lang/String;

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 101
    sput-object v0, Lcom/inmobi/ads/bn;->d:Ljava/util/Map;

    const-string v1, "Error"

    sget-object v2, Lcom/inmobi/ads/NativeTracker$TrackerEventType;->TRACKER_EVENT_TYPE_ERROR:Lcom/inmobi/ads/NativeTracker$TrackerEventType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/inmobi/ads/bn;->d:Ljava/util/Map;

    const-string v1, "Impression"

    sget-object v2, Lcom/inmobi/ads/NativeTracker$TrackerEventType;->TRACKER_EVENT_TYPE_RENDER:Lcom/inmobi/ads/NativeTracker$TrackerEventType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcom/inmobi/ads/bn;->d:Ljava/util/Map;

    const-string v1, "ClickTracking"

    sget-object v2, Lcom/inmobi/ads/NativeTracker$TrackerEventType;->TRACKER_EVENT_TYPE_CLICK:Lcom/inmobi/ads/NativeTracker$TrackerEventType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/inmobi/ads/bn;->d:Ljava/util/Map;

    const-string v1, "creativeView"

    sget-object v2, Lcom/inmobi/ads/NativeTracker$TrackerEventType;->TRACKER_EVENT_TYPE_CREATIVE_VIEW:Lcom/inmobi/ads/NativeTracker$TrackerEventType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lcom/inmobi/ads/bn;->d:Ljava/util/Map;

    const-string v1, "start"

    sget-object v2, Lcom/inmobi/ads/NativeTracker$TrackerEventType;->TRACKER_EVENT_TYPE_PLAY:Lcom/inmobi/ads/NativeTracker$TrackerEventType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lcom/inmobi/ads/bn;->d:Ljava/util/Map;

    const-string v1, "firstQuartile"

    sget-object v2, Lcom/inmobi/ads/NativeTracker$TrackerEventType;->TRACKER_EVENT_TYPE_Q1:Lcom/inmobi/ads/NativeTracker$TrackerEventType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lcom/inmobi/ads/bn;->d:Ljava/util/Map;

    const-string v1, "midpoint"

    sget-object v2, Lcom/inmobi/ads/NativeTracker$TrackerEventType;->TRACKER_EVENT_TYPE_Q2:Lcom/inmobi/ads/NativeTracker$TrackerEventType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lcom/inmobi/ads/bn;->d:Ljava/util/Map;

    const-string v1, "thirdQuartile"

    sget-object v2, Lcom/inmobi/ads/NativeTracker$TrackerEventType;->TRACKER_EVENT_TYPE_Q3:Lcom/inmobi/ads/NativeTracker$TrackerEventType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lcom/inmobi/ads/bn;->d:Ljava/util/Map;

    const-string v1, "complete"

    sget-object v2, Lcom/inmobi/ads/NativeTracker$TrackerEventType;->TRACKER_EVENT_TYPE_Q4:Lcom/inmobi/ads/NativeTracker$TrackerEventType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lcom/inmobi/ads/bn;->d:Ljava/util/Map;

    const-string v1, "mute"

    sget-object v2, Lcom/inmobi/ads/NativeTracker$TrackerEventType;->TRACKER_EVENT_TYPE_MUTE:Lcom/inmobi/ads/NativeTracker$TrackerEventType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lcom/inmobi/ads/bn;->d:Ljava/util/Map;

    const-string v1, "unmute"

    sget-object v2, Lcom/inmobi/ads/NativeTracker$TrackerEventType;->TRACKER_EVENT_TYPE_UNMUTE:Lcom/inmobi/ads/NativeTracker$TrackerEventType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lcom/inmobi/ads/bn;->d:Ljava/util/Map;

    const-string v1, "pause"

    sget-object v2, Lcom/inmobi/ads/NativeTracker$TrackerEventType;->TRACKER_EVENT_TYPE_PAUSE:Lcom/inmobi/ads/NativeTracker$TrackerEventType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lcom/inmobi/ads/bn;->d:Ljava/util/Map;

    const-string v1, "resume"

    sget-object v2, Lcom/inmobi/ads/NativeTracker$TrackerEventType;->TRACKER_EVENT_TYPE_RESUME:Lcom/inmobi/ads/NativeTracker$TrackerEventType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lcom/inmobi/ads/bn;->d:Ljava/util/Map;

    const-string v1, "fullscreen"

    sget-object v2, Lcom/inmobi/ads/NativeTracker$TrackerEventType;->TRACKER_EVENT_TYPE_FULLSCREEN:Lcom/inmobi/ads/NativeTracker$TrackerEventType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lcom/inmobi/ads/bn;->d:Ljava/util/Map;

    const-string v1, "exitFullscreen"

    sget-object v2, Lcom/inmobi/ads/NativeTracker$TrackerEventType;->TRACKER_EVENT_TYPE_EXIT_FULLSCREEN:Lcom/inmobi/ads/NativeTracker$TrackerEventType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    return-void
.end method

.method public constructor <init>(Lcom/inmobi/ads/b$g;)V
    .locals 2

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const-string v0, "Progressive"

    iput-object v0, p0, Lcom/inmobi/ads/bn;->c:Ljava/lang/String;

    .line 118
    const/4 v0, 0x0

    iput v0, p0, Lcom/inmobi/ads/bn;->e:I

    .line 122
    iput-object p1, p0, Lcom/inmobi/ads/bn;->b:Lcom/inmobi/ads/b$g;

    .line 123
    new-instance v0, Lcom/inmobi/ads/bp;

    iget-object v1, p0, Lcom/inmobi/ads/bn;->b:Lcom/inmobi/ads/b$g;

    invoke-direct {v0, v1}, Lcom/inmobi/ads/bp;-><init>(Lcom/inmobi/ads/b$g;)V

    iput-object v0, p0, Lcom/inmobi/ads/bn;->f:Lcom/inmobi/ads/bp;

    .line 124
    return-void
.end method

.method static a(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 225
    if-nez p0, :cond_1

    .line 236
    :cond_0
    :goto_0
    return-object v0

    .line 231
    :cond_1
    :try_start_0
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;
    :try_end_0
    .catch Lorg/w3c/dom/DOMException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 236
    :goto_1
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 232
    :catch_0
    move-exception v1

    .line 233
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error getting node value; "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/w3c/dom/DOMException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v2

    new-instance v3, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v3, v1}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    move-object v1, v0

    goto :goto_1
.end method

.method static a(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Document;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/w3c/dom/Node;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 210
    if-nez p0, :cond_0

    move-object v0, v1

    .line 221
    :goto_0
    return-object v0

    .line 213
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 214
    invoke-interface {p0, p1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 215
    const/4 v0, 0x0

    :goto_1
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 216
    invoke-interface {v3, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 218
    :cond_1
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-nez v0, :cond_2

    move-object v0, v1

    .line 219
    goto :goto_0

    :cond_2
    move-object v0, v2

    .line 221
    goto :goto_0
.end method

.method private static a(Ljava/util/List;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/w3c/dom/Node;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lorg/w3c/dom/Node;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 195
    if-nez p0, :cond_0

    .line 206
    :goto_0
    return-object v1

    .line 200
    :cond_0
    const/4 v0, 0x0

    move v3, v0

    move-object v0, v1

    move v1, v3

    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 201
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Node;

    invoke-static {v0, p1}, Lcom/inmobi/ads/bn;->a(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 202
    if-nez v2, :cond_2

    .line 200
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v2

    goto :goto_1

    :cond_1
    move-object v2, v0

    :cond_2
    move-object v1, v2

    .line 206
    goto :goto_0
.end method

.method static a(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 3

    .prologue
    .line 165
    invoke-static {p0, p1}, Lcom/inmobi/ads/bn;->b(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 167
    const/4 v0, 0x0

    .line 168
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 169
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Node;

    .line 171
    :cond_0
    return-object v0
.end method

.method private a(I)V
    .locals 7

    .prologue
    .line 680
    iget-object v0, p0, Lcom/inmobi/ads/bn;->f:Lcom/inmobi/ads/bp;

    .line 8178
    iput p1, v0, Lcom/inmobi/ads/bp;->f:I

    .line 683
    iget-object v0, p0, Lcom/inmobi/ads/bn;->f:Lcom/inmobi/ads/bp;

    .line 9140
    iget-object v0, v0, Lcom/inmobi/ads/bp;->d:Ljava/util/List;

    .line 683
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/NativeTracker;

    .line 9301
    iget-object v2, v0, Lcom/inmobi/ads/NativeTracker;->b:Lcom/inmobi/ads/NativeTracker$TrackerEventType;

    .line 684
    sget-object v3, Lcom/inmobi/ads/NativeTracker$TrackerEventType;->TRACKER_EVENT_TYPE_ERROR:Lcom/inmobi/ads/NativeTracker$TrackerEventType;

    if-ne v2, v3, :cond_0

    .line 9691
    invoke-static {}, Lcom/inmobi/rendering/a/c;->a()Lcom/inmobi/rendering/a/c;

    move-result-object v2

    .line 10293
    iget-object v3, v0, Lcom/inmobi/ads/NativeTracker;->a:Ljava/lang/String;

    .line 9695
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 9696
    const-string v5, "[ERRORCODE]"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9697
    invoke-static {v3, v4}, Lcom/inmobi/commons/core/utilities/d;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    .line 10305
    iget-object v0, v0, Lcom/inmobi/ads/NativeTracker;->c:Ljava/util/Map;

    .line 9698
    invoke-virtual {v2, v3, v0}, Lcom/inmobi/rendering/a/c;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 688
    :cond_1
    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/w3c/dom/Node;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 638
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 649
    :cond_0
    return-void

    .line 642
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Node;

    move-object v1, v0

    .line 643
    check-cast v1, Lorg/w3c/dom/Element;

    const-string v3, "event"

    invoke-interface {v1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 645
    sget-object v3, Lcom/inmobi/ads/bn;->d:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 646
    sget-object v3, Lcom/inmobi/ads/bn;->d:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/ads/NativeTracker$TrackerEventType;

    invoke-direct {p0, v1, v0}, Lcom/inmobi/ads/bn;->a(Lcom/inmobi/ads/NativeTracker$TrackerEventType;Lorg/w3c/dom/Node;)Z

    goto :goto_0
.end method

.method private static a(Ljava/util/List;Lcom/inmobi/ads/bm;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/w3c/dom/Node;",
            ">;",
            "Lcom/inmobi/ads/bm;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 592
    if-eqz p0, :cond_2

    move v1, v2

    .line 593
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 594
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Node;

    .line 595
    const/4 v3, 0x1

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    if-ne v3, v4, :cond_0

    .line 596
    invoke-static {v0}, Lcom/inmobi/ads/bn;->a(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    .line 597
    invoke-static {v0}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 598
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Malformed URL: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "; Discarding this tracker"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 602
    :cond_1
    new-instance v3, Lcom/inmobi/ads/NativeTracker;

    sget-object v4, Lcom/inmobi/ads/NativeTracker$TrackerEventType;->TRACKER_EVENT_TYPE_CLICK:Lcom/inmobi/ads/NativeTracker$TrackerEventType;

    const/4 v5, 0x0

    invoke-direct {v3, v0, v2, v4, v5}, Lcom/inmobi/ads/NativeTracker;-><init>(Ljava/lang/String;ILcom/inmobi/ads/NativeTracker$TrackerEventType;Ljava/util/Map;)V

    .line 603
    invoke-virtual {p1, v3}, Lcom/inmobi/ads/bm;->a(Lcom/inmobi/ads/NativeTracker;)V

    goto :goto_1

    .line 607
    :cond_2
    return-void
.end method

.method private a(Lcom/inmobi/ads/NativeTracker$TrackerEventType;Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inmobi/ads/NativeTracker$TrackerEventType;",
            "Ljava/util/List",
            "<",
            "Lorg/w3c/dom/Node;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 653
    if-eqz p2, :cond_1

    move v1, v2

    .line 654
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 655
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Node;

    .line 656
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    if-ne v4, v3, :cond_0

    .line 657
    invoke-direct {p0, p1, v0}, Lcom/inmobi/ads/bn;->a(Lcom/inmobi/ads/NativeTracker$TrackerEventType;Lorg/w3c/dom/Node;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 663
    :goto_1
    return v2

    .line 654
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    move v2, v3

    .line 663
    goto :goto_1
.end method

.method private a(Lcom/inmobi/ads/NativeTracker$TrackerEventType;Lorg/w3c/dom/Node;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 668
    invoke-static {p2}, Lcom/inmobi/ads/bn;->a(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    .line 669
    invoke-static {v2}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 670
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Malformed URL "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Discarding this tracker"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 672
    sget-object v2, Lcom/inmobi/ads/NativeTracker$TrackerEventType;->TRACKER_EVENT_TYPE_RENDER:Lcom/inmobi/ads/NativeTracker$TrackerEventType;

    if-eq p1, v2, :cond_0

    .line 676
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 672
    goto :goto_0

    .line 674
    :cond_1
    new-instance v3, Lcom/inmobi/ads/NativeTracker;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v1, p1, v4}, Lcom/inmobi/ads/NativeTracker;-><init>(Ljava/lang/String;ILcom/inmobi/ads/NativeTracker$TrackerEventType;Ljava/util/Map;)V

    .line 675
    iget-object v1, p0, Lcom/inmobi/ads/bn;->f:Lcom/inmobi/ads/bp;

    invoke-virtual {v1, v3}, Lcom/inmobi/ads/bp;->a(Lcom/inmobi/ads/NativeTracker;)V

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)Lcom/inmobi/commons/core/network/c;
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 127
    new-instance v0, Lcom/inmobi/commons/core/network/NetworkRequest;

    sget-object v1, Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;->GET:Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v3, v2}, Lcom/inmobi/commons/core/network/NetworkRequest;-><init>(Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;Ljava/lang/String;ZLcom/inmobi/commons/core/utilities/uid/d;)V

    .line 1078
    iput-boolean v3, v0, Lcom/inmobi/commons/core/network/NetworkRequest;->t:Z

    .line 1162
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/inmobi/commons/core/network/NetworkRequest;->r:Z

    .line 131
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 132
    new-instance v1, Lcom/inmobi/commons/core/network/d;

    invoke-direct {v1, v0}, Lcom/inmobi/commons/core/network/d;-><init>(Lcom/inmobi/commons/core/network/NetworkRequest;)V

    invoke-virtual {v1}, Lcom/inmobi/commons/core/network/d;->a()Lcom/inmobi/commons/core/network/c;

    move-result-object v1

    .line 134
    :try_start_0
    invoke-static {}, Lcom/inmobi/signals/n;->a()Lcom/inmobi/signals/n;

    move-result-object v4

    invoke-virtual {v0}, Lcom/inmobi/commons/core/network/NetworkRequest;->e()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/inmobi/signals/n;->a(J)V

    .line 135
    invoke-static {}, Lcom/inmobi/signals/n;->a()Lcom/inmobi/signals/n;

    move-result-object v0

    invoke-virtual {v1}, Lcom/inmobi/commons/core/network/c;->c()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/inmobi/signals/n;->b(J)V

    .line 136
    invoke-static {}, Lcom/inmobi/signals/n;->a()Lcom/inmobi/signals/n;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v2, v4, v2

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/signals/n;->c(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :goto_0
    return-object v1

    .line 137
    :catch_0
    move-exception v0

    .line 138
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error in setting request-response data size. "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v2

    new-instance v3, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v3, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto :goto_0
.end method

.method private static b(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Node;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/w3c/dom/Node;",
            ">;"
        }
    .end annotation

    .prologue
    .line 175
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 176
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move-object v0, v1

    .line 187
    :goto_0
    return-object v0

    .line 180
    :cond_1
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 181
    const/4 v0, 0x0

    :goto_1
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 182
    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 183
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 184
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 187
    goto :goto_0
.end method

.method private b(Lorg/w3c/dom/Node;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 620
    if-nez p1, :cond_1

    .line 634
    :cond_0
    :goto_0
    return v0

    .line 625
    :cond_1
    const-string v1, "Error"

    invoke-static {p1, v1}, Lcom/inmobi/ads/bn;->b(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 626
    sget-object v2, Lcom/inmobi/ads/NativeTracker$TrackerEventType;->TRACKER_EVENT_TYPE_ERROR:Lcom/inmobi/ads/NativeTracker$TrackerEventType;

    invoke-direct {p0, v2, v1}, Lcom/inmobi/ads/bn;->a(Lcom/inmobi/ads/NativeTracker$TrackerEventType;Ljava/util/List;)Z

    .line 629
    const-string v1, "Impression"

    invoke-static {p1, v1}, Lcom/inmobi/ads/bn;->b(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 630
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 634
    sget-object v0, Lcom/inmobi/ads/NativeTracker$TrackerEventType;->TRACKER_EVENT_TYPE_RENDER:Lcom/inmobi/ads/NativeTracker$TrackerEventType;

    invoke-direct {p0, v0, v1}, Lcom/inmobi/ads/bn;->a(Lcom/inmobi/ads/NativeTracker$TrackerEventType;Ljava/util/List;)Z

    move-result v0

    goto :goto_0
.end method

.method private static c(Ljava/lang/String;)I
    .locals 4

    .prologue
    .line 145
    const/4 v0, 0x0

    .line 147
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 152
    :goto_0
    return v0

    .line 148
    :catch_0
    move-exception v1

    .line 150
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v2

    new-instance v3, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v3, v1}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto :goto_0
.end method

.method private static c(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    invoke-static {p0, p1}, Lcom/inmobi/ads/bn;->a(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/ads/bn;->a(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private d(Ljava/lang/String;)Lcom/inmobi/ads/bp;
    .locals 2

    .prologue
    .line 248
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 249
    :cond_0
    const/16 v0, 0x12c

    invoke-direct {p0, v0}, Lcom/inmobi/ads/bn;->a(I)V

    .line 250
    iget-object v0, p0, Lcom/inmobi/ads/bn;->f:Lcom/inmobi/ads/bp;

    .line 260
    :goto_0
    return-object v0

    .line 253
    :cond_1
    invoke-static {p1}, Lcom/inmobi/ads/bn;->b(Ljava/lang/String;)Lcom/inmobi/commons/core/network/c;

    move-result-object v0

    .line 255
    invoke-virtual {v0}, Lcom/inmobi/commons/core/network/c;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 256
    const/16 v0, 0x12d

    invoke-direct {p0, v0}, Lcom/inmobi/ads/bn;->a(I)V

    .line 260
    :goto_1
    iget-object v0, p0, Lcom/inmobi/ads/bn;->f:Lcom/inmobi/ads/bp;

    goto :goto_0

    .line 258
    :cond_2
    invoke-virtual {v0}, Lcom/inmobi/commons/core/network/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/bn;->a(Ljava/lang/String;)Lcom/inmobi/ads/bp;

    goto :goto_1
.end method

.method private static e(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 582
    sget-object v0, Lcom/inmobi/ads/bm;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v1

    .line 583
    :goto_0
    if-ge v2, v3, :cond_1

    .line 584
    sget-object v0, Lcom/inmobi/ads/bm;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 585
    const/4 v0, 0x1

    .line 588
    :goto_1
    return v0

    .line 583
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 588
    goto :goto_1
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/inmobi/ads/bp;
    .locals 14

    .prologue
    const/16 v3, 0x12f

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/16 v13, 0x65

    .line 273
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 274
    :cond_0
    invoke-direct {p0, v3}, Lcom/inmobi/ads/bn;->a(I)V

    .line 275
    iget-object v0, p0, Lcom/inmobi/ads/bn;->f:Lcom/inmobi/ads/bp;

    .line 578
    :goto_0
    return-object v0

    .line 2156
    :cond_1
    :try_start_0
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 2157
    new-instance v1, Lorg/xml/sax/InputSource;

    invoke-direct {v1, v0}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    .line 2159
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    .line 2160
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 2161
    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/w3c/dom/DOMException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v5

    .line 287
    const-string v0, "VAST"

    invoke-static {v5, v0}, Lcom/inmobi/ads/bn;->a(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 288
    if-nez v0, :cond_2

    .line 290
    invoke-direct {p0, v13}, Lcom/inmobi/ads/bn;->a(I)V

    .line 291
    iget-object v0, p0, Lcom/inmobi/ads/bn;->f:Lcom/inmobi/ads/bp;

    goto :goto_0

    .line 281
    :catch_0
    move-exception v0

    .line 282
    :goto_1
    const/16 v1, 0x64

    invoke-direct {p0, v1}, Lcom/inmobi/ads/bn;->a(I)V

    .line 283
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    .line 284
    iget-object v0, p0, Lcom/inmobi/ads/bn;->f:Lcom/inmobi/ads/bp;

    goto :goto_0

    .line 294
    :cond_2
    const-string v1, "Ad"

    invoke-static {v0, v1}, Lcom/inmobi/ads/bn;->a(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 295
    if-nez v0, :cond_3

    .line 297
    invoke-direct {p0, v3}, Lcom/inmobi/ads/bn;->a(I)V

    .line 298
    iget-object v0, p0, Lcom/inmobi/ads/bn;->f:Lcom/inmobi/ads/bp;

    goto :goto_0

    .line 304
    :cond_3
    const-string v1, "Wrapper"

    invoke-static {v0, v1}, Lcom/inmobi/ads/bn;->a(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 305
    if-eqz v1, :cond_9

    .line 306
    iget v0, p0, Lcom/inmobi/ads/bn;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/inmobi/ads/bn;->e:I

    .line 307
    iget v0, p0, Lcom/inmobi/ads/bn;->e:I

    iget-object v3, p0, Lcom/inmobi/ads/bn;->b:Lcom/inmobi/ads/b$g;

    .line 2795
    iget v3, v3, Lcom/inmobi/ads/b$g;->a:I

    .line 307
    if-le v0, v3, :cond_4

    .line 309
    const/16 v0, 0x12e

    invoke-direct {p0, v0}, Lcom/inmobi/ads/bn;->a(I)V

    .line 310
    iget-object v0, p0, Lcom/inmobi/ads/bn;->f:Lcom/inmobi/ads/bp;

    goto :goto_0

    .line 313
    :cond_4
    invoke-direct {p0, v1}, Lcom/inmobi/ads/bn;->b(Lorg/w3c/dom/Node;)Z

    move-result v0

    .line 314
    if-nez v0, :cond_5

    .line 316
    invoke-direct {p0, v13}, Lcom/inmobi/ads/bn;->a(I)V

    .line 317
    iget-object v0, p0, Lcom/inmobi/ads/bn;->f:Lcom/inmobi/ads/bp;

    goto :goto_0

    .line 321
    :cond_5
    const-string v0, "TrackingEvents"

    invoke-static {v5, v0}, Lcom/inmobi/ads/bn;->a(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 322
    if-eqz v0, :cond_6

    .line 323
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Node;

    .line 324
    const-string v2, "Tracking"

    invoke-static {v0, v2}, Lcom/inmobi/ads/bn;->b(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 325
    invoke-direct {p0, v0}, Lcom/inmobi/ads/bn;->a(Ljava/util/List;)V

    .line 328
    :cond_6
    iget-object v0, p0, Lcom/inmobi/ads/bn;->f:Lcom/inmobi/ads/bp;

    invoke-static {v5, v0}, Lcom/inmobi/ads/r;->a(Lorg/w3c/dom/Document;Lcom/inmobi/ads/bp;)V

    .line 329
    iget-object v0, p0, Lcom/inmobi/ads/bn;->f:Lcom/inmobi/ads/bp;

    invoke-static {v5, v0}, Lcom/inmobi/ads/ab;->a(Lorg/w3c/dom/Document;Lcom/inmobi/ads/bp;)V

    .line 3610
    const-string v0, "ClickTracking"

    invoke-static {v5, v0}, Lcom/inmobi/ads/bn;->a(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 3611
    sget-object v2, Lcom/inmobi/ads/NativeTracker$TrackerEventType;->TRACKER_EVENT_TYPE_CLICK:Lcom/inmobi/ads/NativeTracker$TrackerEventType;

    invoke-direct {p0, v2, v0}, Lcom/inmobi/ads/bn;->a(Lcom/inmobi/ads/NativeTracker$TrackerEventType;Ljava/util/List;)Z

    .line 332
    const-string v0, "VASTAdTagURI"

    invoke-static {v1, v0}, Lcom/inmobi/ads/bn;->c(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 333
    if-nez v0, :cond_7

    .line 335
    invoke-direct {p0, v13}, Lcom/inmobi/ads/bn;->a(I)V

    .line 336
    iget-object v0, p0, Lcom/inmobi/ads/bn;->f:Lcom/inmobi/ads/bp;

    goto/16 :goto_0

    .line 339
    :cond_7
    invoke-direct {p0, v0}, Lcom/inmobi/ads/bn;->d(Ljava/lang/String;)Lcom/inmobi/ads/bp;

    .line 578
    :cond_8
    :goto_2
    iget-object v0, p0, Lcom/inmobi/ads/bn;->f:Lcom/inmobi/ads/bp;

    goto/16 :goto_0

    .line 343
    :cond_9
    const-string v1, "InLine"

    invoke-static {v0, v1}, Lcom/inmobi/ads/bn;->a(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 344
    if-nez v0, :cond_a

    .line 346
    invoke-direct {p0, v13}, Lcom/inmobi/ads/bn;->a(I)V

    .line 347
    iget-object v0, p0, Lcom/inmobi/ads/bn;->f:Lcom/inmobi/ads/bp;

    goto/16 :goto_0

    .line 350
    :cond_a
    invoke-direct {p0, v0}, Lcom/inmobi/ads/bn;->b(Lorg/w3c/dom/Node;)Z

    move-result v1

    .line 351
    if-nez v1, :cond_b

    .line 353
    invoke-direct {p0, v13}, Lcom/inmobi/ads/bn;->a(I)V

    .line 354
    iget-object v0, p0, Lcom/inmobi/ads/bn;->f:Lcom/inmobi/ads/bp;

    goto/16 :goto_0

    .line 357
    :cond_b
    const-string v1, "Creatives"

    invoke-static {v0, v1}, Lcom/inmobi/ads/bn;->a(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v6

    .line 358
    if-nez v6, :cond_c

    .line 360
    invoke-direct {p0, v13}, Lcom/inmobi/ads/bn;->a(I)V

    .line 361
    iget-object v0, p0, Lcom/inmobi/ads/bn;->f:Lcom/inmobi/ads/bp;

    goto/16 :goto_0

    .line 363
    :cond_c
    const-string v0, "Creative"

    invoke-static {v6, v0}, Lcom/inmobi/ads/bn;->b(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 364
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 366
    invoke-direct {p0, v13}, Lcom/inmobi/ads/bn;->a(I)V

    .line 367
    iget-object v0, p0, Lcom/inmobi/ads/bn;->f:Lcom/inmobi/ads/bp;

    goto/16 :goto_0

    .line 369
    :cond_d
    const-string v1, "Linear"

    invoke-static {v0, v1}, Lcom/inmobi/ads/bn;->a(Ljava/util/List;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 372
    if-nez v1, :cond_e

    .line 374
    const/16 v0, 0xc9

    invoke-direct {p0, v0}, Lcom/inmobi/ads/bn;->a(I)V

    .line 375
    iget-object v0, p0, Lcom/inmobi/ads/bn;->f:Lcom/inmobi/ads/bp;

    goto/16 :goto_0

    .line 379
    :cond_e
    const-string v0, "Duration"

    invoke-static {v1, v0}, Lcom/inmobi/ads/bn;->b(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 380
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 382
    invoke-direct {p0, v13}, Lcom/inmobi/ads/bn;->a(I)V

    .line 383
    iget-object v0, p0, Lcom/inmobi/ads/bn;->f:Lcom/inmobi/ads/bp;

    goto/16 :goto_0

    .line 385
    :cond_f
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Node;

    .line 386
    invoke-static {v0}, Lcom/inmobi/ads/bn;->a(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    .line 388
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_10

    const-string v3, "\\d*:[0-5][0-9]:[0-5][0-9](:[0-9][0-9][0-9])?"

    invoke-virtual {v0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 390
    :cond_10
    invoke-direct {p0, v13}, Lcom/inmobi/ads/bn;->a(I)V

    .line 391
    iget-object v0, p0, Lcom/inmobi/ads/bn;->f:Lcom/inmobi/ads/bp;

    goto/16 :goto_0

    .line 393
    :cond_11
    iget-object v3, p0, Lcom/inmobi/ads/bn;->f:Lcom/inmobi/ads/bp;

    .line 4186
    iput-object v0, v3, Lcom/inmobi/ads/bp;->b:Ljava/lang/String;

    .line 396
    const-string v0, "MediaFiles"

    invoke-static {v1, v0}, Lcom/inmobi/ads/bn;->a(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 397
    if-nez v0, :cond_12

    .line 399
    invoke-direct {p0, v13}, Lcom/inmobi/ads/bn;->a(I)V

    .line 400
    iget-object v0, p0, Lcom/inmobi/ads/bn;->f:Lcom/inmobi/ads/bp;

    goto/16 :goto_0

    .line 404
    :cond_12
    const-string v3, "VideoClicks"

    invoke-static {v1, v3}, Lcom/inmobi/ads/bn;->a(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 405
    const-string v7, "ClickThrough"

    invoke-static {v3, v7}, Lcom/inmobi/ads/bn;->c(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 406
    iget-object v8, p0, Lcom/inmobi/ads/bn;->f:Lcom/inmobi/ads/bp;

    .line 5174
    iput-object v7, v8, Lcom/inmobi/ads/bp;->c:Ljava/lang/String;

    .line 5615
    const-string v7, "ClickTracking"

    invoke-static {v3, v7}, Lcom/inmobi/ads/bn;->b(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 5616
    sget-object v7, Lcom/inmobi/ads/NativeTracker$TrackerEventType;->TRACKER_EVENT_TYPE_CLICK:Lcom/inmobi/ads/NativeTracker$TrackerEventType;

    invoke-direct {p0, v7, v3}, Lcom/inmobi/ads/bn;->a(Lcom/inmobi/ads/NativeTracker$TrackerEventType;Ljava/util/List;)Z

    .line 412
    const-string v3, "TrackingEvents"

    invoke-static {v1, v3}, Lcom/inmobi/ads/bn;->a(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 413
    const-string v3, "Tracking"

    invoke-static {v1, v3}, Lcom/inmobi/ads/bn;->b(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 414
    invoke-direct {p0, v1}, Lcom/inmobi/ads/bn;->a(Ljava/util/List;)V

    .line 415
    iget-object v1, p0, Lcom/inmobi/ads/bn;->f:Lcom/inmobi/ads/bp;

    invoke-static {v5, v1}, Lcom/inmobi/ads/r;->a(Lorg/w3c/dom/Document;Lcom/inmobi/ads/bp;)V

    .line 416
    iget-object v1, p0, Lcom/inmobi/ads/bn;->f:Lcom/inmobi/ads/bp;

    invoke-static {v5, v1}, Lcom/inmobi/ads/ab;->a(Lorg/w3c/dom/Document;Lcom/inmobi/ads/bp;)V

    .line 418
    const-string v1, "MediaFile"

    invoke-static {v0, v1}, Lcom/inmobi/ads/bn;->b(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 420
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 421
    const/16 v0, 0x191

    invoke-direct {p0, v0}, Lcom/inmobi/ads/bn;->a(I)V

    .line 422
    iget-object v0, p0, Lcom/inmobi/ads/bn;->f:Lcom/inmobi/ads/bp;

    goto/16 :goto_0

    :cond_13
    move v3, v2

    .line 425
    :goto_3
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_16

    .line 426
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 427
    invoke-static {v0}, Lcom/inmobi/ads/bn;->a(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v8

    .line 428
    if-eqz v8, :cond_14

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_14

    .line 432
    const-string v1, "delivery"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 433
    const-string v1, "type"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 434
    const-string v1, "bitrate"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/ads/bn;->c(Ljava/lang/String;)I

    move-result v11

    .line 436
    if-lez v11, :cond_14

    if-eqz v9, :cond_14

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Progressive"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 439
    iget-object v0, p0, Lcom/inmobi/ads/bn;->b:Lcom/inmobi/ads/b$g;

    .line 5807
    iget-object v12, v0, Lcom/inmobi/ads/b$g;->d:Ljava/util/ArrayList;

    .line 440
    if-eqz v10, :cond_14

    move v1, v2

    .line 441
    :goto_4
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_14

    .line 442
    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 443
    iget-object v0, p0, Lcom/inmobi/ads/bn;->f:Lcom/inmobi/ads/bp;

    new-instance v1, Lcom/inmobi/ads/bo;

    invoke-direct {v1, v8, v9, v10, v11}, Lcom/inmobi/ads/bo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 6162
    iget-object v0, v0, Lcom/inmobi/ads/bp;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 425
    :cond_14
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_3

    .line 441
    :cond_15
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    .line 449
    :cond_16
    iget-object v0, p0, Lcom/inmobi/ads/bn;->f:Lcom/inmobi/ads/bp;

    .line 7136
    iget-object v0, v0, Lcom/inmobi/ads/bp;->a:Ljava/util/List;

    .line 449
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 450
    const/16 v0, 0x193

    invoke-direct {p0, v0}, Lcom/inmobi/ads/bn;->a(I)V

    .line 453
    :cond_17
    const-string v0, "Creative"

    invoke-static {v6, v0}, Lcom/inmobi/ads/bn;->b(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 454
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 456
    invoke-direct {p0, v13}, Lcom/inmobi/ads/bn;->a(I)V

    .line 457
    iget-object v0, p0, Lcom/inmobi/ads/bn;->f:Lcom/inmobi/ads/bp;

    goto/16 :goto_0

    .line 460
    :cond_18
    const-string v1, "CompanionAds"

    invoke-static {v0, v1}, Lcom/inmobi/ads/bn;->a(Ljava/util/List;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 461
    if-nez v3, :cond_19

    .line 463
    iget-object v0, p0, Lcom/inmobi/ads/bn;->f:Lcom/inmobi/ads/bp;

    goto/16 :goto_0

    .line 467
    :cond_19
    const-string v0, "CompanionAdTracking"

    invoke-static {v5, v0}, Lcom/inmobi/ads/bn;->a(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 468
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 469
    if-eqz v0, :cond_1e

    .line 470
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Node;

    .line 471
    const-string v1, "TrackingEvents"

    invoke-static {v0, v1}, Lcom/inmobi/ads/bn;->a(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 474
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    .line 475
    if-eqz v0, :cond_1c

    invoke-interface {v0}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v7

    if-lez v7, :cond_1c

    const-string v7, "id"

    .line 476
    invoke-interface {v0, v7}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 477
    :goto_5
    if-eqz v0, :cond_1a

    .line 478
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v7

    .line 480
    const-string v0, "Tracking"

    invoke-static {v1, v0}, Lcom/inmobi/ads/bn;->b(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 482
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1b
    :goto_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Node;

    move-object v1, v0

    .line 483
    check-cast v1, Lorg/w3c/dom/Element;

    const-string v9, "event"

    invoke-interface {v1, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 485
    const-string v9, "closeEndCard"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 486
    invoke-static {v0}, Lcom/inmobi/ads/bn;->a(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    .line 487
    invoke-static {v0}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 488
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v9, "Malformed URL: "

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; Discarding this tracker"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_1c
    move-object v0, v4

    .line 476
    goto :goto_5

    .line 492
    :cond_1d
    new-instance v1, Lcom/inmobi/ads/NativeTracker;

    sget-object v9, Lcom/inmobi/ads/NativeTracker$TrackerEventType;->TRACKER_EVENT_TYPE_END_CARD_CLOSE:Lcom/inmobi/ads/NativeTracker$TrackerEventType;

    invoke-direct {v1, v0, v2, v9, v4}, Lcom/inmobi/ads/NativeTracker;-><init>(Ljava/lang/String;ILcom/inmobi/ads/NativeTracker$TrackerEventType;Ljava/util/Map;)V

    .line 494
    invoke-interface {v6, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 502
    :cond_1e
    const-string v0, "Companion"

    invoke-static {v3, v0}, Lcom/inmobi/ads/bn;->b(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    move v3, v2

    .line 503
    :goto_7
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_29

    .line 504
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 505
    const-string v1, "width"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inmobi/ads/bn;->c(Ljava/lang/String;)I

    move-result v8

    .line 506
    const-string v1, "height"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inmobi/ads/bn;->c(Ljava/lang/String;)I

    move-result v9

    .line 507
    if-eqz v8, :cond_28

    if-eqz v9, :cond_28

    .line 510
    const-string v1, "CompanionClickThrough"

    invoke-static {v0, v1}, Lcom/inmobi/ads/bn;->c(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 512
    invoke-static {v1}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1f

    move-object v1, v4

    .line 516
    :cond_1f
    const-string v5, "id"

    invoke-interface {v0, v5}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_24

    const-string v5, "id"

    invoke-interface {v0, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 517
    :goto_8
    new-instance v10, Lcom/inmobi/ads/bm;

    invoke-direct {v10, v8, v9, v1, v5}, Lcom/inmobi/ads/bm;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 520
    const-string v1, "StaticResource"

    invoke-static {v0, v1}, Lcom/inmobi/ads/bn;->a(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 521
    if-eqz v1, :cond_20

    .line 522
    invoke-static {v1}, Lcom/inmobi/ads/bn;->a(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v8

    .line 523
    check-cast v1, Lorg/w3c/dom/Element;

    const-string v9, "creativeType"

    invoke-interface {v1, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 524
    if-eqz v1, :cond_20

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_20

    invoke-static {v1}, Lcom/inmobi/ads/bn;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 525
    new-instance v1, Lcom/inmobi/ads/bm$a;

    const/4 v9, 0x1

    invoke-direct {v1, v9, v8}, Lcom/inmobi/ads/bm$a;-><init>(ILjava/lang/String;)V

    .line 526
    invoke-virtual {v10, v1}, Lcom/inmobi/ads/bm;->a(Lcom/inmobi/ads/bm$a;)V

    .line 530
    :cond_20
    const-string v1, "HTMLResource"

    invoke-static {v0, v1}, Lcom/inmobi/ads/bn;->a(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 531
    if-eqz v1, :cond_21

    .line 532
    invoke-static {v1}, Lcom/inmobi/ads/bn;->a(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    .line 533
    new-instance v8, Lcom/inmobi/ads/bm$a;

    const/4 v9, 0x2

    invoke-direct {v8, v9, v1}, Lcom/inmobi/ads/bm$a;-><init>(ILjava/lang/String;)V

    .line 534
    invoke-virtual {v10, v8}, Lcom/inmobi/ads/bm;->a(Lcom/inmobi/ads/bm$a;)V

    .line 537
    :cond_21
    const-string v1, "IFrameResource"

    invoke-static {v0, v1}, Lcom/inmobi/ads/bn;->a(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 538
    if-eqz v1, :cond_22

    .line 539
    invoke-static {v1}, Lcom/inmobi/ads/bn;->a(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    .line 540
    new-instance v8, Lcom/inmobi/ads/bm$a;

    const/4 v9, 0x3

    invoke-direct {v8, v9, v1}, Lcom/inmobi/ads/bm$a;-><init>(ILjava/lang/String;)V

    .line 541
    invoke-virtual {v10, v8}, Lcom/inmobi/ads/bm;->a(Lcom/inmobi/ads/bm$a;)V

    .line 544
    :cond_22
    const-string v1, "CompanionClickTracking"

    invoke-static {v0, v1}, Lcom/inmobi/ads/bn;->b(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 545
    invoke-static {v1, v10}, Lcom/inmobi/ads/bn;->a(Ljava/util/List;Lcom/inmobi/ads/bm;)V

    .line 548
    const-string v1, "TrackingEvents"

    invoke-static {v0, v1}, Lcom/inmobi/ads/bn;->a(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 549
    const-string v1, "Tracking"

    invoke-static {v0, v1}, Lcom/inmobi/ads/bn;->b(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 550
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_23
    :goto_9
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Node;

    move-object v1, v0

    .line 551
    check-cast v1, Lorg/w3c/dom/Element;

    const-string v9, "event"

    invoke-interface {v1, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 553
    sget-object v9, Lcom/inmobi/ads/bn;->d:Ljava/util/Map;

    invoke-interface {v9, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_23

    .line 554
    invoke-static {v0}, Lcom/inmobi/ads/bn;->a(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v9

    .line 555
    invoke-static {v9}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 556
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Malformed URL: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; Discarding this tracker"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    :cond_24
    move-object v5, v4

    .line 516
    goto/16 :goto_8

    .line 559
    :cond_25
    new-instance v11, Lcom/inmobi/ads/NativeTracker;

    sget-object v0, Lcom/inmobi/ads/bn;->d:Ljava/util/Map;

    .line 560
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/NativeTracker$TrackerEventType;

    invoke-direct {v11, v9, v2, v0, v4}, Lcom/inmobi/ads/NativeTracker;-><init>(Ljava/lang/String;ILcom/inmobi/ads/NativeTracker$TrackerEventType;Ljava/util/Map;)V

    .line 561
    invoke-virtual {v10, v11}, Lcom/inmobi/ads/bm;->a(Lcom/inmobi/ads/NativeTracker;)V

    goto :goto_9

    .line 566
    :cond_26
    if-eqz v5, :cond_27

    invoke-interface {v6, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 567
    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/NativeTracker;

    invoke-virtual {v10, v0}, Lcom/inmobi/ads/bm;->a(Lcom/inmobi/ads/NativeTracker;)V

    .line 570
    :cond_27
    iget-object v0, p0, Lcom/inmobi/ads/bn;->f:Lcom/inmobi/ads/bp;

    .line 7170
    iget-object v0, v0, Lcom/inmobi/ads/bp;->e:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 503
    :cond_28
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_7

    .line 573
    :cond_29
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8

    iget-object v0, p0, Lcom/inmobi/ads/bn;->f:Lcom/inmobi/ads/bp;

    .line 8144
    iget-object v0, v0, Lcom/inmobi/ads/bp;->e:Ljava/util/List;

    .line 573
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_8

    .line 574
    const/16 v0, 0x258

    invoke-direct {p0, v0}, Lcom/inmobi/ads/bn;->a(I)V

    goto/16 :goto_2

    .line 281
    :catch_1
    move-exception v0

    goto/16 :goto_1

    :catch_2
    move-exception v0

    goto/16 :goto_1

    :catch_3
    move-exception v0

    goto/16 :goto_1
.end method
