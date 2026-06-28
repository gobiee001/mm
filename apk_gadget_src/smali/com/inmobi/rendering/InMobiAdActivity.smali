.class public Lcom/inmobi/rendering/InMobiAdActivity;
.super Landroid/app/Activity;
.source "InMobiAdActivity.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ClickableViewAccessibility"
    }
.end annotation

.annotation build Landroid/annotation/TargetApi;
    value = 0xf
.end annotation

.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/rendering/InMobiAdActivity$b;,
        Lcom/inmobi/rendering/InMobiAdActivity$a;
    }
.end annotation


# static fields
.field public static b:Ljava/util/Map;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/inmobi/rendering/InMobiAdActivity$a;",
            ">;"
        }
    .end annotation
.end field

.field public static c:Ljava/util/Map;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field public static d:Ljava/lang/Integer;

.field public static e:Ljava/util/Map;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/inmobi/rendering/InMobiAdActivity$b;",
            ">;"
        }
    .end annotation
.end field

.field public static f:Ljava/lang/Integer;

.field private static final g:Ljava/lang/String;

.field private static h:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/inmobi/ads/AdContainer;",
            ">;"
        }
    .end annotation
.end field

.field private static i:Lcom/inmobi/rendering/RenderView;


# instance fields
.field public a:Z

.field private j:Lcom/inmobi/ads/AdContainer;

.field private k:Lcom/inmobi/rendering/RenderView;

.field private l:Lcom/inmobi/rendering/CustomView;

.field private m:Lcom/inmobi/rendering/CustomView;

.field private n:Lcom/inmobi/ads/NativeVideoView;

.field private o:I

.field private p:I

.field private q:Z

.field private r:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 76
    const-class v0, Lcom/inmobi/rendering/InMobiAdActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/rendering/InMobiAdActivity;->g:Ljava/lang/String;

    .line 79
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/inmobi/rendering/InMobiAdActivity;->h:Landroid/util/SparseArray;

    .line 110
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/inmobi/rendering/InMobiAdActivity;->b:Ljava/util/Map;

    .line 112
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/inmobi/rendering/InMobiAdActivity;->c:Ljava/util/Map;

    .line 113
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/inmobi/rendering/InMobiAdActivity;->d:Ljava/lang/Integer;

    .line 115
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/inmobi/rendering/InMobiAdActivity;->e:Ljava/util/Map;

    .line 116
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/inmobi/rendering/InMobiAdActivity;->f:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 74
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 89
    iput-boolean v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->a:Z

    .line 90
    iput-boolean v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->q:Z

    .line 91
    iput-boolean v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->r:Z

    return-void
.end method

.method public static a(Landroid/content/Intent;Lcom/inmobi/rendering/InMobiAdActivity$a;)I
    .locals 2

    .prologue
    .line 135
    sget-object v0, Lcom/inmobi/rendering/InMobiAdActivity;->d:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/inmobi/rendering/InMobiAdActivity;->d:Ljava/lang/Integer;

    .line 136
    sget-object v0, Lcom/inmobi/rendering/InMobiAdActivity;->b:Ljava/util/Map;

    sget-object v1, Lcom/inmobi/rendering/InMobiAdActivity;->d:Ljava/lang/Integer;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v0, Lcom/inmobi/rendering/InMobiAdActivity;->c:Ljava/util/Map;

    sget-object v1, Lcom/inmobi/rendering/InMobiAdActivity;->d:Ljava/lang/Integer;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v0, Lcom/inmobi/rendering/InMobiAdActivity;->d:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static a(Lcom/inmobi/ads/AdContainer;)I
    .locals 2

    .prologue
    .line 119
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 120
    sget-object v1, Lcom/inmobi/rendering/InMobiAdActivity;->h:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 121
    return v0
.end method

.method static synthetic a(Lcom/inmobi/rendering/InMobiAdActivity;)Lcom/inmobi/ads/AdContainer;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->j:Lcom/inmobi/ads/AdContainer;

    return-object v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/inmobi/rendering/InMobiAdActivity;->g:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Lcom/inmobi/rendering/RenderView;)V
    .locals 0

    .prologue
    .line 131
    sput-object p0, Lcom/inmobi/rendering/InMobiAdActivity;->i:Lcom/inmobi/rendering/RenderView;

    .line 132
    return-void
.end method

.method public static a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 127
    sget-object v0, Lcom/inmobi/rendering/InMobiAdActivity;->h:Landroid/util/SparseArray;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 128
    return-void
.end method

