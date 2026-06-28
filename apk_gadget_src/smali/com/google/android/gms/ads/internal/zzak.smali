.class public final Lcom/google/android/gms/ads/internal/zzak;
.super Lcom/google/android/gms/ads/internal/zzi;

# interfaces
.implements Lcom/google/android/gms/ads/internal/gmsg/zzag;
.implements Lcom/google/android/gms/ads/internal/gmsg/zzx;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# instance fields
.field private transient zzaqc:Z

.field private zzaqd:I

.field private zzaqe:Z

.field private zzaqf:F

.field private zzaqg:Z

.field private zzaqh:Lcom/google/android/gms/internal/zzafe;

.field private zzaqi:Ljava/lang/String;

.field private final zzaqj:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzjn;Ljava/lang/String;Lcom/google/android/gms/internal/zzux;Lcom/google/android/gms/internal/zzakd;Lcom/google/android/gms/ads/internal/zzv;)V
    .locals 2

    invoke-direct/range {p0 .. p6}, Lcom/google/android/gms/ads/internal/zzi;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzjn;Ljava/lang/String;Lcom/google/android/gms/internal/zzux;Lcom/google/android/gms/internal/zzakd;Lcom/google/android/gms/ads/internal/zzv;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/ads/internal/zzak;->zzaqd:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzak;->zzaqc:Z

    if-eqz p2, :cond_0

    const-string v0, "reward_mb"

    iget-object v1, p2, Lcom/google/android/gms/internal/zzjn;->zzbek:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "/Rewarded"

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzak;->zzaqj:Ljava/lang/String;

    return-void

    :cond_0
    const-string v0, "/Interstitial"

    goto :goto_0
.end method

.method private final zza(Landroid/os/Bundle;)V
    .locals 6

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzei()Lcom/google/android/gms/internal/zzahn;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzak;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzbt;->zzair:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzak;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzbt;->zzaty:Lcom/google/android/gms/internal/zzakd;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzakd;->zzcv:Ljava/lang/String;

    const-string v3, "gmob-apps"

    const/4 v5, 0x0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/zzahn;->zzb(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/ads/internal/zzak;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzak;->zzaqe:Z

    return v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/ads/internal/zzak;)F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/ads/internal/zzak;->zzaqf:F

    return v0
.end method

