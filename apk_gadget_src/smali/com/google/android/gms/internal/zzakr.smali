.class final synthetic Lcom/google/android/gms/internal/zzakr;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzbzb:Lcom/google/android/gms/internal/zzalf;

.field private final zzdep:Lcom/google/android/gms/internal/zzakv;

.field private final zzdeu:Ljava/lang/Class;

.field private final zzdev:Lcom/google/android/gms/internal/zzakg;

.field private final zzdew:Ljava/util/concurrent/Executor;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzalf;Lcom/google/android/gms/internal/zzakv;Ljava/lang/Class;Lcom/google/android/gms/internal/zzakg;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzakr;->zzbzb:Lcom/google/android/gms/internal/zzalf;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzakr;->zzdep:Lcom/google/android/gms/internal/zzakv;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzakr;->zzdeu:Ljava/lang/Class;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzakr;->zzdev:Lcom/google/android/gms/internal/zzakg;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzakr;->zzdew:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzakr;->zzbzb:Lcom/google/android/gms/internal/zzalf;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzakr;->zzdep:Lcom/google/android/gms/internal/zzakv;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzakr;->zzdeu:Ljava/lang/Class;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzakr;->zzdev:Lcom/google/android/gms/internal/zzakg;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzakr;->zzdew:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzakl;->zza(Lcom/google/android/gms/internal/zzalf;Lcom/google/android/gms/internal/zzakv;Ljava/lang/Class;Lcom/google/android/gms/internal/zzakg;Ljava/util/concurrent/Executor;)V

    return-void
.end method
