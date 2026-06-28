.class public final Lcom/google/android/gms/internal/zzua;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zztp;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zztp",
        "<TI;TO;>;"
    }
.end annotation


# instance fields
.field private final zzccg:Lcom/google/android/gms/ads/internal/js/zzn;

.field private final zzcch:Lcom/google/android/gms/internal/zztr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zztr",
            "<TO;>;"
        }
    .end annotation
.end field

.field private final zzcci:Lcom/google/android/gms/internal/zzts;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzts",
            "<TI;>;"
        }
    .end annotation
.end field

.field private final zzccj:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/js/zzn;Ljava/lang/String;Lcom/google/android/gms/internal/zzts;Lcom/google/android/gms/internal/zztr;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/ads/internal/js/zzn;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzts",
            "<TI;>;",
            "Lcom/google/android/gms/internal/zztr",
            "<TO;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzua;->zzccg:Lcom/google/android/gms/ads/internal/js/zzn;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzua;->zzccj:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzua;->zzcci:Lcom/google/android/gms/internal/zzts;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzua;->zzcch:Lcom/google/android/gms/internal/zztr;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzua;)Lcom/google/android/gms/internal/zztr;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzua;->zzcch:Lcom/google/android/gms/internal/zztr;

    return-object v0
.end method

.method private final zza(Lcom/google/android/gms/ads/internal/js/zzaa;Lcom/google/android/gms/ads/internal/js/zzaj;Ljava/lang/Object;Lcom/google/android/gms/internal/zzalf;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/ads/internal/js/zzaa;",
            "Lcom/google/android/gms/ads/internal/js/zzaj;",
            "TI;",
            "Lcom/google/android/gms/internal/zzalf",
            "<TO;>;)V"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzei()Lcom/google/android/gms/internal/zzahn;

    invoke-static {}, Lcom/google/android/gms/internal/zzahn;->zzqb()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/ads/internal/gmsg/zzd;->zzbxl:Lcom/google/android/gms/ads/internal/gmsg/zzad;

    new-instance v2, Lcom/google/android/gms/internal/zzud;

    invoke-direct {v2, p0, p1, p4}, Lcom/google/android/gms/internal/zzud;-><init>(Lcom/google/android/gms/internal/zzua;Lcom/google/android/gms/ads/internal/js/zzaa;Lcom/google/android/gms/internal/zzalf;)V

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/ads/internal/gmsg/zzad;->zza(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzae;)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "id"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "args"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzua;->zzcci:Lcom/google/android/gms/internal/zzts;

    invoke-interface {v2, p3}, Lcom/google/android/gms/internal/zzts;->zzh(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzua;->zzccj:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, Lcom/google/android/gms/ads/internal/js/zzaj;->zzb(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {p4, v0}, Lcom/google/android/gms/internal/zzalf;->setException(Ljava/lang/Throwable;)V

    const-string v1, "Unable to invokeJavaScript"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzagf;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/js/zzaa;->release()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/js/zzaa;->release()V

    throw v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzua;Lcom/google/android/gms/ads/internal/js/zzaa;Lcom/google/android/gms/ads/internal/js/zzaj;Ljava/lang/Object;Lcom/google/android/gms/internal/zzalf;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzua;->zza(Lcom/google/android/gms/ads/internal/js/zzaa;Lcom/google/android/gms/ads/internal/js/zzaj;Ljava/lang/Object;Lcom/google/android/gms/internal/zzalf;)V

    return-void
.end method


# virtual methods
.method public final zzc(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzakv;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)",
            "Lcom/google/android/gms/internal/zzakv",
            "<TO;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzua;->zzg(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzakv;

    move-result-object v0

    return-object v0
.end method

.method public final zzg(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzakv;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)",
            "Lcom/google/android/gms/internal/zzakv",
            "<TO;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzalf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzalf;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzua;->zzccg:Lcom/google/android/gms/ads/internal/js/zzn;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/internal/js/zzn;->zzb(Lcom/google/android/gms/internal/zzcv;)Lcom/google/android/gms/ads/internal/js/zzaa;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzub;

    invoke-direct {v2, p0, v1, p1, v0}, Lcom/google/android/gms/internal/zzub;-><init>(Lcom/google/android/gms/internal/zzua;Lcom/google/android/gms/ads/internal/js/zzaa;Ljava/lang/Object;Lcom/google/android/gms/internal/zzalf;)V

    new-instance v3, Lcom/google/android/gms/internal/zzuc;

    invoke-direct {v3, p0, v0, v1}, Lcom/google/android/gms/internal/zzuc;-><init>(Lcom/google/android/gms/internal/zzua;Lcom/google/android/gms/internal/zzalf;Lcom/google/android/gms/ads/internal/js/zzaa;)V

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/zzall;->zza(Lcom/google/android/gms/internal/zzalk;Lcom/google/android/gms/internal/zzali;)V

    return-object v0
.end method
