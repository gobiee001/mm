.class public final Lcom/chartboost/sdk/impl/ag;
.super Lcom/chartboost/sdk/impl/ad;
.source "SourceFile"


# instance fields
.field private final n:Lorg/json/JSONObject;

.field private final o:Lorg/json/JSONObject;

.field private final p:Lorg/json/JSONObject;

.field private final q:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/chartboost/sdk/impl/aj;Lcom/chartboost/sdk/Tracking/a;ILcom/chartboost/sdk/impl/ad$a;)V
    .locals 1

    .prologue
    .line 42
    invoke-direct/range {p0 .. p5}, Lcom/chartboost/sdk/impl/ad;-><init>(Ljava/lang/String;Lcom/chartboost/sdk/impl/aj;Lcom/chartboost/sdk/Tracking/a;ILcom/chartboost/sdk/impl/ad$a;)V

    .line 43
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ag;->n:Lorg/json/JSONObject;

    .line 44
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ag;->o:Lorg/json/JSONObject;

    .line 45
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ag;->p:Lorg/json/JSONObject;

    .line 46
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ag;->q:Lorg/json/JSONObject;

    .line 48
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 2

    .prologue
    .line 140
    if-nez p3, :cond_0

    .line 141
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ag;->q:Lorg/json/JSONObject;

    invoke-static {v0, p1, p2}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 142
    const-string v0, "ad"

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ag;->q:Lorg/json/JSONObject;

    invoke-virtual {p0, v0, v1}, Lcom/chartboost/sdk/impl/ag;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 144
    :cond_0
    return-void
.end method

