.class public final Lcom/google/android/gms/internal/zzui;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# instance fields
.field public final zzcdi:J

.field public final zzcdj:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzuh;",
            ">;"
        }
    .end annotation
.end field

.field public final zzcdk:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zzcdl:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zzcdm:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zzcdn:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zzcdo:Z

.field public final zzcdp:Ljava/lang/String;

.field public final zzcdq:J

.field public final zzcdr:Ljava/lang/String;

.field public final zzcds:I

.field public final zzcdt:I

.field public final zzcdu:J

.field public final zzcdv:Z

.field public final zzcdw:Z

.field public final zzcdx:Z

.field public zzcdy:I

.field public zzcdz:I

.field public zzcea:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzui;-><init>(Lorg/json/JSONObject;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;JLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZLjava/lang/String;JIILjava/lang/String;IIJZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzuh;",
            ">;J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            "JII",
            "Ljava/lang/String;",
            "IIJZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzui;->zzcdj:Ljava/util/List;

    iput-wide p2, p0, Lcom/google/android/gms/internal/zzui;->zzcdi:J

    iput-object p4, p0, Lcom/google/android/gms/internal/zzui;->zzcdk:Ljava/util/List;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzui;->zzcdl:Ljava/util/List;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzui;->zzcdm:Ljava/util/List;

    iput-object p7, p0, Lcom/google/android/gms/internal/zzui;->zzcdn:Ljava/util/List;

    iput-boolean p8, p0, Lcom/google/android/gms/internal/zzui;->zzcdo:Z

    iput-object p9, p0, Lcom/google/android/gms/internal/zzui;->zzcdp:Ljava/lang/String;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzui;->zzcdq:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzui;->zzcdy:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzui;->zzcdz:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzui;->zzcdr:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzui;->zzcds:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzui;->zzcdt:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzui;->zzcdu:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzui;->zzcdv:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzui;->zzcdw:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzui;->zzcdx:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzui;->zzcea:Z

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v6, 0x2

    const/4 v3, -0x1

    const-wide/16 v4, -0x1

    const/4 v10, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {v6}, Lcom/google/android/gms/internal/zzagf;->zzae(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v2, "Mediation Response JSON: "

    instance-of v0, p1, Lorg/json/JSONObject;

    if-nez v0, :cond_3

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/internal/zzagf;->v(Ljava/lang/String;)V

    :cond_0
    const-string v0, "ad_networks"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v0

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    move v0, v1

    move v2, v3

    :goto_2
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v0, v8, :cond_5

    new-instance v8, Lcom/google/android/gms/internal/zzuh;

    invoke-virtual {v6, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/google/android/gms/internal/zzuh;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v8}, Lcom/google/android/gms/internal/zzuh;->zzlv()Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/google/android/gms/internal/zzui;->zzcea:Z

    :cond_1
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-gez v2, :cond_2

    invoke-static {v8}, Lcom/google/android/gms/internal/zzui;->zza(Lcom/google/android/gms/internal/zzuh;)Z

    move-result v8

    if-eqz v8, :cond_2

    move v2, v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    move-object v0, p1

    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0, v6}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    iput v2, p0, Lcom/google/android/gms/internal/zzui;->zzcdy:I

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzui;->zzcdz:I

    invoke-static {v7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzui;->zzcdj:Ljava/util/List;

    const-string v0, "qdata"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzui;->zzcdp:Ljava/lang/String;

    const-string v0, "fs_model_type"

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzui;->zzcdt:I

    const-string v0, "timeout_ms"

    invoke-virtual {p1, v0, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzui;->zzcdu:J

    const-string v0, "settings"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_8

    const-string v2, "ad_network_timeout_millis"

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzui;->zzcdi:J

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzez()Lcom/google/android/gms/internal/zzuq;

    const-string v2, "click_urls"

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzuq;->zza(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/zzui;->zzcdk:Ljava/util/List;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzez()Lcom/google/android/gms/internal/zzuq;

    const-string v2, "imp_urls"

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzuq;->zza(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/zzui;->zzcdl:Ljava/util/List;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzez()Lcom/google/android/gms/internal/zzuq;

    const-string v2, "nofill_urls"

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzuq;->zza(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/zzui;->zzcdm:Ljava/util/List;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzez()Lcom/google/android/gms/internal/zzuq;

    const-string v2, "remote_ping_urls"

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzuq;->zza(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/zzui;->zzcdn:Ljava/util/List;

    const-string v2, "render_in_browser"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzui;->zzcdo:Z

    const-string v2, "refresh"

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-lez v6, :cond_6

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    :goto_3
    iput-wide v2, p0, Lcom/google/android/gms/internal/zzui;->zzcdq:J

    const-string v2, "rewards"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/zzaeq;->zza(Lorg/json/JSONArray;)Lcom/google/android/gms/internal/zzaeq;

    move-result-object v2

    if-nez v2, :cond_7

    iput-object v10, p0, Lcom/google/android/gms/internal/zzui;->zzcdr:Ljava/lang/String;

    iput v1, p0, Lcom/google/android/gms/internal/zzui;->zzcds:I

    :goto_4
    const-string v2, "use_displayed_impression"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzui;->zzcdv:Z

    const-string v2, "allow_pub_rendered_attribution"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzui;->zzcdw:Z

    const-string v2, "allow_pub_owned_ad_view"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzui;->zzcdx:Z

    :goto_5
    return-void

    :cond_6
    move-wide v2, v4

    goto :goto_3

    :cond_7
    iget-object v3, v2, Lcom/google/android/gms/internal/zzaeq;->type:Ljava/lang/String;

    iput-object v3, p0, Lcom/google/android/gms/internal/zzui;->zzcdr:Ljava/lang/String;

    iget v2, v2, Lcom/google/android/gms/internal/zzaeq;->zzcwd:I

    iput v2, p0, Lcom/google/android/gms/internal/zzui;->zzcds:I

    goto :goto_4

    :cond_8
    iput-wide v4, p0, Lcom/google/android/gms/internal/zzui;->zzcdi:J

    iput-object v10, p0, Lcom/google/android/gms/internal/zzui;->zzcdk:Ljava/util/List;

    iput-object v10, p0, Lcom/google/android/gms/internal/zzui;->zzcdl:Ljava/util/List;

    iput-object v10, p0, Lcom/google/android/gms/internal/zzui;->zzcdm:Ljava/util/List;

    iput-object v10, p0, Lcom/google/android/gms/internal/zzui;->zzcdn:Ljava/util/List;

    iput-wide v4, p0, Lcom/google/android/gms/internal/zzui;->zzcdq:J

    iput-object v10, p0, Lcom/google/android/gms/internal/zzui;->zzcdr:Ljava/lang/String;

    iput v1, p0, Lcom/google/android/gms/internal/zzui;->zzcds:I

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzui;->zzcdv:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzui;->zzcdo:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzui;->zzcdw:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzui;->zzcdx:Z

    goto :goto_5
.end method

.method private static zza(Lcom/google/android/gms/internal/zzuh;)Z
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzuh;->zzccs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "com.google.ads.mediation.admob.AdMobAdapter"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