.method private static zzb(Lcom/google/android/gms/internal/zzafp;)Lcom/google/android/gms/internal/zzafp;
    .locals 49

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/zzafp;->zzcxy:Lcom/google/android/gms/internal/zzaax;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzacg;->zzb(Lcom/google/android/gms/internal/zzaax;)Lorg/json/JSONObject;

    move-result-object v2

    instance-of v3, v2, Lorg/json/JSONObject;

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "pubid"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/zzafp;->zzcqv:Lcom/google/android/gms/internal/zzaat;

    iget-object v5, v5, Lcom/google/android/gms/internal/zzaat;->zzatw:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    instance-of v4, v2, Lorg/json/JSONObject;

    if-nez v4, :cond_1

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    :goto_1
    new-instance v2, Lcom/google/android/gms/internal/zzuh;

    const/4 v4, 0x0

    const-string v5, "com.google.ads.mediation.admob.AdMobAdapter"

    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v9

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v10

    const/4 v12, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v13

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v20

    const/16 v21, 0x0

    const-wide/16 v22, -0x1

    invoke-direct/range {v2 .. v23}, Lcom/google/android/gms/internal/zzuh;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;J)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzafp;->zzcxy:Lcom/google/android/gms/internal/zzaax;

    move-object/from16 v46, v0

    new-instance v48, Lcom/google/android/gms/internal/zzui;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    sget-object v2, Lcom/google/android/gms/internal/zznh;->zzbnj:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->zzif()Lcom/google/android/gms/internal/zznf;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/zznf;->zzd(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    move-object/from16 v0, v46

    iget-object v9, v0, Lcom/google/android/gms/internal/zzaax;->zzcdn:Ljava/util/List;

    move-object/from16 v0, v46

    iget-boolean v10, v0, Lcom/google/android/gms/internal/zzaax;->zzcdo:Z

    const-string v11, ""

    const-wide/16 v12, -0x1

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, -0x1

    const-wide/16 v19, -0x1

    const/16 v21, 0x0

    move-object/from16 v2, v48

    invoke-direct/range {v2 .. v21}, Lcom/google/android/gms/internal/zzui;-><init>(Ljava/util/List;JLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZLjava/lang/String;JIILjava/lang/String;IIJZ)V

    new-instance v2, Lcom/google/android/gms/internal/zzaax;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/zzafp;->zzcqv:Lcom/google/android/gms/internal/zzaat;

    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/google/android/gms/internal/zzaax;->zzcja:Ljava/lang/String;

    move-object/from16 v0, v46

    iget-object v5, v0, Lcom/google/android/gms/internal/zzaax;->body:Ljava/lang/String;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    move-object/from16 v0, v46

    iget-wide v8, v0, Lcom/google/android/gms/internal/zzaax;->zzcov:J

    const/4 v10, 0x1

    move-object/from16 v0, v46

    iget-wide v11, v0, Lcom/google/android/gms/internal/zzaax;->zzcox:J

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v13

    move-object/from16 v0, v46

    iget-wide v14, v0, Lcom/google/android/gms/internal/zzaax;->zzcdq:J

    move-object/from16 v0, v46

    iget v0, v0, Lcom/google/android/gms/internal/zzaax;->orientation:I

    move/from16 v16, v0

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaax;->zzcoz:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v46

    iget-wide v0, v0, Lcom/google/android/gms/internal/zzaax;->zzcpa:J

    move-wide/from16 v18, v0

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaax;->zzcpb:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v46

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzaax;->zzcpc:Z

    move/from16 v21, v0

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaax;->zzcpd:Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v46

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzaax;->zzcpf:Z

    move/from16 v24, v0

    move-object/from16 v0, v46

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzaax;->zzben:Z

    move/from16 v25, v0

    move-object/from16 v0, v46

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzaax;->zzcnl:Z

    move/from16 v26, v0

    move-object/from16 v0, v46

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzaax;->zzcpg:Z

    move/from16 v27, v0

    move-object/from16 v0, v46

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzaax;->zzcph:Z

    move/from16 v28, v0

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaax;->zzcpk:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v46

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzaax;->zzbeo:Z

    move/from16 v30, v0

    move-object/from16 v0, v46

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzaax;->zzbep:Z

    move/from16 v31, v0

    const/16 v32, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v33

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v34

    move-object/from16 v0, v46

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzaax;->zzcpo:Z

    move/from16 v35, v0

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaax;->zzcpp:Lcom/google/android/gms/internal/zzaaz;

    move-object/from16 v36, v0

    move-object/from16 v0, v46

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzaax;->zzcnz:Z

    move/from16 v37, v0

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaax;->zzcoa:Ljava/lang/String;

    move-object/from16 v38, v0

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaax;->zzcdn:Ljava/util/List;

    move-object/from16 v39, v0

    move-object/from16 v0, v46

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzaax;->zzcdo:Z

    move/from16 v40, v0

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaax;->zzcpq:Ljava/lang/String;

    move-object/from16 v41, v0

    const/16 v42, 0x0

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaax;->zzcps:Ljava/lang/String;

    move-object/from16 v43, v0

    move-object/from16 v0, v46

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzaax;->zzcpt:Z

    move/from16 v44, v0

    move-object/from16 v0, v46

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzaax;->zzcol:Z

    move/from16 v45, v0

    move-object/from16 v0, v46

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzaax;->zzaqv:Z

    move/from16 v46, v0

    const/16 v47, 0x0

    invoke-direct/range {v2 .. v47}, Lcom/google/android/gms/internal/zzaax;-><init>(Lcom/google/android/gms/internal/zzaat;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JZJLjava/util/List;JILjava/lang/String;JLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZZZZLjava/lang/String;ZZLcom/google/android/gms/internal/zzaeq;Ljava/util/List;Ljava/util/List;ZLcom/google/android/gms/internal/zzaaz;ZLjava/lang/String;Ljava/util/List;ZLjava/lang/String;Lcom/google/android/gms/internal/zzaey;Ljava/lang/String;ZZZI)V

    new-instance v4, Lcom/google/android/gms/internal/zzafp;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/zzafp;->zzcqv:Lcom/google/android/gms/internal/zzaat;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/internal/zzafp;->zzauc:Lcom/google/android/gms/internal/zzjn;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/gms/internal/zzafp;->errorCode:I

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/google/android/gms/internal/zzafp;->zzcxp:J

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/android/gms/internal/zzafp;->zzcxq:J

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/gms/internal/zzafp;->zzcxw:Lcom/google/android/gms/internal/zzis;

    const/16 v16, 0x0

    move-object v6, v2

    move-object/from16 v7, v48

    invoke-direct/range {v4 .. v16}, Lcom/google/android/gms/internal/zzafp;-><init>(Lcom/google/android/gms/internal/zzaat;Lcom/google/android/gms/internal/zzaax;Lcom/google/android/gms/internal/zzui;Lcom/google/android/gms/internal/zzjn;IJJLorg/json/JSONObject;Lcom/google/android/gms/internal/zzis;Ljava/lang/Boolean;)V

    :goto_2
    return-object v4

    :cond_0
    :try_start_1
    check-cast v2, Lorg/json/JSONObject;

    invoke-static {v2}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    :cond_1
    check-cast v2, Lorg/json/JSONObject;

    invoke-static {v2}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v11

    goto/16 :goto_1

    :catch_0
    move-exception v2

    const-string v3, "Unable to generate ad state for an interstitial ad with pooling."

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/zzagf;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v4, p0

    goto :goto_2
.end method

.method static synthetic zzc(Lcom/google/android/gms/ads/internal/zzak;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzak;->zzaqg:Z

    return v0
.end method


# virtual methods
.method public final setImmersiveMode(Z)V
    .locals 1

    const-string v0, "setImmersiveMode must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->zzge(Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/zzak;->zzaqg:Z

    return-void
.end method

.method public final showInterstitial()V
    .locals 11

    const/4 v10, 0x1

    const/4 v5, -0x1

    const/4 v1, 0x0

    const-string v0, "showInterstitial must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->zzge(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzfd()Lcom/google/android/gms/internal/zzaff;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzak;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzbt;->zzair:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzaff;->zzt(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzfd()Lcom/google/android/gms/internal/zzaff;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzak;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzbt;->zzair:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzaff;->zzv(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzak;->zzaqi:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzak;->zzaqi:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzak;->zzaqj:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzak;->zzaqi:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzak;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzaud:Lcom/google/android/gms/internal/zzafo;

    if-nez v0, :cond_3

    const-string v0, "The interstitial has not loaded."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzagf;->zzcu(Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/google/android/gms/internal/zznh;->zzbmt:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->zzif()Lcom/google/android/gms/internal/zznf;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zznf;->zzd(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzak;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzair:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzak;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzair:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :goto_2
    iget-boolean v2, p0, Lcom/google/android/gms/ads/internal/zzak;->zzaqc:Z

    if-nez v2, :cond_4

    const-string v2, "It is not recommended to show an interstitial before onAdLoaded completes."

    invoke-static {v2}, Lcom/google/android/gms/internal/zzagf;->zzcu(Ljava/lang/String;)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "appid"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "action"

    const-string v4, "show_interstitial_before_load_finish"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/google/android/gms/ads/internal/zzak;->zza(Landroid/os/Bundle;)V

    :cond_4
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzei()Lcom/google/android/gms/internal/zzahn;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzak;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzbt;->zzair:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzahn;->zzan(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "It is not recommended to show an interstitial when app is not in foreground."

    invoke-static {v2}, Lcom/google/android/gms/internal/zzagf;->zzcu(Ljava/lang/String;)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "appid"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "action"

    const-string v3, "show_interstitial_app_not_in_foreground"

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/google/android/gms/ads/internal/zzak;->zza(Landroid/os/Bundle;)V

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzak;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzbt;->zzfl()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzak;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzaud:Lcom/google/android/gms/internal/zzafo;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzafo;->zzcow:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzak;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzaud:Lcom/google/android/gms/internal/zzafo;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzafo;->zzcet:Lcom/google/android/gms/internal/zzva;

    if-eqz v0, :cond_8

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/zznh;->zzblo:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->zzif()Lcom/google/android/gms/internal/zznf;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zznf;->zzd(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzak;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzaud:Lcom/google/android/gms/internal/zzafo;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzafo;->zzcet:Lcom/google/android/gms/internal/zzva;

    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/zzak;->zzaqg:Z

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzva;->setImmersiveMode(Z)V

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzak;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzaud:Lcom/google/android/gms/internal/zzafo;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzafo;->zzcet:Lcom/google/android/gms/internal/zzva;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzva;->showInterstitial()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    const-string v1, "Could not show interstitial."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzagf;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzak;->zzdk()V

    goto/16 :goto_1

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzak;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzair:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzak;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzaud:Lcom/google/android/gms/internal/zzafo;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzafo;->zzciy:Lcom/google/android/gms/internal/zzanh;

    if-nez v0, :cond_9

    const-string v0, "The interstitial failed to load."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzagf;->zzcu(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzak;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzaud:Lcom/google/android/gms/internal/zzafo;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzafo;->zzciy:Lcom/google/android/gms/internal/zzanh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzanh;->zztc()Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "The interstitial is already showing."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzagf;->zzcu(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzak;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzaud:Lcom/google/android/gms/internal/zzafo;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzafo;->zzciy:Lcom/google/android/gms/internal/zzanh;

    invoke-interface {v0, v10}, Lcom/google/android/gms/internal/zzanh;->zzad(Z)V

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzak;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzak;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzaud:Lcom/google/android/gms/internal/zzafo;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzafo;->zzciy:Lcom/google/android/gms/internal/zzanh;

    if-nez v0, :cond_b

    throw v1

    :cond_b
    check-cast v0, Landroid/view/View;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/ads/internal/zzbt;->zzi(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzak;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzaud:Lcom/google/android/gms/internal/zzafo;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzafo;->zzcxj:Lorg/json/JSONObject;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzak;->zzanq:Lcom/google/android/gms/internal/zzfs;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzak;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzbt;->zzauc:Lcom/google/android/gms/internal/zzjn;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzak;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/zzbt;->zzaud:Lcom/google/android/gms/internal/zzafo;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzfs;->zza(Lcom/google/android/gms/internal/zzjn;Lcom/google/android/gms/internal/zzafo;)V

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzak;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzaud:Lcom/google/android/gms/internal/zzafo;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzafo;->zzfv()Z

    move-result v0

    if-eqz v0, :cond_f

    new-instance v3, Lcom/google/android/gms/internal/zzgp;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzak;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzair:Landroid/content/Context;

    iget-object v0, v2, Lcom/google/android/gms/internal/zzafo;->zzciy:Lcom/google/android/gms/internal/zzanh;

    if-nez v0, :cond_d

    throw v1

    :cond_d
    check-cast v0, Landroid/view/View;

    invoke-direct {v3, v4, v0}, Lcom/google/android/gms/internal/zzgp;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iget-object v0, v2, Lcom/google/android/gms/internal/zzafo;->zzciy:Lcom/google/android/gms/internal/zzanh;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/zzgp;->zza(Lcom/google/android/gms/internal/zzgt;)V

    :goto_3
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzak;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzaqo:Z

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzei()Lcom/google/android/gms/internal/zzahn;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzak;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzair:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzahn;->zzao(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v1, v0

    :cond_e
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzfa()Lcom/google/android/gms/internal/zzajg;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzajg;->zzb(Landroid/graphics/Bitmap;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/ads/internal/zzak;->zzaqd:I

    sget-object v0, Lcom/google/android/gms/internal/zznh;->zzboc:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->zzif()Lcom/google/android/gms/internal/zznf;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zznf;->zzd(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_10

    if-eqz v1, :cond_10

    new-instance v0, Lcom/google/android/gms/ads/internal/zzam;

    iget v1, p0, Lcom/google/android/gms/ads/internal/zzak;->zzaqd:I

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/ads/internal/zzam;-><init>(Lcom/google/android/gms/ads/internal/zzak;I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzagb;->zzpy()Lcom/google/android/gms/internal/zzakv;

    goto/16 :goto_1

    :cond_f
    iget-object v0, v2, Lcom/google/android/gms/internal/zzafo;->zzciy:Lcom/google/android/gms/internal/zzanh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzanh;->zzsz()Lcom/google/android/gms/internal/zzani;

    move-result-object v0

    new-instance v3, Lcom/google/android/gms/ads/internal/zzal;

    invoke-direct {v3, p0, v2}, Lcom/google/android/gms/ads/internal/zzal;-><init>(Lcom/google/android/gms/ads/internal/zzak;Lcom/google/android/gms/internal/zzafo;)V

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/zzani;->zza(Lcom/google/android/gms/internal/zzano;)V

    goto :goto_3

    :cond_10
    new-instance v0, Lcom/google/android/gms/ads/internal/zzao;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzak;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-boolean v1, v1, Lcom/google/android/gms/ads/internal/zzbt;->zzaqo:Z

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzak;->zzdj()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-boolean v6, p0, Lcom/google/android/gms/ads/internal/zzak;->zzaqg:Z

    iget-object v7, p0, Lcom/google/android/gms/ads/internal/zzak;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v7, v7, Lcom/google/android/gms/ads/internal/zzbt;->zzaud:Lcom/google/android/gms/internal/zzafo;

    iget-boolean v7, v7, Lcom/google/android/gms/internal/zzafo;->zzaqv:Z

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/ads/internal/zzao;-><init>(ZZZFIZZ)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzak;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzbt;->zzaud:Lcom/google/android/gms/internal/zzafo;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzafo;->zzciy:Lcom/google/android/gms/internal/zzanh;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzanh;->getRequestedOrientation()I

    move-result v6

    if-ne v6, v5, :cond_11

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzak;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzbt;->zzaud:Lcom/google/android/gms/internal/zzafo;

    iget v6, v1, Lcom/google/android/gms/internal/zzafo;->orientation:I

    :cond_11
    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzak;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzbt;->zzaud:Lcom/google/android/gms/internal/zzafo;

    iget-object v5, v2, Lcom/google/android/gms/internal/zzafo;->zzciy:Lcom/google/android/gms/internal/zzanh;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzak;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v7, v2, Lcom/google/android/gms/ads/internal/zzbt;->zzaty:Lcom/google/android/gms/internal/zzakd;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzak;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzbt;->zzaud:Lcom/google/android/gms/internal/zzafo;

    iget-object v8, v2, Lcom/google/android/gms/internal/zzafo;->zzcpb:Ljava/lang/String;

    move-object v2, p0

    move-object v3, p0

    move-object v4, p0

    move-object v9, v0

    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/internal/zzje;Lcom/google/android/gms/ads/internal/overlay/zzn;Lcom/google/android/gms/ads/internal/overlay/zzq;Lcom/google/android/gms/internal/zzanh;ILcom/google/android/gms/internal/zzakd;Ljava/lang/String;Lcom/google/android/gms/ads/internal/zzao;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzeg()Lcom/google/android/gms/ads/internal/overlay/zzl;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzak;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzair:Landroid/content/Context;

    invoke-static {v0, v1, v10}, Lcom/google/android/gms/ads/internal/overlay/zzl;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;Z)V

    goto/16 :goto_1
.end method

.method protected final zza(Lcom/google/android/gms/internal/zzafp;Lcom/google/android/gms/ads/internal/zzw;Lcom/google/android/gms/internal/zzafb;)Lcom/google/android/gms/internal/zzanh;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzanv;
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzej()Lcom/google/android/gms/internal/zzanr;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzak;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzbt;->zzair:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzak;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzbt;->zzauc:Lcom/google/android/gms/internal/zzjn;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzapa;->zzc(Lcom/google/android/gms/internal/zzjn;)Lcom/google/android/gms/internal/zzapa;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzak;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/zzbt;->zzauc:Lcom/google/android/gms/internal/zzjn;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzjn;->zzbek:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/android/gms/ads/internal/zzak;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v6, v6, Lcom/google/android/gms/ads/internal/zzbt;->zzatx:Lcom/google/android/gms/internal/zzcv;

    iget-object v7, p0, Lcom/google/android/gms/ads/internal/zzak;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v7, v7, Lcom/google/android/gms/ads/internal/zzbt;->zzaty:Lcom/google/android/gms/internal/zzakd;

    iget-object v8, p0, Lcom/google/android/gms/ads/internal/zzak;->zzanj:Lcom/google/android/gms/internal/zznu;

    iget-object v10, p0, Lcom/google/android/gms/ads/internal/zzak;->zzanr:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v11, p1, Lcom/google/android/gms/internal/zzafp;->zzcxw:Lcom/google/android/gms/internal/zzis;

    move-object v9, p0

    invoke-virtual/range {v0 .. v11}, Lcom/google/android/gms/internal/zzanr;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzapa;Ljava/lang/String;ZZLcom/google/android/gms/internal/zzcv;Lcom/google/android/gms/internal/zzakd;Lcom/google/android/gms/internal/zznu;Lcom/google/android/gms/ads/internal/zzbl;Lcom/google/android/gms/ads/internal/zzv;Lcom/google/android/gms/internal/zzis;)Lcom/google/android/gms/internal/zzanh;

    move-result-object v10

    invoke-interface {v10}, Lcom/google/android/gms/internal/zzanh;->zzsz()Lcom/google/android/gms/internal/zzani;

    move-result-object v0

    const/4 v2, 0x0

    sget-object v1, Lcom/google/android/gms/internal/zznh;->zzbki:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->zzif()Lcom/google/android/gms/internal/zznf;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/zznf;->zzd(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const/4 v8, 0x0

    move-object v1, p0

    move-object v3, p0

    move-object v4, p0

    move-object v6, p0

    move-object v7, p2

    move-object v9, p3

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/gms/internal/zzani;->zza(Lcom/google/android/gms/internal/zzje;Lcom/google/android/gms/ads/internal/overlay/zzn;Lcom/google/android/gms/ads/internal/gmsg/zzb;Lcom/google/android/gms/ads/internal/overlay/zzq;ZLcom/google/android/gms/ads/internal/gmsg/zzx;Lcom/google/android/gms/ads/internal/zzw;Lcom/google/android/gms/internal/zzxc;Lcom/google/android/gms/internal/zzafb;)V

    invoke-virtual {p0, v10}, Lcom/google/android/gms/ads/internal/zzi;->zza(Lcom/google/android/gms/internal/zzanh;)V

    iget-object v0, p1, Lcom/google/android/gms/internal/zzafp;->zzcqv:Lcom/google/android/gms/internal/zzaat;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaat;->zzcnq:Ljava/lang/String;

    invoke-interface {v10, v0}, Lcom/google/android/gms/internal/zzanh;->zzda(Ljava/lang/String;)V

    invoke-interface {v10}, Lcom/google/android/gms/internal/zzanh;->zzsz()Lcom/google/android/gms/internal/zzani;

    move-result-object v0

    const-string v1, "/reward"

    new-instance v2, Lcom/google/android/gms/ads/internal/gmsg/zzaf;

    invoke-direct {v2, p0}, Lcom/google/android/gms/ads/internal/gmsg/zzaf;-><init>(Lcom/google/android/gms/ads/internal/gmsg/zzag;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzani;->zza(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzt;)V

    return-object v10
.end method

.method public final zza(Lcom/google/android/gms/internal/zzafp;Lcom/google/android/gms/internal/zznu;)V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zznh;->zzblu:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->zzif()Lcom/google/android/gms/internal/zznf;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zznf;->zzd(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/google/android/gms/ads/internal/zzi;->zza(Lcom/google/android/gms/internal/zzafp;Lcom/google/android/gms/internal/zznu;)V

    :goto_0
    return-void

    :cond_0
    iget v0, p1, Lcom/google/android/gms/internal/zzafp;->errorCode:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_1

    invoke-super {p0, p1, p2}, Lcom/google/android/gms/ads/internal/zzi;->zza(Lcom/google/android/gms/internal/zzafp;Lcom/google/android/gms/internal/zznu;)V

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lcom/google/android/gms/internal/zzafp;->zzcxy:Lcom/google/android/gms/internal/zzaax;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzaax;->zzcow:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    iget-object v1, p1, Lcom/google/android/gms/internal/zzafp;->zzcqv:Lcom/google/android/gms/internal/zzaat;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzaat;->zzcnd:Lcom/google/android/gms/internal/zzjj;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/zzak;->zza(Lcom/google/android/gms/internal/zzjj;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzak;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzak;->zzb(Lcom/google/android/gms/internal/zzafp;)Lcom/google/android/gms/internal/zzafp;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzaue:Lcom/google/android/gms/internal/zzafp;

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzak;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzaue:Lcom/google/android/gms/internal/zzafp;

    invoke-super {p0, v0, p2}, Lcom/google/android/gms/ads/internal/zzi;->zza(Lcom/google/android/gms/internal/zzafp;Lcom/google/android/gms/internal/zznu;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final zza(ZF)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/zzak;->zzaqe:Z

    iput p2, p0, Lcom/google/android/gms/ads/internal/zzak;->zzaqf:F

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzafo;Lcom/google/android/gms/internal/zzafo;)Z
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/google/android/gms/ads/internal/zzi;->zza(Lcom/google/android/gms/internal/zzafo;Lcom/google/android/gms/internal/zzafo;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzak;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzbt;->zzfk()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzak;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzauy:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/google/android/gms/internal/zzafo;->zzcxj:Lorg/json/JSONObject;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzak;->zzanq:Lcom/google/android/gms/internal/zzfs;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzak;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzbt;->zzauc:Lcom/google/android/gms/internal/zzjn;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzak;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzbt;->zzauy:Landroid/view/View;

    invoke-virtual {v0, v1, p2, v2}, Lcom/google/android/gms/internal/zzfs;->zza(Lcom/google/android/gms/internal/zzjn;Lcom/google/android/gms/internal/zzafo;Landroid/view/View;)V

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected final zza(Lcom/google/android/gms/internal/zzjj;Lcom/google/android/gms/internal/zzafo;Z)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzak;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzbt;->zzfk()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/google/android/gms/internal/zzafo;->zzciy:Lcom/google/android/gms/internal/zzanh;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzek()Lcom/google/android/gms/internal/zzaht;

    iget-object v0, p2, Lcom/google/android/gms/internal/zzafo;->zzciy:Lcom/google/android/gms/internal/zzanh;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaht;->zzi(Lcom/google/android/gms/internal/zzanh;)Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzak;->zzann:Lcom/google/android/gms/ads/internal/zzbi;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzbi;->zzdx()Z

    move-result v0

    return v0
.end method

.method public final zza(Lcom/google/android/gms/internal/zzjj;Lcom/google/android/gms/internal/zznu;)Z
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzak;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzaud:Lcom/google/android/gms/internal/zzafo;

    if-eqz v0, :cond_0

    const-string v0, "An interstitial is already loading. Aborting."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzagf;->zzcu(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzak;->zzaqh:Lcom/google/android/gms/internal/zzafe;

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzak;->zza(Lcom/google/android/gms/internal/zzjj;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzfd()Lcom/google/android/gms/internal/zzaff;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzak;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzbt;->zzair:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaff;->zzt(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzak;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzatw:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/zzafe;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzak;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzbt;->zzair:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzak;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzbt;->zzatw:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzafe;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzak;->zzaqh:Lcom/google/android/gms/internal/zzafe;

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/ads/internal/zzi;->zza(Lcom/google/android/gms/internal/zzjj;Lcom/google/android/gms/internal/zznu;)Z

    move-result v0

    goto :goto_0
.end method

.method public final zzb(Lcom/google/android/gms/internal/zzaeq;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzak;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzaud:Lcom/google/android/gms/internal/zzafo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzak;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzaud:Lcom/google/android/gms/internal/zzafo;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzafo;->zzcpn:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzei()Lcom/google/android/gms/internal/zzahn;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzak;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzair:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzak;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzbt;->zzaty:Lcom/google/android/gms/internal/zzakd;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzakd;->zzcv:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzak;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzbt;->zzaud:Lcom/google/android/gms/internal/zzafo;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzafo;->zzcpn:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/zzahn;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzak;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzaud:Lcom/google/android/gms/internal/zzafo;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzafo;->zzcpl:Lcom/google/android/gms/internal/zzaeq;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzak;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzaud:Lcom/google/android/gms/internal/zzafo;

    iget-object p1, v0, Lcom/google/android/gms/internal/zzafo;->zzcpl:Lcom/google/android/gms/internal/zzaeq;

    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/internal/zza;->zza(Lcom/google/android/gms/internal/zzaeq;)V

    return-void
.end method

.method protected final zzbv()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzak;->zzdk()V

    invoke-super {p0}, Lcom/google/android/gms/ads/internal/zzi;->zzbv()V

    return-void
.end method

.method protected final zzby()V
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/ads/internal/zzi;->zzby()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzak;->zzaqc:Z

    return-void
.end method

.method public final zzcg()V
    .locals 2

    invoke-super {p0}, Lcom/google/android/gms/ads/internal/zzi;->zzcg()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzak;->zzanq:Lcom/google/android/gms/internal/zzfs;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzak;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzbt;->zzaud:Lcom/google/android/gms/internal/zzafo;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzfs;->zzh(Lcom/google/android/gms/internal/zzafo;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzak;->zzaqh:Lcom/google/android/gms/internal/zzafe;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzak;->zzaqh:Lcom/google/android/gms/internal/zzafe;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzafe;->zzu(Z)V

    :cond_0
    return-void
.end method

.method public final zzch()V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzd;->recordImpression()V

    invoke-super {p0}, Lcom/google/android/gms/ads/internal/zzi;->zzch()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzak;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzaud:Lcom/google/android/gms/internal/zzafo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzak;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzaud:Lcom/google/android/gms/internal/zzafo;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzafo;->zzciy:Lcom/google/android/gms/internal/zzanh;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzak;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzaud:Lcom/google/android/gms/internal/zzafo;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzafo;->zzciy:Lcom/google/android/gms/internal/zzanh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzanh;->zzsz()Lcom/google/android/gms/internal/zzani;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzani;->zztt()V

    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzfd()Lcom/google/android/gms/internal/zzaff;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzak;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzbt;->zzair:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaff;->zzt(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzak;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzaud:Lcom/google/android/gms/internal/zzafo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzak;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzaud:Lcom/google/android/gms/internal/zzafo;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzafo;->zzciy:Lcom/google/android/gms/internal/zzanh;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzfd()Lcom/google/android/gms/internal/zzaff;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzak;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzbt;->zzaud:Lcom/google/android/gms/internal/zzafo;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzafo;->zzciy:Lcom/google/android/gms/internal/zzanh;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzanh;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzak;->zzaqi:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzaff;->zzd(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzak;->zzaqh:Lcom/google/android/gms/internal/zzafe;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzak;->zzaqh:Lcom/google/android/gms/internal/zzafe;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzafe;->zzu(Z)V

    :cond_2
    return-void
.end method

.method public final zzd(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzak;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iput-boolean p1, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzaqo:Z

    return-void
.end method

.method protected final zzdj()Z
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzak;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzair:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzak;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzair:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_2

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    if-eqz v0, :cond_3

    iget v0, v3, Landroid/graphics/Rect;->bottom:I

    if-eqz v0, :cond_3

    iget v0, v2, Landroid/graphics/Rect;->top:I

    iget v2, v3, Landroid/graphics/Rect;->top:I

    if-ne v0, v2, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final zzdk()V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzfa()Lcom/google/android/gms/internal/zzajg;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/ads/internal/zzak;->zzaqd:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzajg;->zzb(Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzak;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzbt;->zzfk()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzak;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzbt;->zzfi()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzak;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzaud:Lcom/google/android/gms/internal/zzafo;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzak;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iput-boolean v2, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzaqo:Z

    iput-boolean v2, p0, Lcom/google/android/gms/ads/internal/zzak;->zzaqc:Z

    :cond_0
    return-void
.end method

.method public final zzdl()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzak;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzaud:Lcom/google/android/gms/internal/zzafo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzak;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzaud:Lcom/google/android/gms/internal/zzafo;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzafo;->zzcxo:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzei()Lcom/google/android/gms/internal/zzahn;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzak;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzair:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzak;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzbt;->zzaty:Lcom/google/android/gms/internal/zzakd;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzakd;->zzcv:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzak;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzbt;->zzaud:Lcom/google/android/gms/internal/zzafo;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzafo;->zzcxo:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/zzahn;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zza;->zzcb()V

    return-void
.end method