.method public static a([Ljava/lang/String;Lcom/inmobi/rendering/InMobiAdActivity$b;)V
    .locals 4

    .prologue
    .line 143
    :try_start_0
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 1164
    :cond_1
    sget-object v0, Lcom/inmobi/rendering/InMobiAdActivity;->f:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/inmobi/rendering/InMobiAdActivity;->f:Ljava/lang/Integer;

    .line 1165
    sget-object v0, Lcom/inmobi/rendering/InMobiAdActivity;->e:Ljava/util/Map;

    sget-object v1, Lcom/inmobi/rendering/InMobiAdActivity;->f:Ljava/lang/Integer;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1166
    sget-object v0, Lcom/inmobi/rendering/InMobiAdActivity;->f:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1156
    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/inmobi/commons/a/a;->b()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/inmobi/rendering/InMobiAdActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1157
    const-string v2, "com.inmobi.rendering.InMobiAdActivity.EXTRA_AD_ACTIVITY_TYPE"

    const/16 v3, 0x68

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1158
    const-string v2, "id"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1159
    const-string v0, "permissions"

    invoke-virtual {v1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    invoke-static {}, Lcom/inmobi/commons/a/a;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/inmobi/commons/a/a;->a(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 148
    :catch_0
    move-exception v0

    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SDK encountered unexpected error while requesting permissions; "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 150
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method static synthetic b(Lcom/inmobi/rendering/InMobiAdActivity;)Lcom/inmobi/ads/NativeVideoView;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->n:Lcom/inmobi/ads/NativeVideoView;

    return-object v0
.end method

.method static synthetic c(Lcom/inmobi/rendering/InMobiAdActivity;)Z
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->a:Z

    return v0
.end method

.method static synthetic d(Lcom/inmobi/rendering/InMobiAdActivity;)Lcom/inmobi/rendering/RenderView;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->k:Lcom/inmobi/rendering/RenderView;

    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    .line 836
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 837
    sget-object v0, Lcom/inmobi/rendering/InMobiAdActivity;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/rendering/InMobiAdActivity$a;

    .line 838
    if-eqz v0, :cond_0

    .line 839
    sget-object v1, Lcom/inmobi/rendering/InMobiAdActivity;->c:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 840
    invoke-interface {v0}, Lcom/inmobi/rendering/InMobiAdActivity$a;->a()V

    .line 841
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->a:Z

    .line 842
    invoke-virtual {p0}, Lcom/inmobi/rendering/InMobiAdActivity;->finish()V

    .line 844
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 882
    iget v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->o:I

    const/16 v3, 0x66

    if-ne v0, v3, :cond_a

    .line 883
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->j:Lcom/inmobi/ads/AdContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->j:Lcom/inmobi/ads/AdContainer;

    invoke-interface {v0}, Lcom/inmobi/ads/AdContainer;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 948
    :cond_0
    :goto_0
    return-void

    .line 884
    :cond_1
    const/16 v0, 0xc8

    iget v3, p0, Lcom/inmobi/rendering/InMobiAdActivity;->p:I

    if-ne v0, v3, :cond_4

    .line 885
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->j:Lcom/inmobi/ads/AdContainer;

    check-cast v0, Lcom/inmobi/rendering/RenderView;

    .line 886
    if-eqz v0, :cond_0

    .line 13968
    iget-object v3, v0, Lcom/inmobi/rendering/RenderView;->r:Ljava/lang/String;

    if-eqz v3, :cond_2

    move v1, v2

    .line 12972
    :cond_2
    if-eqz v1, :cond_3

    .line 12974
    iget-object v1, v0, Lcom/inmobi/rendering/RenderView;->r:Ljava/lang/String;

    const-string v3, "broadcastEvent(\'backButtonPressed\')"

    invoke-virtual {v0, v1, v3}, Lcom/inmobi/rendering/RenderView;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 14956
    :cond_3
    iget-boolean v1, v0, Lcom/inmobi/rendering/RenderView;->q:Z

    .line 888
    if-nez v1, :cond_0

    .line 891
    iput-boolean v2, p0, Lcom/inmobi/rendering/InMobiAdActivity;->a:Z

    .line 893
    :try_start_0
    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderView;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 894
    :catch_0
    move-exception v0

    .line 895
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Encountered unexpected error in processing close request: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 896
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 897
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->DEBUG:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    const-string v1, "InMobi"

    const-string v2, "SDK encountered unexpected error in processing close request"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 902
    :cond_4
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->j:Lcom/inmobi/ads/AdContainer;

    instance-of v0, v0, Lcom/inmobi/ads/ay;

    if-eqz v0, :cond_8

    .line 903
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->j:Lcom/inmobi/ads/AdContainer;

    check-cast v0, Lcom/inmobi/ads/ay;

    .line 904
    if-eqz v0, :cond_0

    .line 905
    invoke-virtual {v0}, Lcom/inmobi/ads/ay;->h()Lcom/inmobi/ads/ai;

    move-result-object v1

    .line 15314
    iget-boolean v1, v1, Lcom/inmobi/ads/ai;->b:Z

    .line 905
    if-nez v1, :cond_0

    .line 908
    iput-boolean v2, p0, Lcom/inmobi/rendering/InMobiAdActivity;->a:Z

    .line 909
    iget-object v1, p0, Lcom/inmobi/rendering/InMobiAdActivity;->n:Lcom/inmobi/ads/NativeVideoView;

    if-eqz v1, :cond_7

    .line 910
    iget-object v1, p0, Lcom/inmobi/rendering/InMobiAdActivity;->n:Lcom/inmobi/ads/NativeVideoView;

    invoke-virtual {v1}, Lcom/inmobi/ads/NativeVideoView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/ads/az;

    .line 911
    if-eqz v1, :cond_0

    .line 912
    sget-object v2, Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;->PLACEMENT_TYPE_FULLSCREEN:Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    .line 15363
    iget-object v3, v0, Lcom/inmobi/ads/ac;->b:Lcom/inmobi/ads/AdContainer$RenderingProperties;

    .line 16070
    iget-object v3, v3, Lcom/inmobi/ads/AdContainer$RenderingProperties;->a:Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    .line 912
    if-ne v2, v3, :cond_5

    .line 913
    iget-object v2, p0, Lcom/inmobi/rendering/InMobiAdActivity;->n:Lcom/inmobi/ads/NativeVideoView;

    invoke-virtual {v2}, Lcom/inmobi/ads/NativeVideoView;->a()V

    .line 916
    :cond_5
    :try_start_1
    invoke-virtual {v1}, Lcom/inmobi/ads/az;->v()Ljava/util/Map;

    move-result-object v2

    const-string v3, "isFullScreen"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 917
    invoke-virtual {v1}, Lcom/inmobi/ads/az;->v()Ljava/util/Map;

    move-result-object v2

    const-string v3, "seekPosition"

    iget-object v4, p0, Lcom/inmobi/rendering/InMobiAdActivity;->n:Lcom/inmobi/ads/NativeVideoView;

    invoke-virtual {v4}, Lcom/inmobi/ads/NativeVideoView;->getCurrentPosition()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17532
    iget-boolean v2, v0, Lcom/inmobi/ads/ac;->i:Z

    .line 16599
    if-nez v2, :cond_0

    .line 16600
    invoke-virtual {v1}, Lcom/inmobi/ads/az;->v()Ljava/util/Map;

    move-result-object v2

    const-string v3, "didRequestFullScreen"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 16601
    invoke-virtual {v1}, Lcom/inmobi/ads/az;->v()Ljava/util/Map;

    move-result-object v2

    const-string v3, "didRequestFullScreen"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18275
    iget-object v2, v1, Lcom/inmobi/ads/NativeAsset;->y:Lcom/inmobi/ads/NativeAsset;

    .line 16603
    if-eqz v2, :cond_6

    .line 19275
    iget-object v2, v1, Lcom/inmobi/ads/NativeAsset;->y:Lcom/inmobi/ads/NativeAsset;

    .line 16604
    invoke-virtual {v2}, Lcom/inmobi/ads/NativeAsset;->v()Ljava/util/Map;

    move-result-object v2

    const-string v3, "didRequestFullScreen"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16606
    :cond_6
    invoke-virtual {v0}, Lcom/inmobi/ads/ay;->b()V

    .line 16607
    invoke-virtual {v1}, Lcom/inmobi/ads/az;->v()Ljava/util/Map;

    move-result-object v0

    const-string v1, "isFullScreen"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 920
    :catch_1
    move-exception v0

    .line 921
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Encountered unexpected error in onVideoClosed handler: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 922
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 923
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->DEBUG:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    const-string v2, "InMobi"

    const-string v3, "SDK encountered unexpected error in closing video"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 925
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto/16 :goto_0

    .line 929
    :cond_7
    invoke-virtual {p0}, Lcom/inmobi/rendering/InMobiAdActivity;->finish()V

    goto/16 :goto_0

    .line 932
    :cond_8
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->j:Lcom/inmobi/ads/AdContainer;

    instance-of v0, v0, Lcom/inmobi/ads/ac;

    if-eqz v0, :cond_0

    .line 933
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->j:Lcom/inmobi/ads/AdContainer;

    check-cast v0, Lcom/inmobi/ads/ac;

    .line 934
    if-eqz v0, :cond_9

    .line 935
    invoke-virtual {v0}, Lcom/inmobi/ads/ac;->h()Lcom/inmobi/ads/ai;

    move-result-object v1

    .line 19314
    iget-boolean v1, v1, Lcom/inmobi/ads/ai;->b:Z

    .line 935
    if-nez v1, :cond_0

    .line 938
    invoke-virtual {v0}, Lcom/inmobi/ads/ac;->b()V

    goto/16 :goto_0

    .line 940
    :cond_9
    invoke-virtual {p0}, Lcom/inmobi/rendering/InMobiAdActivity;->finish()V

    goto/16 :goto_0

    .line 944
    :cond_a
    iget v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->o:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    .line 945
    iput-boolean v2, p0, Lcom/inmobi/rendering/InMobiAdActivity;->a:Z

    .line 946
    invoke-virtual {p0}, Lcom/inmobi/rendering/InMobiAdActivity;->finish()V

    goto/16 :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .prologue
    .line 571
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 573
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->k:Lcom/inmobi/rendering/RenderView;

    if-eqz v0, :cond_0

    .line 574
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->k:Lcom/inmobi/rendering/RenderView;

    .line 12087
    iget-object v1, v0, Lcom/inmobi/rendering/RenderView;->d:Lcom/inmobi/rendering/RenderView$RenderViewState;

    sget-object v2, Lcom/inmobi/rendering/RenderView$RenderViewState;->RESIZED:Lcom/inmobi/rendering/RenderView$RenderViewState;

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderView;->getResizeProperties()Lcom/inmobi/rendering/mraid/h;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 12088
    iget-object v0, v0, Lcom/inmobi/rendering/RenderView;->g:Lcom/inmobi/rendering/mraid/f;

    invoke-virtual {v0}, Lcom/inmobi/rendering/mraid/f;->a()V

    .line 576
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    const/high16 v8, 0x42480000    # 50.0f

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v6, -0x1

    const-string v0, "InMobiAdActivity"

    invoke-static {v0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->startTracing(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "InMobiAdActivity#onCreate"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 321
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 322
    invoke-virtual {p0}, Lcom/inmobi/rendering/InMobiAdActivity;->finish()V

    .line 323
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->DEBUG:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    const-string v1, "InMobi"

    const-string v2, "Session not found, AdActivity will be closed"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    .line 5826
    :goto_1
    return-void

    .line 4294967295
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "InMobiAdActivity#onCreate"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 327
    :cond_0
    iput-boolean v7, p0, Lcom/inmobi/rendering/InMobiAdActivity;->q:Z

    .line 328
    invoke-virtual {p0}, Lcom/inmobi/rendering/InMobiAdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.inmobi.rendering.InMobiAdActivity.EXTRA_AD_ACTIVITY_TYPE"

    const/16 v2, 0x66

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->o:I

    .line 329
    iget v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->o:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_3

    .line 330
    invoke-virtual {p0}, Lcom/inmobi/rendering/InMobiAdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.inmobi.rendering.InMobiAdActivity.IN_APP_BROWSER_URL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 332
    new-instance v0, Lcom/inmobi/rendering/RenderView;

    new-instance v1, Lcom/inmobi/ads/AdContainer$RenderingProperties;

    sget-object v3, Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;->PLACEMENT_TYPE_FULLSCREEN:Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    invoke-direct {v1, v3}, Lcom/inmobi/ads/AdContainer$RenderingProperties;-><init>(Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;)V

    invoke-direct {v0, p0, v1, v4, v4}, Lcom/inmobi/rendering/RenderView;-><init>(Landroid/content/Context;Lcom/inmobi/ads/AdContainer$RenderingProperties;Ljava/util/Set;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->k:Lcom/inmobi/rendering/RenderView;

    .line 335
    sget-object v0, Lcom/inmobi/rendering/InMobiAdActivity;->i:Lcom/inmobi/rendering/RenderView;

    if-nez v0, :cond_1

    sget-object v0, Lcom/inmobi/rendering/RenderView;->a:Lcom/inmobi/rendering/RenderView$a;

    .line 338
    :goto_2
    sget-object v1, Lcom/inmobi/rendering/InMobiAdActivity;->i:Lcom/inmobi/rendering/RenderView;

    if-nez v1, :cond_2

    new-instance v1, Lcom/inmobi/ads/b;

    invoke-direct {v1}, Lcom/inmobi/ads/b;-><init>()V

    .line 340
    :goto_3
    iget-object v3, p0, Lcom/inmobi/rendering/InMobiAdActivity;->k:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v3, v5}, Lcom/inmobi/rendering/RenderView;->setIsInAppBrowser(Z)V

    .line 341
    iget-object v3, p0, Lcom/inmobi/rendering/InMobiAdActivity;->k:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v3, v0, v1}, Lcom/inmobi/rendering/RenderView;->a(Lcom/inmobi/rendering/RenderView$a;Lcom/inmobi/ads/b;)V

    .line 4579
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 4580
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 4584
    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 4585
    const/4 v3, 0x2

    const v4, 0xfffd

    invoke-virtual {v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 4586
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 4587
    iget-object v3, p0, Lcom/inmobi/rendering/InMobiAdActivity;->k:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v0, v3, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4595
    invoke-static {}, Lcom/inmobi/commons/core/utilities/b/c;->a()Lcom/inmobi/commons/core/utilities/b/d;

    move-result-object v1

    .line 5023
    iget v1, v1, Lcom/inmobi/commons/core/utilities/b/d;->c:F

    .line 4598
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 4599
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v5, 0x42400000    # 48.0f

    mul-float/2addr v5, v1

    float-to-int v5, v5

    invoke-direct {v4, v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 4602
    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 4604
    const v5, 0xfffd

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setId(I)V

    .line 4605
    const/high16 v5, 0x42c80000    # 100.0f

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    .line 4606
    const v5, 0x108009a

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 4607
    const v5, -0x777778

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 4608
    const/16 v5, 0xc

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 4609
    invoke-virtual {v0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4611
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 4614
    const/high16 v5, 0x41c80000    # 25.0f

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 4617
    new-instance v5, Lcom/inmobi/rendering/CustomView;

    const/4 v6, 0x2

    invoke-direct {v5, p0, v1, v6}, Lcom/inmobi/rendering/CustomView;-><init>(Landroid/content/Context;FI)V

    .line 4619
    new-instance v6, Lcom/inmobi/rendering/InMobiAdActivity$2;

    invoke-direct {v6, p0}, Lcom/inmobi/rendering/InMobiAdActivity$2;-><init>(Lcom/inmobi/rendering/InMobiAdActivity;)V

    invoke-virtual {v5, v6}, Lcom/inmobi/rendering/CustomView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 4634
    invoke-virtual {v3, v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4637
    new-instance v5, Lcom/inmobi/rendering/CustomView;

    const/4 v6, 0x3

    invoke-direct {v5, p0, v1, v6}, Lcom/inmobi/rendering/CustomView;-><init>(Landroid/content/Context;FI)V

    .line 4639
    new-instance v6, Lcom/inmobi/rendering/InMobiAdActivity$3;

    invoke-direct {v6, p0}, Lcom/inmobi/rendering/InMobiAdActivity$3;-><init>(Lcom/inmobi/rendering/InMobiAdActivity;)V

    invoke-virtual {v5, v6}, Lcom/inmobi/rendering/CustomView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 4653
    invoke-virtual {v3, v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4656
    new-instance v5, Lcom/inmobi/rendering/CustomView;

    const/4 v6, 0x4

    invoke-direct {v5, p0, v1, v6}, Lcom/inmobi/rendering/CustomView;-><init>(Landroid/content/Context;FI)V

    .line 4658
    new-instance v6, Lcom/inmobi/rendering/InMobiAdActivity$4;

    invoke-direct {v6, p0}, Lcom/inmobi/rendering/InMobiAdActivity$4;-><init>(Lcom/inmobi/rendering/InMobiAdActivity;)V

    invoke-virtual {v5, v6}, Lcom/inmobi/rendering/CustomView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 4677
    invoke-virtual {v3, v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4680
    new-instance v5, Lcom/inmobi/rendering/CustomView;

    const/4 v6, 0x6

    invoke-direct {v5, p0, v1, v6}, Lcom/inmobi/rendering/CustomView;-><init>(Landroid/content/Context;FI)V

    .line 4682
    new-instance v1, Lcom/inmobi/rendering/InMobiAdActivity$5;

    invoke-direct {v1, p0}, Lcom/inmobi/rendering/InMobiAdActivity$5;-><init>(Lcom/inmobi/rendering/InMobiAdActivity;)V

    invoke-virtual {v5, v1}, Lcom/inmobi/rendering/CustomView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 4698
    invoke-virtual {v3, v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4590
    invoke-virtual {p0, v0}, Lcom/inmobi/rendering/InMobiAdActivity;->setContentView(Landroid/view/View;)V

    .line 343
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->k:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v0, v2}, Lcom/inmobi/rendering/RenderView;->loadUrl(Ljava/lang/String;)V

    .line 344
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->k:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v0, p0}, Lcom/inmobi/rendering/RenderView;->setFullScreenActivityContext(Landroid/app/Activity;)V

    .line 345
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    goto/16 :goto_1

    .line 335
    :cond_1
    sget-object v0, Lcom/inmobi/rendering/InMobiAdActivity;->i:Lcom/inmobi/rendering/RenderView;

    .line 337
    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderView;->getListener()Lcom/inmobi/rendering/RenderView$a;

    move-result-object v0

    goto/16 :goto_2

    .line 338
    :cond_2
    sget-object v1, Lcom/inmobi/rendering/InMobiAdActivity;->i:Lcom/inmobi/rendering/RenderView;

    .line 339
    invoke-virtual {v1}, Lcom/inmobi/rendering/RenderView;->getAdConfig()Lcom/inmobi/ads/b;

    move-result-object v1

    goto/16 :goto_3

    .line 345
    :cond_3
    iget v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->o:I

    const/16 v1, 0x66

    if-ne v0, v1, :cond_16

    .line 346
    invoke-virtual {p0}, Lcom/inmobi/rendering/InMobiAdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.inmobi.rendering.InMobiAdActivity.EXTRA_AD_CONTAINER_INDEX"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 347
    invoke-virtual {p0}, Lcom/inmobi/rendering/InMobiAdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.inmobi.rendering.InMobiAdActivity.EXTRA_AD_CONTAINER_INDEX"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 348
    sget-object v1, Lcom/inmobi/rendering/InMobiAdActivity;->h:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/AdContainer;

    iput-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->j:Lcom/inmobi/ads/AdContainer;

    .line 349
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->j:Lcom/inmobi/ads/AdContainer;

    if-nez v0, :cond_4

    .line 352
    invoke-virtual {p0}, Lcom/inmobi/rendering/InMobiAdActivity;->finish()V

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    goto/16 :goto_1

    .line 354
    :cond_4
    invoke-virtual {p0}, Lcom/inmobi/rendering/InMobiAdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.inmobi.rendering.InMobiAdActivity.EXTRA_AD_CONTAINER_TYPE"

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->p:I

    .line 355
    iget v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->p:I

    if-nez v0, :cond_6

    .line 356
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->j:Lcom/inmobi/ads/AdContainer;

    invoke-interface {v0}, Lcom/inmobi/ads/AdContainer;->getFullScreenEventsListener()Lcom/inmobi/ads/AdContainer$a;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 357
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->j:Lcom/inmobi/ads/AdContainer;

    invoke-interface {v0}, Lcom/inmobi/ads/AdContainer;->getFullScreenEventsListener()Lcom/inmobi/ads/AdContainer$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/inmobi/ads/AdContainer$a;->a()V

    .line 359
    :cond_5
    invoke-virtual {p0}, Lcom/inmobi/rendering/InMobiAdActivity;->finish()V

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    goto/16 :goto_1

    .line 361
    :cond_6
    invoke-virtual {p0}, Lcom/inmobi/rendering/InMobiAdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.inmobi.rendering.InMobiAdActivity.EXTRA_AD_ACTIVITY_IS_FULL_SCREEN"

    .line 362
    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 363
    if-eqz v0, :cond_7

    .line 364
    invoke-virtual {p0, v5}, Lcom/inmobi/rendering/InMobiAdActivity;->requestWindowFeature(I)Z

    .line 365
    invoke-virtual {p0}, Lcom/inmobi/rendering/InMobiAdActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    const/16 v2, 0x400

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFlags(II)V

    .line 368
    :cond_7
    const/16 v0, 0xc8

    iget v1, p0, Lcom/inmobi/rendering/InMobiAdActivity;->p:I

    if-ne v0, v1, :cond_8

    sget-object v0, Lcom/inmobi/ads/AdUnit$AdMarkupType;->AD_MARKUP_TYPE_INM_HTML:Lcom/inmobi/ads/AdUnit$AdMarkupType;

    iget-object v1, p0, Lcom/inmobi/rendering/InMobiAdActivity;->j:Lcom/inmobi/ads/AdContainer;

    .line 369
    invoke-interface {v1}, Lcom/inmobi/ads/AdContainer;->getMarkupType()Lcom/inmobi/ads/AdUnit$AdMarkupType;

    move-result-object v1

    if-ne v0, v1, :cond_9

    :cond_8
    const/16 v0, 0xc9

    iget v1, p0, Lcom/inmobi/rendering/InMobiAdActivity;->p:I

    if-ne v0, v1, :cond_b

    sget-object v0, Lcom/inmobi/ads/AdUnit$AdMarkupType;->AD_MARKUP_TYPE_INM_JSON:Lcom/inmobi/ads/AdUnit$AdMarkupType;

    iget-object v1, p0, Lcom/inmobi/rendering/InMobiAdActivity;->j:Lcom/inmobi/ads/AdContainer;

    .line 371
    invoke-interface {v1}, Lcom/inmobi/ads/AdContainer;->getMarkupType()Lcom/inmobi/ads/AdUnit$AdMarkupType;

    move-result-object v1

    if-eq v0, v1, :cond_b

    .line 372
    :cond_9
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->j:Lcom/inmobi/ads/AdContainer;

    invoke-interface {v0}, Lcom/inmobi/ads/AdContainer;->getFullScreenEventsListener()Lcom/inmobi/ads/AdContainer$a;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 373
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->j:Lcom/inmobi/ads/AdContainer;

    invoke-interface {v0}, Lcom/inmobi/ads/AdContainer;->getFullScreenEventsListener()Lcom/inmobi/ads/AdContainer$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/inmobi/ads/AdContainer$a;->a()V

    .line 375
    :cond_a
    invoke-virtual {p0}, Lcom/inmobi/rendering/InMobiAdActivity;->finish()V

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    goto/16 :goto_1

    .line 378
    :cond_b
    :try_start_2
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->j:Lcom/inmobi/ads/AdContainer;

    invoke-interface {v0, p0}, Lcom/inmobi/ads/AdContainer;->setFullScreenActivityContext(Landroid/app/Activity;)V

    .line 5702
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lcom/inmobi/rendering/InMobiAdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 5703
    new-instance v5, Landroid/widget/RelativeLayout;

    invoke-direct {v5, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 5705
    const v1, 0xfffe

    invoke-virtual {v5, v1}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 5708
    invoke-static {}, Lcom/inmobi/commons/core/utilities/b/c;->a()Lcom/inmobi/commons/core/utilities/b/d;

    move-result-object v1

    .line 6023
    iget v1, v1, Lcom/inmobi/commons/core/utilities/b/d;->c:F

    .line 5709
    sget-object v2, Lcom/inmobi/ads/AdUnit$AdMarkupType;->AD_MARKUP_TYPE_INM_HTML:Lcom/inmobi/ads/AdUnit$AdMarkupType;

    iget-object v3, p0, Lcom/inmobi/rendering/InMobiAdActivity;->j:Lcom/inmobi/ads/AdContainer;

    invoke-interface {v3}, Lcom/inmobi/ads/AdContainer;->getMarkupType()Lcom/inmobi/ads/AdUnit$AdMarkupType;

    move-result-object v3

    if-ne v2, v3, :cond_e

    .line 5710
    const/4 v2, 0x0

    invoke-virtual {v5, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 5712
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v6, -0x1

    invoke-direct {v2, v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 5715
    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 5717
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    mul-float v6, v8, v1

    float-to-int v6, v6

    mul-float v7, v8, v1

    float-to-int v7, v7

    invoke-direct {v3, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 5720
    const/16 v6, 0xb

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 5721
    new-instance v6, Lcom/inmobi/rendering/CustomView;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v1, v7}, Lcom/inmobi/rendering/CustomView;-><init>(Landroid/content/Context;FI)V

    iput-object v6, p0, Lcom/inmobi/rendering/InMobiAdActivity;->l:Lcom/inmobi/rendering/CustomView;

    .line 5723
    iget-object v6, p0, Lcom/inmobi/rendering/InMobiAdActivity;->l:Lcom/inmobi/rendering/CustomView;

    const v7, 0xfffc

    invoke-virtual {v6, v7}, Lcom/inmobi/rendering/CustomView;->setId(I)V

    .line 5724
    iget-object v6, p0, Lcom/inmobi/rendering/InMobiAdActivity;->l:Lcom/inmobi/rendering/CustomView;

    new-instance v7, Lcom/inmobi/rendering/InMobiAdActivity$6;

    invoke-direct {v7, p0}, Lcom/inmobi/rendering/InMobiAdActivity$6;-><init>(Lcom/inmobi/rendering/InMobiAdActivity;)V

    invoke-virtual {v6, v7}, Lcom/inmobi/rendering/CustomView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5739
    new-instance v6, Lcom/inmobi/rendering/CustomView;

    const/4 v7, 0x1

    invoke-direct {v6, p0, v1, v7}, Lcom/inmobi/rendering/CustomView;-><init>(Landroid/content/Context;FI)V

    iput-object v6, p0, Lcom/inmobi/rendering/InMobiAdActivity;->m:Lcom/inmobi/rendering/CustomView;

    .line 5741
    iget-object v1, p0, Lcom/inmobi/rendering/InMobiAdActivity;->m:Lcom/inmobi/rendering/CustomView;

    const v6, 0xfffb

    invoke-virtual {v1, v6}, Lcom/inmobi/rendering/CustomView;->setId(I)V

    .line 5742
    iget-object v1, p0, Lcom/inmobi/rendering/InMobiAdActivity;->m:Lcom/inmobi/rendering/CustomView;

    new-instance v6, Lcom/inmobi/rendering/InMobiAdActivity$7;

    invoke-direct {v6, p0}, Lcom/inmobi/rendering/InMobiAdActivity$7;-><init>(Lcom/inmobi/rendering/InMobiAdActivity;)V

    invoke-virtual {v1, v6}, Lcom/inmobi/rendering/CustomView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5757
    iget-object v1, p0, Lcom/inmobi/rendering/InMobiAdActivity;->j:Lcom/inmobi/ads/AdContainer;

    invoke-interface {v1}, Lcom/inmobi/ads/AdContainer;->getViewableAd()Lcom/inmobi/ads/ViewableAd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/ads/ViewableAd;->a()Landroid/view/View;

    move-result-object v6

    .line 5759
    if-eqz v6, :cond_d

    .line 5760
    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 5761
    if-eqz v1, :cond_c

    .line 5762
    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 5765
    :cond_c
    invoke-virtual {v5, v6, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 5766
    iget-object v1, p0, Lcom/inmobi/rendering/InMobiAdActivity;->l:Lcom/inmobi/rendering/CustomView;

    invoke-virtual {v5, v1, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 5767
    iget-object v1, p0, Lcom/inmobi/rendering/InMobiAdActivity;->m:Lcom/inmobi/rendering/CustomView;

    invoke-virtual {v5, v1, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 5771
    iget-object v1, p0, Lcom/inmobi/rendering/InMobiAdActivity;->j:Lcom/inmobi/ads/AdContainer;

    check-cast v1, Lcom/inmobi/rendering/RenderView;

    iget-object v2, p0, Lcom/inmobi/rendering/InMobiAdActivity;->j:Lcom/inmobi/ads/AdContainer;

    check-cast v2, Lcom/inmobi/rendering/RenderView;

    .line 6944
    iget-boolean v2, v2, Lcom/inmobi/rendering/RenderView;->p:Z

    .line 5772
    invoke-virtual {v1, v2}, Lcom/inmobi/rendering/RenderView;->a(Z)V

    .line 5773
    iget-object v1, p0, Lcom/inmobi/rendering/InMobiAdActivity;->j:Lcom/inmobi/ads/AdContainer;

    check-cast v1, Lcom/inmobi/rendering/RenderView;

    iget-object v2, p0, Lcom/inmobi/rendering/InMobiAdActivity;->j:Lcom/inmobi/ads/AdContainer;

    check-cast v2, Lcom/inmobi/rendering/RenderView;

    .line 7936
    iget-boolean v2, v2, Lcom/inmobi/rendering/RenderView;->m:Z

    .line 5774
    invoke-virtual {v1, v2}, Lcom/inmobi/rendering/RenderView;->b(Z)V

    .line 5829
    :cond_d
    :goto_4
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v5, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 387
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    goto/16 :goto_1

    .line 5776
    :cond_e
    :try_start_3
    sget-object v1, Lcom/inmobi/ads/AdUnit$AdMarkupType;->AD_MARKUP_TYPE_INM_JSON:Lcom/inmobi/ads/AdUnit$AdMarkupType;

    iget-object v2, p0, Lcom/inmobi/rendering/InMobiAdActivity;->j:Lcom/inmobi/ads/AdContainer;

    invoke-interface {v2}, Lcom/inmobi/ads/AdContainer;->getMarkupType()Lcom/inmobi/ads/AdUnit$AdMarkupType;

    move-result-object v2

    if-ne v1, v2, :cond_14

    .line 5777
    iget-object v1, p0, Lcom/inmobi/rendering/InMobiAdActivity;->j:Lcom/inmobi/ads/AdContainer;

    invoke-interface {v1}, Lcom/inmobi/ads/AdContainer;->getRenderingProperties()Lcom/inmobi/ads/AdContainer$RenderingProperties;

    move-result-object v1

    .line 8070
    iget-object v6, v1, Lcom/inmobi/ads/AdContainer$RenderingProperties;->a:Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    .line 5778
    const/high16 v1, -0x1000000

    invoke-virtual {v5, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 5779
    iget-object v1, p0, Lcom/inmobi/rendering/InMobiAdActivity;->j:Lcom/inmobi/ads/AdContainer;

    invoke-interface {v1}, Lcom/inmobi/ads/AdContainer;->getDataModel()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/ads/ai;

    .line 8305
    iget-object v2, v1, Lcom/inmobi/ads/ai;->d:Lcom/inmobi/ads/ag;

    .line 5780
    invoke-virtual {v2}, Lcom/inmobi/ads/ag;->b()Lcom/inmobi/ads/af;

    move-result-object v2

    .line 9137
    iget-object v7, v2, Lcom/inmobi/ads/af;->a:Landroid/graphics/Point;

    .line 5781
    new-instance v2, Lcom/inmobi/ads/b;

    invoke-direct {v2}, Lcom/inmobi/ads/b;-><init>()V

    .line 5782
    invoke-static {}, Lcom/inmobi/commons/core/configs/b;->a()Lcom/inmobi/commons/core/configs/b;

    move-result-object v3

    const/4 v8, 0x0

    invoke-virtual {v3, v2, v8}, Lcom/inmobi/commons/core/configs/b;->a(Lcom/inmobi/commons/core/configs/a;Lcom/inmobi/commons/core/configs/b$b;)V

    .line 5783
    iget-object v2, p0, Lcom/inmobi/rendering/InMobiAdActivity;->j:Lcom/inmobi/ads/AdContainer;

    invoke-interface {v2}, Lcom/inmobi/ads/AdContainer;->getViewableAd()Lcom/inmobi/ads/ViewableAd;

    move-result-object v2

    .line 9338
    iget-boolean v1, v1, Lcom/inmobi/ads/ai;->c:Z

    .line 5788
    if-eqz v1, :cond_1b

    .line 5789
    invoke-virtual {v2}, Lcom/inmobi/ads/ViewableAd;->b()Landroid/view/View;

    move-result-object v1

    .line 5791
    :goto_5
    if-nez v1, :cond_1a

    .line 5792
    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v5, v3}, Lcom/inmobi/ads/ViewableAd;->a(Landroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    move-object v3, v1

    .line 5795
    :goto_6
    iget-object v1, p0, Lcom/inmobi/rendering/InMobiAdActivity;->j:Lcom/inmobi/ads/AdContainer;

    instance-of v1, v1, Lcom/inmobi/ads/ay;

    if-eqz v1, :cond_10

    .line 5797
    iget-object v1, p0, Lcom/inmobi/rendering/InMobiAdActivity;->j:Lcom/inmobi/ads/AdContainer;

    .line 5798
    invoke-interface {v1}, Lcom/inmobi/ads/AdContainer;->getVideoContainerView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/inmobi/ads/NativeVideoWrapper;

    .line 5799
    if-eqz v1, :cond_10

    .line 5800
    invoke-virtual {v1}, Lcom/inmobi/ads/NativeVideoWrapper;->getVideoView()Lcom/inmobi/ads/NativeVideoView;

    move-result-object v1

    iput-object v1, p0, Lcom/inmobi/rendering/InMobiAdActivity;->n:Lcom/inmobi/ads/NativeVideoView;

    .line 5801
    iget-object v1, p0, Lcom/inmobi/rendering/InMobiAdActivity;->n:Lcom/inmobi/ads/NativeVideoView;

    invoke-virtual {v1}, Lcom/inmobi/ads/NativeVideoView;->requestFocus()Z

    .line 5802
    iget-object v1, p0, Lcom/inmobi/rendering/InMobiAdActivity;->n:Lcom/inmobi/ads/NativeVideoView;

    invoke-virtual {v1}, Lcom/inmobi/ads/NativeVideoView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/ads/az;

    .line 10275
    iget-object v2, v1, Lcom/inmobi/ads/NativeAsset;->y:Lcom/inmobi/ads/NativeAsset;

    .line 5803
    if-eqz v2, :cond_f

    .line 11275
    iget-object v2, v1, Lcom/inmobi/ads/NativeAsset;->y:Lcom/inmobi/ads/NativeAsset;

    .line 5804
    check-cast v2, Lcom/inmobi/ads/az;

    invoke-virtual {v1, v2}, Lcom/inmobi/ads/az;->a(Lcom/inmobi/ads/az;)V

    .line 5806
    :cond_f
    sget-object v2, Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;->PLACEMENT_TYPE_INLINE:Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    if-ne v2, v6, :cond_13

    .line 5807
    invoke-virtual {v1}, Lcom/inmobi/ads/az;->v()Ljava/util/Map;

    move-result-object v1

    const-string v2, "placementType"

    sget-object v6, Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;->PLACEMENT_TYPE_INLINE:Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    invoke-interface {v1, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5814
    :cond_10
    :goto_7
    if-eqz v3, :cond_11

    .line 5815
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, v7, Landroid/graphics/Point;->x:I

    iget v6, v7, Landroid/graphics/Point;->y:I

    invoke-direct {v1, v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 5816
    invoke-virtual {v5, v3, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 5819
    :cond_11
    iget-object v1, p0, Lcom/inmobi/rendering/InMobiAdActivity;->j:Lcom/inmobi/ads/AdContainer;

    invoke-interface {v1}, Lcom/inmobi/ads/AdContainer;->setRequestedScreenOrientation()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_4

    .line 380
    :catch_1
    move-exception v0

    .line 381
    iget-object v1, p0, Lcom/inmobi/rendering/InMobiAdActivity;->j:Lcom/inmobi/ads/AdContainer;

    invoke-interface {v1, v4}, Lcom/inmobi/ads/AdContainer;->setFullScreenActivityContext(Landroid/app/Activity;)V

    .line 382
    iget-object v1, p0, Lcom/inmobi/rendering/InMobiAdActivity;->j:Lcom/inmobi/ads/AdContainer;

    invoke-interface {v1}, Lcom/inmobi/ads/AdContainer;->getFullScreenEventsListener()Lcom/inmobi/ads/AdContainer$a;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 383
    iget-object v1, p0, Lcom/inmobi/rendering/InMobiAdActivity;->j:Lcom/inmobi/ads/AdContainer;

    invoke-interface {v1}, Lcom/inmobi/ads/AdContainer;->getFullScreenEventsListener()Lcom/inmobi/ads/AdContainer$a;

    move-result-object v1

    invoke-interface {v1}, Lcom/inmobi/ads/AdContainer$a;->a()V

    .line 385
    :cond_12
    invoke-virtual {p0}, Lcom/inmobi/rendering/InMobiAdActivity;->finish()V

    .line 386
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    .line 391
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    goto/16 :goto_1

    .line 5809
    :cond_13
    :try_start_4
    invoke-virtual {v1}, Lcom/inmobi/ads/az;->v()Ljava/util/Map;

    move-result-object v1

    const-string v2, "placementType"

    sget-object v6, Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;->PLACEMENT_TYPE_FULLSCREEN:Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    invoke-interface {v1, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 5822
    :cond_14
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->j:Lcom/inmobi/ads/AdContainer;

    invoke-interface {v0}, Lcom/inmobi/ads/AdContainer;->getFullScreenEventsListener()Lcom/inmobi/ads/AdContainer$a;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 5823
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->j:Lcom/inmobi/ads/AdContainer;

    invoke-interface {v0}, Lcom/inmobi/ads/AdContainer;->getFullScreenEventsListener()Lcom/inmobi/ads/AdContainer$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/inmobi/ads/AdContainer$a;->a()V

    .line 5825
    :cond_15
    invoke-virtual {p0}, Lcom/inmobi/rendering/InMobiAdActivity;->finish()V

    .line 5826
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_1

    .line 392
    :cond_16
    iget v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->o:I

    const/16 v1, 0x67

    if-ne v0, v1, :cond_18

    .line 393
    invoke-virtual {p0}, Lcom/inmobi/rendering/InMobiAdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 394
    if-eq v1, v6, :cond_17

    .line 397
    sget-object v0, Lcom/inmobi/rendering/InMobiAdActivity;->c:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 398
    invoke-virtual {p0, v0, v1}, Lcom/inmobi/rendering/InMobiAdActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 400
    :cond_17
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    goto/16 :goto_1

    :cond_18
    iget v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->o:I

    const/16 v1, 0x68

    if-ne v0, v1, :cond_19

    .line 401
    invoke-virtual {p0}, Lcom/inmobi/rendering/InMobiAdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 402
    if-eq v0, v6, :cond_19

    .line 406
    invoke-virtual {p0}, Lcom/inmobi/rendering/InMobiAdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "permissions"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 407
    if-eqz v1, :cond_19

    array-length v2, v1

    if-lez v2, :cond_19

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_19

    .line 414
    invoke-static {}, Lcom/inmobi/commons/core/utilities/a;->b()V

    .line 415
    invoke-virtual {p0, v1, v0}, Lcom/inmobi/rendering/InMobiAdActivity;->requestPermissions([Ljava/lang/String;I)V

    .line 419
    :cond_19
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    goto/16 :goto_1

    :cond_1a
    move-object v3, v1

    goto/16 :goto_6

    :cond_1b
    move-object v1, v4

    goto/16 :goto_5
.end method

.method protected onDestroy()V
    .locals 6

    .prologue
    const/16 v5, 0xc8

    const/16 v3, 0x66

    const/16 v1, 0x64

    const/16 v2, 0xf

    const/4 v4, 0x0

    .line 439
    iget-boolean v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->a:Z

    if-eqz v0, :cond_5

    .line 440
    iget v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->o:I

    if-ne v1, v0, :cond_2

    .line 441
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->k:Lcom/inmobi/rendering/RenderView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->k:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderView;->getFullScreenEventsListener()Lcom/inmobi/ads/AdContainer$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 443
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->k:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderView;->getFullScreenEventsListener()Lcom/inmobi/ads/AdContainer$a;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/rendering/InMobiAdActivity;->k:Lcom/inmobi/rendering/RenderView;

    invoke-interface {v0, v1}, Lcom/inmobi/ads/AdContainer$a;->b(Ljava/lang/Object;)V

    .line 444
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->k:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderView;->destroy()V

    .line 445
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->k:Lcom/inmobi/rendering/RenderView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    .line 494
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->j:Lcom/inmobi/ads/AdContainer;

    if-eqz v0, :cond_1

    .line 495
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->j:Lcom/inmobi/ads/AdContainer;

    invoke-interface {v0}, Lcom/inmobi/ads/AdContainer;->destroy()V

    .line 496
    iput-object v4, p0, Lcom/inmobi/rendering/InMobiAdActivity;->j:Lcom/inmobi/ads/AdContainer;

    .line 566
    :cond_1
    :goto_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 567
    return-void

    .line 450
    :cond_2
    iget v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->o:I

    if-ne v3, v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->j:Lcom/inmobi/ads/AdContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->j:Lcom/inmobi/ads/AdContainer;

    invoke-interface {v0}, Lcom/inmobi/ads/AdContainer;->getFullScreenEventsListener()Lcom/inmobi/ads/AdContainer$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 452
    iget v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->p:I

    if-ne v5, v0, :cond_3

    .line 454
    :try_start_1
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->j:Lcom/inmobi/ads/AdContainer;

    invoke-interface {v0}, Lcom/inmobi/ads/AdContainer;->getFullScreenEventsListener()Lcom/inmobi/ads/AdContainer$a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/inmobi/ads/AdContainer$a;->b(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 455
    :catch_0
    move-exception v0

    .line 456
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Encountered unexpected error in onAdScreenDismissed handler: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 457
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->DEBUG:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    const-string v1, "InMobi"

    const-string v2, "SDK encountered unexpected error while finishing fullscreen view"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 461
    :cond_3
    const/16 v0, 0xc9

    iget v1, p0, Lcom/inmobi/rendering/InMobiAdActivity;->p:I

    if-ne v0, v1, :cond_0

    .line 462
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_0

    .line 463
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->j:Lcom/inmobi/ads/AdContainer;

    instance-of v0, v0, Lcom/inmobi/ads/ay;

    if-eqz v0, :cond_4

    .line 464
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->j:Lcom/inmobi/ads/AdContainer;

    check-cast v0, Lcom/inmobi/ads/ay;

    .line 465
    invoke-virtual {v0}, Lcom/inmobi/ads/ay;->getVideoContainerView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/NativeVideoWrapper;

    .line 466
    if-eqz v0, :cond_0

    .line 467
    invoke-virtual {v0}, Lcom/inmobi/ads/NativeVideoWrapper;->getVideoView()Lcom/inmobi/ads/NativeVideoView;

    move-result-object v0

    .line 468
    invoke-virtual {v0}, Lcom/inmobi/ads/NativeVideoView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/az;

    .line 470
    :try_start_2
    iget-object v1, p0, Lcom/inmobi/rendering/InMobiAdActivity;->j:Lcom/inmobi/ads/AdContainer;

    invoke-interface {v1}, Lcom/inmobi/ads/AdContainer;->getFullScreenEventsListener()Lcom/inmobi/ads/AdContainer$a;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/inmobi/ads/AdContainer$a;->b(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 471
    :catch_1
    move-exception v0

    .line 472
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Encountered unexpected error in onAdScreenDismissed handler: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 473
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->DEBUG:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    const-string v2, "InMobi"

    const-string v3, "SDK encountered unexpected error while finishing fullscreen view"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto/16 :goto_0

    .line 479
    :cond_4
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->j:Lcom/inmobi/ads/AdContainer;

    instance-of v0, v0, Lcom/inmobi/ads/ac;

    if-eqz v0, :cond_0

    .line 481
    :try_start_3
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->j:Lcom/inmobi/ads/AdContainer;

    invoke-interface {v0}, Lcom/inmobi/ads/AdContainer;->getFullScreenEventsListener()Lcom/inmobi/ads/AdContainer$a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/inmobi/ads/AdContainer$a;->b(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 482
    :catch_2
    move-exception v0

    .line 483
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Encountered unexpected error in onAdScreenDismissed handler: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 484
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->DEBUG:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    const-string v2, "InMobi"

    const-string v3, "SDK encountered unexpected error while finishing fullscreen view"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto/16 :goto_0

    .line 508
    :cond_5
    iget v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->o:I

    if-eq v1, v0, :cond_1

    .line 510
    iget v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->o:I

    if-ne v3, v0, :cond_1

    .line 511
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->j:Lcom/inmobi/ads/AdContainer;

    if-eqz v0, :cond_1

    .line 512
    iget v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->p:I

    if-ne v5, v0, :cond_7

    .line 513
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->j:Lcom/inmobi/ads/AdContainer;

    check-cast v0, Lcom/inmobi/rendering/RenderView;

    .line 514
    invoke-virtual {v0, v4}, Lcom/inmobi/rendering/RenderView;->setFullScreenActivityContext(Landroid/app/Activity;)V

    .line 516
    :try_start_4
    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderView;->b()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 560
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->j:Lcom/inmobi/ads/AdContainer;

    invoke-static {v0}, Lcom/inmobi/rendering/InMobiAdActivity;->a(Ljava/lang/Object;)V

    .line 561
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->j:Lcom/inmobi/ads/AdContainer;

    invoke-interface {v0}, Lcom/inmobi/ads/AdContainer;->destroy()V

    .line 562
    iput-object v4, p0, Lcom/inmobi/rendering/InMobiAdActivity;->j:Lcom/inmobi/ads/AdContainer;

    goto/16 :goto_1

    .line 517
    :catch_3
    move-exception v0

    .line 518
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Encountered unexpected error in processing close request: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 519
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->DEBUG:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    const-string v1, "InMobi"

    const-string v2, "SDK encountered unexpected error in processing close request"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 523
    :cond_7
    const/16 v0, 0xc9

    iget v1, p0, Lcom/inmobi/rendering/InMobiAdActivity;->p:I

    if-ne v0, v1, :cond_6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_6

    .line 525
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->j:Lcom/inmobi/ads/AdContainer;

    instance-of v0, v0, Lcom/inmobi/ads/ay;

    if-eqz v0, :cond_9

    .line 526
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->j:Lcom/inmobi/ads/AdContainer;

    check-cast v0, Lcom/inmobi/ads/ay;

    .line 527
    iget-object v1, p0, Lcom/inmobi/rendering/InMobiAdActivity;->n:Lcom/inmobi/ads/NativeVideoView;

    if-eqz v1, :cond_6

    .line 528
    iget-object v1, p0, Lcom/inmobi/rendering/InMobiAdActivity;->n:Lcom/inmobi/ads/NativeVideoView;

    invoke-virtual {v1}, Lcom/inmobi/ads/NativeVideoView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/ads/az;

    .line 529
    if-eqz v1, :cond_6

    .line 530
    sget-object v2, Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;->PLACEMENT_TYPE_FULLSCREEN:Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    .line 11363
    iget-object v0, v0, Lcom/inmobi/ads/ac;->b:Lcom/inmobi/ads/AdContainer$RenderingProperties;

    .line 12070
    iget-object v0, v0, Lcom/inmobi/ads/AdContainer$RenderingProperties;->a:Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    .line 530
    if-ne v2, v0, :cond_8

    .line 531
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->n:Lcom/inmobi/ads/NativeVideoView;

    invoke-virtual {v0}, Lcom/inmobi/ads/NativeVideoView;->a()V

    .line 533
    :cond_8
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->j:Lcom/inmobi/ads/AdContainer;

    invoke-interface {v0}, Lcom/inmobi/ads/AdContainer;->getFullScreenEventsListener()Lcom/inmobi/ads/AdContainer$a;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 535
    :try_start_5
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->j:Lcom/inmobi/ads/AdContainer;

    invoke-interface {v0}, Lcom/inmobi/ads/AdContainer;->getFullScreenEventsListener()Lcom/inmobi/ads/AdContainer$a;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/inmobi/ads/AdContainer$a;->b(Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_2

    .line 536
    :catch_4
    move-exception v0

    .line 537
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Encountered unexpected error in onAdScreenDismissed handler: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 538
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->DEBUG:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    const-string v2, "InMobi"

    const-string v3, "SDK encountered unexpected error while finishing fullscreen view"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto/16 :goto_2

    .line 546
    :cond_9
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->j:Lcom/inmobi/ads/AdContainer;

    instance-of v0, v0, Lcom/inmobi/ads/ac;

    if-eqz v0, :cond_6

    .line 547
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->j:Lcom/inmobi/ads/AdContainer;

    invoke-interface {v0}, Lcom/inmobi/ads/AdContainer;->getFullScreenEventsListener()Lcom/inmobi/ads/AdContainer$a;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 549
    :try_start_6
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->j:Lcom/inmobi/ads/AdContainer;

    invoke-interface {v0}, Lcom/inmobi/ads/AdContainer;->getFullScreenEventsListener()Lcom/inmobi/ads/AdContainer$a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/inmobi/ads/AdContainer$a;->b(Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    goto/16 :goto_2

    .line 550
    :catch_5
    move-exception v0

    .line 551
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Encountered unexpected error in onAdScreenDismissed handler: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 552
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->DEBUG:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    const-string v2, "InMobi"

    const-string v3, "SDK encountered unexpected error while finishing fullscreen view"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto/16 :goto_2

    .line 448
    :catch_6
    move-exception v0

    goto/16 :goto_0
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 2

    .prologue
    .line 848
    invoke-super {p0, p1}, Landroid/app/Activity;->onMultiWindowModeChanged(Z)V

    .line 849
    if-nez p1, :cond_1

    .line 850
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->k:Lcom/inmobi/rendering/RenderView;

    if-eqz v0, :cond_0

    .line 851
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->k:Lcom/inmobi/rendering/RenderView;

    iget-object v1, p0, Lcom/inmobi/rendering/InMobiAdActivity;->k:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v1}, Lcom/inmobi/rendering/RenderView;->getOrientationProperties()Lcom/inmobi/rendering/mraid/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/rendering/RenderView;->setOrientationProperties(Lcom/inmobi/rendering/mraid/g;)V

    .line 853
    :cond_0
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->j:Lcom/inmobi/ads/AdContainer;

    if-eqz v0, :cond_1

    .line 854
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->j:Lcom/inmobi/ads/AdContainer;

    invoke-interface {v0}, Lcom/inmobi/ads/AdContainer;->setRequestedScreenOrientation()V

    .line 857
    :cond_1
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    .prologue
    .line 862
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 868
    invoke-static {}, Lcom/inmobi/commons/core/utilities/a;->c()V

    .line 869
    sget-object v0, Lcom/inmobi/rendering/InMobiAdActivity;->e:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/rendering/InMobiAdActivity$b;

    .line 870
    if-eqz v0, :cond_0

    .line 871
    invoke-interface {v0, p3}, Lcom/inmobi/rendering/InMobiAdActivity$b;->a([I)V

    .line 873
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/rendering/InMobiAdActivity;->finish()V

    .line 874
    return-void
.end method

.method protected onResume()V
    .locals 6

    .prologue
    .line 171
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 173
    iget-boolean v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->a:Z

    if-nez v0, :cond_1

    .line 175
    const/16 v0, 0x64

    iget v1, p0, Lcom/inmobi/rendering/InMobiAdActivity;->o:I

    if-ne v0, v1, :cond_2

    .line 176
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->k:Lcom/inmobi/rendering/RenderView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->k:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderView;->getFullScreenEventsListener()Lcom/inmobi/ads/AdContainer$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 178
    :try_start_0
    iget-boolean v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->q:Z

    if-nez v0, :cond_0

    .line 179
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->q:Z

    .line 180
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->k:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderView;->getFullScreenEventsListener()Lcom/inmobi/ads/AdContainer$a;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/rendering/InMobiAdActivity;->k:Lcom/inmobi/rendering/RenderView;

    invoke-interface {v0, v1}, Lcom/inmobi/ads/AdContainer$a;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 245
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->r:Z

    .line 247
    :cond_1
    return-void

    .line 186
    :cond_2
    iget v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->p:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_3

    const/16 v0, 0x66

    iget v1, p0, Lcom/inmobi/rendering/InMobiAdActivity;->o:I

    if-ne v0, v1, :cond_3

    .line 187
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->j:Lcom/inmobi/ads/AdContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->j:Lcom/inmobi/ads/AdContainer;

    invoke-interface {v0}, Lcom/inmobi/ads/AdContainer;->getFullScreenEventsListener()Lcom/inmobi/ads/AdContainer$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 189
    :try_start_1
    iget-boolean v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->q:Z

    if-nez v0, :cond_0

    .line 190
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->q:Z

    .line 191
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->j:Lcom/inmobi/ads/AdContainer;

    invoke-interface {v0}, Lcom/inmobi/ads/AdContainer;->getFullScreenEventsListener()Lcom/inmobi/ads/AdContainer$a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/inmobi/ads/AdContainer$a;->a(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 195
    :catch_0
    move-exception v0

    goto :goto_0

    .line 197
    :cond_3
    const/16 v0, 0xc9

    iget v1, p0, Lcom/inmobi/rendering/InMobiAdActivity;->p:I

    if-ne v0, v1, :cond_0

    .line 198
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->j:Lcom/inmobi/ads/AdContainer;

    instance-of v0, v0, Lcom/inmobi/ads/ay;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->n:Lcom/inmobi/ads/NativeVideoView;

    if-eqz v0, :cond_5

    .line 199
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->n:Lcom/inmobi/ads/NativeVideoView;

    invoke-virtual {v0}, Lcom/inmobi/ads/NativeVideoView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/az;

    .line 200
    if-eqz v0, :cond_4

    .line 202
    iget-boolean v1, p0, Lcom/inmobi/rendering/InMobiAdActivity;->r:Z

    if-eqz v1, :cond_4

    .line 206
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/inmobi/rendering/InMobiAdActivity$1;

    invoke-direct {v2, p0, v0}, Lcom/inmobi/rendering/InMobiAdActivity$1;-><init>(Lcom/inmobi/rendering/InMobiAdActivity;Lcom/inmobi/ads/az;)V

    const-wide/16 v4, 0x32

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 224
    :cond_4
    iget-object v1, p0, Lcom/inmobi/rendering/InMobiAdActivity;->j:Lcom/inmobi/ads/AdContainer;

    invoke-interface {v1}, Lcom/inmobi/ads/AdContainer;->getFullScreenEventsListener()Lcom/inmobi/ads/AdContainer$a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 226
    :try_start_2
    iget-boolean v1, p0, Lcom/inmobi/rendering/InMobiAdActivity;->q:Z

    if-nez v1, :cond_0

    .line 227
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/inmobi/rendering/InMobiAdActivity;->q:Z

    .line 228
    iget-object v1, p0, Lcom/inmobi/rendering/InMobiAdActivity;->j:Lcom/inmobi/ads/AdContainer;

    invoke-interface {v1}, Lcom/inmobi/ads/AdContainer;->getFullScreenEventsListener()Lcom/inmobi/ads/AdContainer$a;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/inmobi/ads/AdContainer$a;->a(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 230
    :catch_1
    move-exception v0

    .line 231
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto/16 :goto_0

    .line 234
    :cond_5
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->j:Lcom/inmobi/ads/AdContainer;

    instance-of v0, v0, Lcom/inmobi/ads/ac;

    if-eqz v0, :cond_0

    .line 236
    :try_start_3
    iget-boolean v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->q:Z

    if-nez v0, :cond_0

    .line 237
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->q:Z

    .line 238
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->j:Lcom/inmobi/ads/AdContainer;

    invoke-interface {v0}, Lcom/inmobi/ads/AdContainer;->getFullScreenEventsListener()Lcom/inmobi/ads/AdContainer$a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/inmobi/ads/AdContainer$a;->a(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 240
    :catch_2
    move-exception v0

    .line 241
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto/16 :goto_0

    .line 184
    :catch_3
    move-exception v0

    goto/16 :goto_0
.end method

.method protected onStart()V
    .locals 6

    .prologue
    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activityStarted()V

    .line 251
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 253
    iget-boolean v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->a:Z

    if-nez v0, :cond_0

    .line 254
    const/16 v0, 0x66

    iget v1, p0, Lcom/inmobi/rendering/InMobiAdActivity;->o:I

    if-ne v0, v1, :cond_0

    .line 255
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->j:Lcom/inmobi/ads/AdContainer;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->j:Lcom/inmobi/ads/AdContainer;

    invoke-interface {v0}, Lcom/inmobi/ads/AdContainer;->getViewableAd()Lcom/inmobi/ads/ViewableAd;

    move-result-object v2

    .line 257
    const/16 v0, 0xc8

    iget v1, p0, Lcom/inmobi/rendering/InMobiAdActivity;->p:I

    if-ne v0, v1, :cond_1

    .line 258
    sget-object v0, Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;->PLACEMENT_TYPE_FULLSCREEN:Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    iget-object v1, p0, Lcom/inmobi/rendering/InMobiAdActivity;->j:Lcom/inmobi/ads/AdContainer;

    invoke-interface {v1}, Lcom/inmobi/ads/AdContainer;->getRenderingProperties()Lcom/inmobi/ads/AdContainer$RenderingProperties;

    move-result-object v1

    .line 2070
    iget-object v1, v1, Lcom/inmobi/ads/AdContainer$RenderingProperties;->a:Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    .line 258
    if-ne v0, v1, :cond_0

    .line 260
    const/4 v0, 0x2

    :try_start_0
    new-array v0, v0, [Landroid/view/View;

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/inmobi/rendering/InMobiAdActivity;->l:Lcom/inmobi/rendering/CustomView;

    aput-object v3, v0, v1

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/inmobi/rendering/InMobiAdActivity;->m:Lcom/inmobi/rendering/CustomView;

    aput-object v3, v0, v1

    invoke-virtual {v2, v0}, Lcom/inmobi/ads/ViewableAd;->a([Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    :cond_0
    :goto_0
    return-void

    .line 261
    :catch_0
    move-exception v0

    .line 262
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SDK encountered unexpected error in enabling impression tracking on this ad: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 263
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->j:Lcom/inmobi/ads/AdContainer;

    invoke-interface {v0}, Lcom/inmobi/ads/AdContainer;->getFullScreenEventsListener()Lcom/inmobi/ads/AdContainer$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->j:Lcom/inmobi/ads/AdContainer;

    invoke-interface {v0}, Lcom/inmobi/ads/AdContainer;->getFullScreenEventsListener()Lcom/inmobi/ads/AdContainer$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/inmobi/ads/AdContainer$a;->a()V

    goto :goto_0

    .line 269
    :cond_1
    const/16 v0, 0xc9

    iget v1, p0, Lcom/inmobi/rendering/InMobiAdActivity;->p:I

    if-ne v0, v1, :cond_0

    .line 271
    :try_start_1
    new-instance v1, Lcom/inmobi/ads/b;

    invoke-direct {v1}, Lcom/inmobi/ads/b;-><init>()V

    .line 272
    invoke-static {}, Lcom/inmobi/commons/core/configs/b;->a()Lcom/inmobi/commons/core/configs/b;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/inmobi/commons/core/configs/b;->a(Lcom/inmobi/commons/core/configs/a;Lcom/inmobi/commons/core/configs/b$b;)V

    .line 273
    invoke-virtual {v2}, Lcom/inmobi/ads/ViewableAd;->b()Landroid/view/View;

    move-result-object v0

    .line 274
    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->j:Lcom/inmobi/ads/AdContainer;

    instance-of v0, v0, Lcom/inmobi/ads/ay;

    if-eqz v0, :cond_3

    .line 276
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->n:Lcom/inmobi/ads/NativeVideoView;

    invoke-virtual {v0}, Lcom/inmobi/ads/NativeVideoView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/az;

    .line 277
    if-eqz v0, :cond_0

    .line 2531
    iget-object v3, v1, Lcom/inmobi/ads/b;->m:Lcom/inmobi/ads/b$h;

    .line 2733
    iget v1, v3, Lcom/inmobi/ads/b$h;->g:I

    .line 3174
    iget-object v4, v0, Lcom/inmobi/ads/az;->G:Ljava/util/Map;

    const-string v5, "time"

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3175
    iget-object v0, v0, Lcom/inmobi/ads/az;->G:Ljava/util/Map;

    const-string v1, "time"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3737
    :goto_1
    iput v0, v3, Lcom/inmobi/ads/b$h;->g:I

    .line 282
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/view/View;

    invoke-virtual {v2, v0}, Lcom/inmobi/ads/ViewableAd;->a([Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 297
    :catch_1
    move-exception v0

    .line 298
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SDK encountered unexpected error in enabling impression tracking on this ad: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 299
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    iget-object v1, p0, Lcom/inmobi/rendering/InMobiAdActivity;->j:Lcom/inmobi/ads/AdContainer;

    invoke-interface {v1}, Lcom/inmobi/ads/AdContainer;->getFullScreenEventsListener()Lcom/inmobi/ads/AdContainer$a;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 301
    iget-object v1, p0, Lcom/inmobi/rendering/InMobiAdActivity;->j:Lcom/inmobi/ads/AdContainer;

    invoke-interface {v1}, Lcom/inmobi/ads/AdContainer;->getFullScreenEventsListener()Lcom/inmobi/ads/AdContainer$a;

    move-result-object v1

    invoke-interface {v1}, Lcom/inmobi/ads/AdContainer$a;->a()V

    .line 303
    :cond_2
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto/16 :goto_0

    .line 284
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->j:Lcom/inmobi/ads/AdContainer;

    instance-of v0, v0, Lcom/inmobi/ads/ac;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz v0, :cond_0

    .line 286
    const/4 v0, 0x0

    :try_start_3
    new-array v0, v0, [Landroid/view/View;

    invoke-virtual {v2, v0}, Lcom/inmobi/ads/ViewableAd;->a([Landroid/view/View;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 287
    :catch_2
    move-exception v0

    .line 288
    :try_start_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SDK encountered unexpected error in enabling impression tracking on this ad: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 290
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->j:Lcom/inmobi/ads/AdContainer;

    invoke-interface {v0}, Lcom/inmobi/ads/AdContainer;->getFullScreenEventsListener()Lcom/inmobi/ads/AdContainer$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->j:Lcom/inmobi/ads/AdContainer;

    invoke-interface {v0}, Lcom/inmobi/ads/AdContainer;->getFullScreenEventsListener()Lcom/inmobi/ads/AdContainer$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/inmobi/ads/AdContainer$a;->a()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method public onStop()V
    .locals 1

    .prologue
    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activityStopped()V

    .line 423
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 424
    iget-boolean v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->a:Z

    if-nez v0, :cond_0

    .line 425
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->r:Z

    .line 426
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->n:Lcom/inmobi/ads/NativeVideoView;

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->n:Lcom/inmobi/ads/NativeVideoView;

    invoke-virtual {v0}, Lcom/inmobi/ads/NativeVideoView;->pause()V

    .line 430
    :cond_0
    return-void
.end method
