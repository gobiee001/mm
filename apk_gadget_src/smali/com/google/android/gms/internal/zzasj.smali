.class final Lcom/google/android/gms/internal/zzasj;
.super Lcom/google/android/gms/internal/zzapz;

# interfaces
.implements Lcom/google/android/gms/internal/zzarc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzapz;",
        "Lcom/google/android/gms/internal/zzarc",
        "<",
        "Lcom/google/android/gms/internal/zzask;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzdzc:Lcom/google/android/gms/internal/zzask;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzaqc;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzapz;-><init>(Lcom/google/android/gms/internal/zzaqc;)V

    new-instance v0, Lcom/google/android/gms/internal/zzask;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzask;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzasj;->zzdzc:Lcom/google/android/gms/internal/zzask;

    return-void
.end method


# virtual methods
.method public final zzc(Ljava/lang/String;Z)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "ga_autoActivityTracking"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzasj;->zzdzc:Lcom/google/android/gms/internal/zzask;

    if-eqz p2, :cond_0

    :goto_0
    iput v0, v2, Lcom/google/android/gms/internal/zzask;->zzdzf:I

    :goto_1
    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    const-string v2, "ga_anonymizeIp"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzasj;->zzdzc:Lcom/google/android/gms/internal/zzask;

    if-eqz p2, :cond_2

    :goto_2
    iput v0, v2, Lcom/google/android/gms/internal/zzask;->zzdzg:I

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2

    :cond_3
    const-string v2, "ga_reportUncaughtExceptions"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/zzasj;->zzdzc:Lcom/google/android/gms/internal/zzask;

    if-eqz p2, :cond_4

    :goto_3
    iput v0, v2, Lcom/google/android/gms/internal/zzask;->zzdzh:I

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_3

    :cond_5
    const-string v0, "bool configuration name not recognized"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/zzapz;->zzd(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public final zzd(Ljava/lang/String;I)V
    .locals 1

    const-string v0, "ga_sessionTimeout"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzasj;->zzdzc:Lcom/google/android/gms/internal/zzask;

    iput p2, v0, Lcom/google/android/gms/internal/zzask;->zzdze:I

    :goto_0
    return-void

    :cond_0
    const-string v0, "int configuration name not recognized"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/zzapz;->zzd(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final zzi(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzasj;->zzdzc:Lcom/google/android/gms/internal/zzask;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzask;->zzdzi:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final zzj(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "ga_trackingId"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzasj;->zzdzc:Lcom/google/android/gms/internal/zzask;

    iput-object p2, v0, Lcom/google/android/gms/internal/zzask;->zzdom:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const-string v0, "ga_sampleFrequency"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzasj;->zzdzc:Lcom/google/android/gms/internal/zzask;

    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/gms/internal/zzask;->zzdzd:D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Error parsing ga_sampleFrequency value"

    invoke-virtual {p0, v1, p2, v0}, Lcom/google/android/gms/internal/zzapz;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-string v0, "string configuration name not recognized"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/zzapz;->zzd(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final synthetic zzyo()Lcom/google/android/gms/internal/zzara;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzasj;->zzdzc:Lcom/google/android/gms/internal/zzask;

    return-object v0
.end method
