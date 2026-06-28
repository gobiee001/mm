.class public final Lcom/google/android/gms/internal/zzwx;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# instance fields
.field private final zzche:Z

.field private final zzchf:Z

.field private final zzchg:Z

.field private final zzchh:Z

.field private final zzchi:Z


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzwz;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/zzwz;->zza(Lcom/google/android/gms/internal/zzwz;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzwx;->zzche:Z

    invoke-static {p1}, Lcom/google/android/gms/internal/zzwz;->zzb(Lcom/google/android/gms/internal/zzwz;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzwx;->zzchf:Z

    invoke-static {p1}, Lcom/google/android/gms/internal/zzwz;->zzc(Lcom/google/android/gms/internal/zzwz;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzwx;->zzchg:Z

    invoke-static {p1}, Lcom/google/android/gms/internal/zzwz;->zzd(Lcom/google/android/gms/internal/zzwz;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzwx;->zzchh:Z

    invoke-static {p1}, Lcom/google/android/gms/internal/zzwz;->zze(Lcom/google/android/gms/internal/zzwz;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzwx;->zzchi:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzwz;Lcom/google/android/gms/internal/zzwy;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzwx;-><init>(Lcom/google/android/gms/internal/zzwz;)V

    return-void
.end method


# virtual methods
.method public final toJson()Lorg/json/JSONObject;
    .locals 3

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "sms"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzwx;->zzche:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "tel"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzwx;->zzchf:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "calendar"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzwx;->zzchg:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "storePicture"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzwx;->zzchh:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "inlineVideo"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzwx;->zzchi:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Error occured while obtaining the MRAID capabilities."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzagf;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method
