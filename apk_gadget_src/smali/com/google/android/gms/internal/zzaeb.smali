.class public final Lcom/google/android/gms/internal/zzaeb;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# instance fields
.field public final errorCode:I

.field public final zzcct:Ljava/lang/String;

.field public final zzcex:J

.field private zzcvp:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzaed;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/zzaed;->zza(Lcom/google/android/gms/internal/zzaed;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaeb;->zzcvp:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzaed;->zzb(Lcom/google/android/gms/internal/zzaed;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaeb;->zzcct:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzaed;->zzc(Lcom/google/android/gms/internal/zzaed;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzaeb;->errorCode:I

    invoke-static {p1}, Lcom/google/android/gms/internal/zzaed;->zzd(Lcom/google/android/gms/internal/zzaed;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzaeb;->zzcex:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzaed;Lcom/google/android/gms/internal/zzaec;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzaeb;-><init>(Lcom/google/android/gms/internal/zzaed;)V

    return-void
.end method
