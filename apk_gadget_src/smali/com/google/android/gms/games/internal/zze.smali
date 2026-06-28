.class final Lcom/google/android/gms/games/internal/zze;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/internal/zzn;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/internal/zzn",
        "<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzhpt:Lcom/google/android/gms/common/internal/zzp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/common/internal/zzp;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/games/internal/zze;->zzhpt:Lcom/google/android/gms/common/internal/zzp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic setResult(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/internal/zze;->zzhpt:Lcom/google/android/gms/common/internal/zzp;

    invoke-interface {v0}, Lcom/google/android/gms/common/internal/zzp;->zzajf()V

    return-void
.end method

.method public final zzu(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/internal/zze;->zzhpt:Lcom/google/android/gms/common/internal/zzp;

    invoke-interface {v0}, Lcom/google/android/gms/common/internal/zzp;->zzajf()V

    return-void
.end method
