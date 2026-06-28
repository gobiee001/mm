.class abstract Lcom/google/android/gms/internal/zzbml;
.super Lcom/google/android/gms/internal/zzbmm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzbmm",
        "<",
        "Lcom/google/android/gms/drive/DriveApi$zza;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzbmm;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final synthetic zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Lcom/google/android/gms/internal/zzbmk;

    invoke-direct {v0, p1, v1, v1}, Lcom/google/android/gms/internal/zzbmk;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/TransferPreferences;Lcom/google/android/gms/internal/zzblt;)V

    return-object v0
.end method
