.class abstract Lcom/google/android/gms/internal/zzbnw;
.super Lcom/google/android/gms/internal/zzbmm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzbmm",
        "<",
        "Lcom/google/android/gms/drive/DrivePreferencesApi$FileUploadPreferencesResult;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzgor:Lcom/google/android/gms/internal/zzbnr;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzbnr;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbnw;->zzgor:Lcom/google/android/gms/internal/zzbnr;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzbmm;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final synthetic zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/google/android/gms/internal/zzbnv;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbnw;->zzgor:Lcom/google/android/gms/internal/zzbnr;

    invoke-direct {v0, v1, p1, v2, v2}, Lcom/google/android/gms/internal/zzbnv;-><init>(Lcom/google/android/gms/internal/zzbnr;Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/FileUploadPreferences;Lcom/google/android/gms/internal/zzbns;)V

    return-object v0
.end method
