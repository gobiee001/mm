.class final Lcom/google/android/gms/internal/zzyo;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/internal/gmsg/zzt;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/ads/internal/gmsg/zzt",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzcko:Lcom/google/android/gms/internal/zzym;

.field private synthetic zzckp:Lcom/google/android/gms/internal/zzon;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzym;Lcom/google/android/gms/internal/zzon;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzyo;->zzcko:Lcom/google/android/gms/internal/zzym;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzyo;->zzckp:Lcom/google/android/gms/internal/zzon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "asset"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzyo;->zzcko:Lcom/google/android/gms/internal/zzym;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzyo;->zzckp:Lcom/google/android/gms/internal/zzon;

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/zzym;->zza(Lcom/google/android/gms/internal/zzym;Lcom/google/android/gms/internal/zzqm;Ljava/lang/String;)V

    return-void
.end method
