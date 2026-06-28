.class final Lcom/google/android/gms/games/zzbv;
.super Lcom/google/android/gms/games/internal/api/zzac;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/games/internal/api/zzac",
        "<",
        "Landroid/content/Intent;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzhnu:Ljava/lang/String;

.field private synthetic zzhnv:Z

.field private synthetic zzhnw:Z

.field private synthetic zzhnx:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/SnapshotsClient;Ljava/lang/String;ZZI)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/games/zzbv;->zzhnu:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/google/android/gms/games/zzbv;->zzhnv:Z

    iput-boolean p4, p0, Lcom/google/android/gms/games/zzbv;->zzhnw:Z

    iput p5, p0, Lcom/google/android/gms/games/zzbv;->zzhnx:I

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/api/zzac;-><init>()V

    return-void
.end method


# virtual methods
.method protected final zza(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/games/internal/GamesClientImpl;",
            "Lcom/google/android/gms/tasks/TaskCompletionSource",
            "<",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/games/zzbv;->zzhnu:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/google/android/gms/games/zzbv;->zzhnv:Z

    iget-boolean v2, p0, Lcom/google/android/gms/games/zzbv;->zzhnw:Z

    iget v3, p0, Lcom/google/android/gms/games/zzbv;->zzhnx:I

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zza(Ljava/lang/String;ZZI)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    return-void
.end method
