.class final Lcom/google/android/gms/internal/zzctg;
.super Lcom/google/android/gms/internal/zzcte;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzcte",
        "<",
        "Lcom/google/android/gms/nearby/messages/StatusCallback;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzjvj:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzctf;Z)V
    .locals 0

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzctg;->zzjvj:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcte;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zzu(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/google/android/gms/nearby/messages/StatusCallback;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzctg;->zzjvj:Z

    invoke-virtual {p1, v0}, Lcom/google/android/gms/nearby/messages/StatusCallback;->onPermissionChanged(Z)V

    return-void
.end method
