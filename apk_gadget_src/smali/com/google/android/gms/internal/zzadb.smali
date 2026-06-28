.class public final Lcom/google/android/gms/internal/zzadb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzacf;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# instance fields
.field private zzcup:Lcom/google/android/gms/internal/zztp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zztp",
            "<",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private zzcuu:Lcom/google/android/gms/internal/zztp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zztp",
            "<",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzev()Lcom/google/android/gms/internal/zztq;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/zzakd;->zzrd()Lcom/google/android/gms/internal/zzakd;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/zztq;->zzb(Landroid/content/Context;Lcom/google/android/gms/internal/zzakd;)Lcom/google/android/gms/internal/zztx;

    move-result-object v0

    const-string v1, "google.afma.request.getAdDictionary"

    sget-object v2, Lcom/google/android/gms/internal/zztu;->zzccb:Lcom/google/android/gms/internal/zztt;

    sget-object v3, Lcom/google/android/gms/internal/zztu;->zzccb:Lcom/google/android/gms/internal/zztt;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zztx;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzts;Lcom/google/android/gms/internal/zztr;)Lcom/google/android/gms/internal/zztp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzadb;->zzcuu:Lcom/google/android/gms/internal/zztp;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzev()Lcom/google/android/gms/internal/zztq;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/zzakd;->zzrd()Lcom/google/android/gms/internal/zzakd;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/zztq;->zzb(Landroid/content/Context;Lcom/google/android/gms/internal/zzakd;)Lcom/google/android/gms/internal/zztx;

    move-result-object v0

    const-string v1, "google.afma.sdkConstants.getSdkConstants"

    sget-object v2, Lcom/google/android/gms/internal/zztu;->zzccb:Lcom/google/android/gms/internal/zztt;

    sget-object v3, Lcom/google/android/gms/internal/zztu;->zzccb:Lcom/google/android/gms/internal/zztt;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zztx;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzts;Lcom/google/android/gms/internal/zztr;)Lcom/google/android/gms/internal/zztp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzadb;->zzcup:Lcom/google/android/gms/internal/zztp;

    return-void
.end method


# virtual methods
.method public final zznq()Lcom/google/android/gms/internal/zztp;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/zztp",
            "<",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzadb;->zzcuu:Lcom/google/android/gms/internal/zztp;

    return-object v0
.end method

.method public final zznr()Lcom/google/android/gms/internal/zztp;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/zztp",
            "<",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzadb;->zzcup:Lcom/google/android/gms/internal/zztp;

    return-object v0
.end method
