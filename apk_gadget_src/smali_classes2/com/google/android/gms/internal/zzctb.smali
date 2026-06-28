.class final Lcom/google/android/gms/internal/zzctb;
.super Lcom/google/android/gms/internal/zzcte;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzcte",
        "<",
        "Lcom/google/android/gms/nearby/messages/MessageListener;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzjvh:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcta;Ljava/util/List;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzctb;->zzjvh:Ljava/util/List;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcte;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zzu(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/google/android/gms/nearby/messages/MessageListener;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzctb;->zzjvh:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzcta;->zza(Ljava/lang/Iterable;Lcom/google/android/gms/nearby/messages/MessageListener;)V

    return-void
.end method
