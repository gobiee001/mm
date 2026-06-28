.class final Lcom/google/android/gms/games/internal/GamesClientImpl$zzbo;
.super Lcom/google/android/gms/games/internal/zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "zzbo"
.end annotation


# instance fields
.field private final zzhpl:Lcom/google/android/gms/games/internal/zzaa;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/games/internal/zzaa;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/zzb;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$zzbo;->zzhpl:Lcom/google/android/gms/games/internal/zzaa;

    return-void
.end method


# virtual methods
.method public final zzarq()Lcom/google/android/gms/games/internal/zzy;
    .locals 2

    new-instance v0, Lcom/google/android/gms/games/internal/zzy;

    iget-object v1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$zzbo;->zzhpl:Lcom/google/android/gms/games/internal/zzaa;

    iget-object v1, v1, Lcom/google/android/gms/games/internal/zzaa;->zzhsm:Lcom/google/android/gms/games/internal/zzac;

    invoke-direct {v0, v1}, Lcom/google/android/gms/games/internal/zzy;-><init>(Lcom/google/android/gms/games/internal/zzac;)V

    return-object v0
.end method
