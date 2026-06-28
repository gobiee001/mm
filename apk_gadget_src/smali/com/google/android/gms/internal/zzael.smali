.class public final Lcom/google/android/gms/internal/zzael;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# instance fields
.field private final zzcel:Lcom/google/android/gms/internal/zzva;

.field private final zzcwb:Lcom/google/android/gms/internal/zzaeg;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzva;Lcom/google/android/gms/internal/zzaef;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzael;->zzcel:Lcom/google/android/gms/internal/zzva;

    new-instance v0, Lcom/google/android/gms/internal/zzaeg;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/zzaeg;-><init>(Lcom/google/android/gms/internal/zzaef;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzael;->zzcwb:Lcom/google/android/gms/internal/zzaeg;

    return-void
.end method


# virtual methods
.method public final zzoi()Lcom/google/android/gms/internal/zzva;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzael;->zzcel:Lcom/google/android/gms/internal/zzva;

    return-object v0
.end method

.method public final zzoj()Lcom/google/android/gms/internal/zzaeg;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzael;->zzcwb:Lcom/google/android/gms/internal/zzaeg;

    return-object v0
.end method
