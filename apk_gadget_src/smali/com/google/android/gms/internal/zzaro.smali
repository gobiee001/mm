.class final Lcom/google/android/gms/internal/zzaro;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzarc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzarc",
        "<",
        "Lcom/google/android/gms/internal/zzarp;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzdta:Lcom/google/android/gms/internal/zzaqc;

.field private final zzdxp:Lcom/google/android/gms/internal/zzarp;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzaqc;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaro;->zzdta:Lcom/google/android/gms/internal/zzaqc;

    new-instance v0, Lcom/google/android/gms/internal/zzarp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzarp;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaro;->zzdxp:Lcom/google/android/gms/internal/zzarp;

    return-void
.end method


# virtual methods
.method public final zzc(Ljava/lang/String;Z)V
    .locals 2

    const-string v0, "ga_dryRun"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaro;->zzdxp:Lcom/google/android/gms/internal/zzarp;

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, v1, Lcom/google/android/gms/internal/zzarp;->zzdxs:I

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaro;->zzdta:Lcom/google/android/gms/internal/zzaqc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaqc;->zzwt()Lcom/google/android/gms/internal/zzarv;

    move-result-object v0

    const-string v1, "Bool xml configuration name not recognized"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/zzapz;->zzd(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public final zzd(Ljava/lang/String;I)V
    .locals 2

    const-string v0, "ga_dispatchPeriod"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaro;->zzdxp:Lcom/google/android/gms/internal/zzarp;

    iput p2, v0, Lcom/google/android/gms/internal/zzarp;->zzdxr:I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaro;->zzdta:Lcom/google/android/gms/internal/zzaqc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaqc;->zzwt()Lcom/google/android/gms/internal/zzarv;

    move-result-object v0

    const-string v1, "Int xml configuration name not recognized"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/zzapz;->zzd(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final zzi(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final zzj(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "ga_appName"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaro;->zzdxp:Lcom/google/android/gms/internal/zzarp;

    iput-object p2, v0, Lcom/google/android/gms/internal/zzarp;->zzdqz:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const-string v0, "ga_appVersion"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaro;->zzdxp:Lcom/google/android/gms/internal/zzarp;

    iput-object p2, v0, Lcom/google/android/gms/internal/zzarp;->zzdra:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v0, "ga_logLevel"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaro;->zzdxp:Lcom/google/android/gms/internal/zzarp;

    iput-object p2, v0, Lcom/google/android/gms/internal/zzarp;->zzdxq:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaro;->zzdta:Lcom/google/android/gms/internal/zzaqc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaqc;->zzwt()Lcom/google/android/gms/internal/zzarv;

    move-result-object v0

    const-string v1, "String xml configuration name not recognized"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/zzapz;->zzd(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final synthetic zzyo()Lcom/google/android/gms/internal/zzara;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaro;->zzdxp:Lcom/google/android/gms/internal/zzarp;

    return-object v0
.end method
