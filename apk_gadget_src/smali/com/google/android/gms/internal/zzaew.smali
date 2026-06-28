.class public final Lcom/google/android/gms/internal/zzaew;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzafc;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# instance fields
.field private zzcwo:Lcom/google/android/gms/internal/zzafd;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzafd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaew;->zzcwo:Lcom/google/android/gms/internal/zzafd;

    return-void
.end method


# virtual methods
.method public final zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzakd;Lcom/google/android/gms/internal/zzaax;)Lcom/google/android/gms/internal/zzafb;
    .locals 6

    iget-object v0, p3, Lcom/google/android/gms/internal/zzaax;->zzcpr:Lcom/google/android/gms/internal/zzaey;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzaes;

    iget-object v3, p3, Lcom/google/android/gms/internal/zzaax;->zzcpr:Lcom/google/android/gms/internal/zzaey;

    iget-object v4, p3, Lcom/google/android/gms/internal/zzaax;->zzcja:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzaew;->zzcwo:Lcom/google/android/gms/internal/zzafd;

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzaes;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzakd;Lcom/google/android/gms/internal/zzaey;Ljava/lang/String;Lcom/google/android/gms/internal/zzafd;)V

    goto :goto_0
.end method
