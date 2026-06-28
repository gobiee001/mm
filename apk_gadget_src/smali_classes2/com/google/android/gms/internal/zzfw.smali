.class final Lcom/google/android/gms/internal/zzfw;
.super Landroid/database/ContentObserver;


# instance fields
.field private synthetic zzawn:Lcom/google/android/gms/internal/zzft;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzft;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfw;->zzawn:Lcom/google/android/gms/internal/zzft;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfw;->zzawn:Lcom/google/android/gms/internal/zzft;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzft;->zzfx()V

    return-void
.end method
