.class final Lcom/google/android/gms/internal/zzbnb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/ResultCallback",
        "<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbmy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 3

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/zzbmy;->zzapd()Lcom/google/android/gms/common/internal/zzal;

    move-result-object v0

    const-string v1, "DriveContentsImpl"

    const-string v2, "Error discarding contents"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzal;->zzw(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/zzbmy;->zzapd()Lcom/google/android/gms/common/internal/zzal;

    move-result-object v0

    const-string v1, "DriveContentsImpl"

    const-string v2, "Contents discarded"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzal;->zzu(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
