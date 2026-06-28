.class final Lcom/google/android/gms/internal/zzapy;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzdsu:Lcom/google/android/gms/internal/zzapr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzapr;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzapy;->zzdsu:Lcom/google/android/gms/internal/zzapr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapy;->zzdsu:Lcom/google/android/gms/internal/zzapr;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzapr;->zza(Lcom/google/android/gms/internal/zzapr;)Lcom/google/android/gms/internal/zzaqo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaqo;->zzye()V

    const/4 v0, 0x0

    return-object v0
.end method