.method protected c()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 53
    iget-object v2, p0, Lcom/chartboost/sdk/impl/ag;->o:Lorg/json/JSONObject;

    const-string v3, "app"

    iget-object v4, p0, Lcom/chartboost/sdk/impl/ag;->m:Lcom/chartboost/sdk/impl/aj;

    iget-object v4, v4, Lcom/chartboost/sdk/impl/aj;->s:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 54
    iget-object v2, p0, Lcom/chartboost/sdk/impl/ag;->o:Lorg/json/JSONObject;

    const-string v3, "bundle"

    iget-object v4, p0, Lcom/chartboost/sdk/impl/ag;->m:Lcom/chartboost/sdk/impl/aj;

    iget-object v4, v4, Lcom/chartboost/sdk/impl/aj;->j:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 55
    iget-object v2, p0, Lcom/chartboost/sdk/impl/ag;->o:Lorg/json/JSONObject;

    const-string v3, "bundle_id"

    iget-object v4, p0, Lcom/chartboost/sdk/impl/ag;->m:Lcom/chartboost/sdk/impl/aj;

    iget-object v4, v4, Lcom/chartboost/sdk/impl/aj;->k:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 56
    iget-object v2, p0, Lcom/chartboost/sdk/impl/ag;->o:Lorg/json/JSONObject;

    const-string v3, "custom_id"

    sget-object v4, Lcom/chartboost/sdk/i;->a:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 57
    iget-object v2, p0, Lcom/chartboost/sdk/impl/ag;->o:Lorg/json/JSONObject;

    const-string v3, "session_id"

    const-string v4, ""

    invoke-static {v2, v3, v4}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 58
    iget-object v2, p0, Lcom/chartboost/sdk/impl/ag;->o:Lorg/json/JSONObject;

    const-string v3, "ui"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 59
    iget-object v2, p0, Lcom/chartboost/sdk/impl/ag;->o:Lorg/json/JSONObject;

    const-string v3, "test_mode"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 62
    const-string v2, "app"

    iget-object v3, p0, Lcom/chartboost/sdk/impl/ag;->o:Lorg/json/JSONObject;

    invoke-virtual {p0, v2, v3}, Lcom/chartboost/sdk/impl/ag;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 65
    const/4 v2, 0x5

    new-array v2, v2, [Lcom/chartboost/sdk/Libraries/e$a;

    const-string v3, "carrier_name"

    iget-object v4, p0, Lcom/chartboost/sdk/impl/ag;->m:Lcom/chartboost/sdk/impl/aj;

    iget-object v4, v4, Lcom/chartboost/sdk/impl/aj;->u:Lorg/json/JSONObject;

    const-string v5, "carrier-name"

    .line 66
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v3, "mobile_country_code"

    iget-object v4, p0, Lcom/chartboost/sdk/impl/ag;->m:Lcom/chartboost/sdk/impl/aj;

    iget-object v4, v4, Lcom/chartboost/sdk/impl/aj;->u:Lorg/json/JSONObject;

    const-string v5, "mobile-country-code"

    .line 67
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x2

    const-string v4, "mobile_network_code"

    iget-object v5, p0, Lcom/chartboost/sdk/impl/ag;->m:Lcom/chartboost/sdk/impl/aj;

    iget-object v5, v5, Lcom/chartboost/sdk/impl/aj;->u:Lorg/json/JSONObject;

    const-string v6, "mobile-network-code"

    .line 68
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "iso_country_code"

    iget-object v5, p0, Lcom/chartboost/sdk/impl/ag;->m:Lcom/chartboost/sdk/impl/aj;

    iget-object v5, v5, Lcom/chartboost/sdk/impl/aj;->u:Lorg/json/JSONObject;

    const-string v6, "iso-country-code"

    .line 69
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "phone_type"

    iget-object v5, p0, Lcom/chartboost/sdk/impl/ag;->m:Lcom/chartboost/sdk/impl/aj;

    iget-object v5, v5, Lcom/chartboost/sdk/impl/aj;->u:Lorg/json/JSONObject;

    const-string v6, "phone-type"

    .line 70
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v4

    aput-object v4, v2, v3

    .line 65
    invoke-static {v2}, Lcom/chartboost/sdk/Libraries/e;->a([Lcom/chartboost/sdk/Libraries/e$a;)Lorg/json/JSONObject;

    move-result-object v2

    .line 71
    iget-object v3, p0, Lcom/chartboost/sdk/impl/ag;->p:Lorg/json/JSONObject;

    const-string v4, "carrier"

    invoke-static {v3, v4, v2}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 73
    iget-object v2, p0, Lcom/chartboost/sdk/impl/ag;->p:Lorg/json/JSONObject;

    const-string v3, "model"

    iget-object v4, p0, Lcom/chartboost/sdk/impl/ag;->m:Lcom/chartboost/sdk/impl/aj;

    iget-object v4, v4, Lcom/chartboost/sdk/impl/aj;->f:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 74
    iget-object v2, p0, Lcom/chartboost/sdk/impl/ag;->p:Lorg/json/JSONObject;

    const-string v3, "device_type"

    iget-object v4, p0, Lcom/chartboost/sdk/impl/ag;->m:Lcom/chartboost/sdk/impl/aj;

    iget-object v4, v4, Lcom/chartboost/sdk/impl/aj;->t:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 75
    iget-object v2, p0, Lcom/chartboost/sdk/impl/ag;->p:Lorg/json/JSONObject;

    const-string v3, "os"

    iget-object v4, p0, Lcom/chartboost/sdk/impl/ag;->m:Lcom/chartboost/sdk/impl/aj;

    iget-object v4, v4, Lcom/chartboost/sdk/impl/aj;->g:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 76
    iget-object v2, p0, Lcom/chartboost/sdk/impl/ag;->p:Lorg/json/JSONObject;

    const-string v3, "country"

    iget-object v4, p0, Lcom/chartboost/sdk/impl/ag;->m:Lcom/chartboost/sdk/impl/aj;

    iget-object v4, v4, Lcom/chartboost/sdk/impl/aj;->h:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 77
    iget-object v2, p0, Lcom/chartboost/sdk/impl/ag;->p:Lorg/json/JSONObject;

    const-string v3, "language"

    iget-object v4, p0, Lcom/chartboost/sdk/impl/ag;->m:Lcom/chartboost/sdk/impl/aj;

    iget-object v4, v4, Lcom/chartboost/sdk/impl/aj;->i:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 78
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/ag;->m:Lcom/chartboost/sdk/impl/aj;

    iget-object v3, v3, Lcom/chartboost/sdk/impl/aj;->e:Lcom/chartboost/sdk/Libraries/i;

    invoke-virtual {v3}, Lcom/chartboost/sdk/Libraries/i;->a()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 79
    iget-object v3, p0, Lcom/chartboost/sdk/impl/ag;->p:Lorg/json/JSONObject;

    const-string v4, "timestamp"

    invoke-static {v3, v4, v2}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 80
    iget-object v2, p0, Lcom/chartboost/sdk/impl/ag;->p:Lorg/json/JSONObject;

    const-string v3, "reachability"

    iget-object v4, p0, Lcom/chartboost/sdk/impl/ag;->m:Lcom/chartboost/sdk/impl/aj;

    iget-object v4, v4, Lcom/chartboost/sdk/impl/aj;->b:Lcom/chartboost/sdk/impl/ac;

    invoke-virtual {v4}, Lcom/chartboost/sdk/impl/ac;->a()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 81
    iget-object v2, p0, Lcom/chartboost/sdk/impl/ag;->p:Lorg/json/JSONObject;

    const-string v3, "scale"

    iget-object v4, p0, Lcom/chartboost/sdk/impl/ag;->m:Lcom/chartboost/sdk/impl/aj;

    iget-object v4, v4, Lcom/chartboost/sdk/impl/aj;->r:Ljava/lang/Float;

    invoke-static {v2, v3, v4}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 82
    iget-object v2, p0, Lcom/chartboost/sdk/impl/ag;->p:Lorg/json/JSONObject;

    const-string v3, "is_portrait"

    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->a()I

    move-result v4

    invoke-static {v4}, Lcom/chartboost/sdk/Libraries/CBUtility;->a(I)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 83
    iget-object v2, p0, Lcom/chartboost/sdk/impl/ag;->p:Lorg/json/JSONObject;

    const-string v3, "rooted_device"

    iget-object v4, p0, Lcom/chartboost/sdk/impl/ag;->m:Lcom/chartboost/sdk/impl/aj;

    iget-boolean v4, v4, Lcom/chartboost/sdk/impl/aj;->v:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 84
    iget-object v2, p0, Lcom/chartboost/sdk/impl/ag;->p:Lorg/json/JSONObject;

    const-string v3, "timezone"

    iget-object v4, p0, Lcom/chartboost/sdk/impl/ag;->m:Lcom/chartboost/sdk/impl/aj;

    iget-object v4, v4, Lcom/chartboost/sdk/impl/aj;->w:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 85
    iget-object v2, p0, Lcom/chartboost/sdk/impl/ag;->p:Lorg/json/JSONObject;

    const-string v3, "mobile_network"

    iget-object v4, p0, Lcom/chartboost/sdk/impl/ag;->m:Lcom/chartboost/sdk/impl/aj;

    iget-object v4, v4, Lcom/chartboost/sdk/impl/aj;->x:Ljava/lang/Integer;

    invoke-static {v2, v3, v4}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 86
    iget-object v2, p0, Lcom/chartboost/sdk/impl/ag;->p:Lorg/json/JSONObject;

    const-string v3, "dw"

    iget-object v4, p0, Lcom/chartboost/sdk/impl/ag;->m:Lcom/chartboost/sdk/impl/aj;

    iget-object v4, v4, Lcom/chartboost/sdk/impl/aj;->o:Ljava/lang/Integer;

    invoke-static {v2, v3, v4}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 87
    iget-object v2, p0, Lcom/chartboost/sdk/impl/ag;->p:Lorg/json/JSONObject;

    const-string v3, "dh"

    iget-object v4, p0, Lcom/chartboost/sdk/impl/ag;->m:Lcom/chartboost/sdk/impl/aj;

    iget-object v4, v4, Lcom/chartboost/sdk/impl/aj;->p:Ljava/lang/Integer;

    invoke-static {v2, v3, v4}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 88
    iget-object v2, p0, Lcom/chartboost/sdk/impl/ag;->p:Lorg/json/JSONObject;

    const-string v3, "dpi"

    iget-object v4, p0, Lcom/chartboost/sdk/impl/ag;->m:Lcom/chartboost/sdk/impl/aj;

    iget-object v4, v4, Lcom/chartboost/sdk/impl/aj;->q:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 89
    iget-object v2, p0, Lcom/chartboost/sdk/impl/ag;->p:Lorg/json/JSONObject;

    const-string v3, "w"

    iget-object v4, p0, Lcom/chartboost/sdk/impl/ag;->m:Lcom/chartboost/sdk/impl/aj;

    iget-object v4, v4, Lcom/chartboost/sdk/impl/aj;->m:Ljava/lang/Integer;

    invoke-static {v2, v3, v4}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 90
    iget-object v2, p0, Lcom/chartboost/sdk/impl/ag;->p:Lorg/json/JSONObject;

    const-string v3, "h"

    iget-object v4, p0, Lcom/chartboost/sdk/impl/ag;->m:Lcom/chartboost/sdk/impl/aj;

    iget-object v4, v4, Lcom/chartboost/sdk/impl/aj;->n:Ljava/lang/Integer;

    invoke-static {v2, v3, v4}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 91
    iget-object v2, p0, Lcom/chartboost/sdk/impl/ag;->p:Lorg/json/JSONObject;

    const-string v3, "user_agent"

    sget-object v4, Lcom/chartboost/sdk/i;->w:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 92
    iget-object v2, p0, Lcom/chartboost/sdk/impl/ag;->p:Lorg/json/JSONObject;

    const-string v3, "device_family"

    const-string v4, ""

    invoke-static {v2, v3, v4}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 93
    iget-object v2, p0, Lcom/chartboost/sdk/impl/ag;->p:Lorg/json/JSONObject;

    const-string v3, "retina"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 95
    iget-object v2, p0, Lcom/chartboost/sdk/impl/ag;->m:Lcom/chartboost/sdk/impl/aj;

    iget-object v2, v2, Lcom/chartboost/sdk/impl/aj;->a:Lcom/chartboost/sdk/Libraries/d;

    invoke-virtual {v2}, Lcom/chartboost/sdk/Libraries/d;->b()Lcom/chartboost/sdk/Libraries/d$a;

    move-result-object v2

    .line 96
    iget-object v3, p0, Lcom/chartboost/sdk/impl/ag;->p:Lorg/json/JSONObject;

    const-string v4, "identity"

    iget-object v5, v2, Lcom/chartboost/sdk/Libraries/d$a;->b:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 97
    iget v3, v2, Lcom/chartboost/sdk/Libraries/d$a;->a:I

    if-eq v3, v7, :cond_0

    .line 98
    iget v2, v2, Lcom/chartboost/sdk/Libraries/d$a;->a:I

    if-ne v2, v0, :cond_7

    .line 99
    :goto_0
    iget-object v2, p0, Lcom/chartboost/sdk/impl/ag;->p:Lorg/json/JSONObject;

    const-string v3, "limit_ad_tracking"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 102
    :cond_0
    const-string v0, "device"

    iget-object v2, p0, Lcom/chartboost/sdk/impl/ag;->p:Lorg/json/JSONObject;

    invoke-virtual {p0, v0, v2}, Lcom/chartboost/sdk/impl/ag;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 106
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ag;->n:Lorg/json/JSONObject;

    const-string v2, "framework"

    const-string v3, ""

    invoke-static {v0, v2, v3}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 108
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ag;->n:Lorg/json/JSONObject;

    const-string v2, "sdk"

    iget-object v3, p0, Lcom/chartboost/sdk/impl/ag;->m:Lcom/chartboost/sdk/impl/aj;

    iget-object v3, v3, Lcom/chartboost/sdk/impl/aj;->l:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 110
    sget-object v0, Lcom/chartboost/sdk/i;->d:Lcom/chartboost/sdk/Chartboost$CBFramework;

    if-eqz v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ag;->n:Lorg/json/JSONObject;

    const-string v2, "framework_version"

    sget-object v3, Lcom/chartboost/sdk/i;->f:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 112
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ag;->n:Lorg/json/JSONObject;

    const-string v2, "wrapper_version"

    sget-object v3, Lcom/chartboost/sdk/i;->b:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ag;->n:Lorg/json/JSONObject;

    const-string v2, "mediation"

    sget-object v3, Lcom/chartboost/sdk/i;->h:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 115
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ag;->n:Lorg/json/JSONObject;

    const-string v2, "commit_hash"

    const-string v3, "de6fceeaf2944ea777e269b7af7af9890f388b58"

    invoke-static {v0, v2, v3}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 117
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ag;->m:Lcom/chartboost/sdk/impl/aj;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/aj;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/e;

    iget-object v0, v0, Lcom/chartboost/sdk/Model/e;->a:Ljava/lang/String;

    .line 118
    invoke-static {}, Lcom/chartboost/sdk/impl/m;->a()Lcom/chartboost/sdk/impl/m;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/chartboost/sdk/impl/m;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 119
    iget-object v2, p0, Lcom/chartboost/sdk/impl/ag;->n:Lorg/json/JSONObject;

    const-string v3, "config_variant"

    invoke-static {v2, v3, v0}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 122
    :cond_2
    const-string v0, "sdk"

    iget-object v2, p0, Lcom/chartboost/sdk/impl/ag;->n:Lorg/json/JSONObject;

    invoke-virtual {p0, v0, v2}, Lcom/chartboost/sdk/impl/ag;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 125
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ag;->m:Lcom/chartboost/sdk/impl/aj;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/aj;->d:Landroid/content/SharedPreferences;

    const-string v2, "cbPrefSessionCount"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 126
    iget-object v2, p0, Lcom/chartboost/sdk/impl/ag;->q:Lorg/json/JSONObject;

    const-string v3, "session"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 127
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ag;->q:Lorg/json/JSONObject;

    const-string v2, "cache"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 128
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ag;->q:Lorg/json/JSONObject;

    const-string v2, "cache"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 129
    :cond_3
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ag;->q:Lorg/json/JSONObject;

    const-string v2, "amount"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 130
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ag;->q:Lorg/json/JSONObject;

    const-string v2, "amount"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 131
    :cond_4
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ag;->q:Lorg/json/JSONObject;

    const-string v2, "retry_count"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 132
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ag;->q:Lorg/json/JSONObject;

    const-string v2, "retry_count"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 133
    :cond_5
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ag;->q:Lorg/json/JSONObject;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 134
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ag;->q:Lorg/json/JSONObject;

    const-string v1, "location"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 136
    :cond_6
    const-string v0, "ad"

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ag;->q:Lorg/json/JSONObject;

    invoke-virtual {p0, v0, v1}, Lcom/chartboost/sdk/impl/ag;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 137
    return-void

    :cond_7
    move v0, v1

    .line 98
    goto/16 :goto_0
.end method
