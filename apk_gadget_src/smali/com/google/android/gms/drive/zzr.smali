.class public final Lcom/google/android/gms/drive/zzr;
.super Lcom/google/android/gms/drive/ExecutionOptions;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private zzgjz:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;ZIZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/drive/ExecutionOptions;-><init>(Ljava/lang/String;ZI)V

    iput-boolean p4, p0, Lcom/google/android/gms/drive/zzr;->zzgjz:Z

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ZIZLcom/google/android/gms/drive/zzs;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/drive/zzr;-><init>(Ljava/lang/String;ZIZ)V

    return-void
.end method

.method public static zzb(Lcom/google/android/gms/drive/ExecutionOptions;)Lcom/google/android/gms/drive/zzr;
    .locals 2

    new-instance v0, Lcom/google/android/gms/drive/zzt;

    invoke-direct {v0}, Lcom/google/android/gms/drive/zzt;-><init>()V

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/drive/ExecutionOptions;->zzaog()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/drive/ExecutionOptions$Builder;->setConflictStrategy(I)Lcom/google/android/gms/drive/ExecutionOptions$Builder;

    invoke-virtual {p0}, Lcom/google/android/gms/drive/ExecutionOptions;->zzaof()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/drive/ExecutionOptions$Builder;->setNotifyOnCompletion(Z)Lcom/google/android/gms/drive/ExecutionOptions$Builder;

    invoke-virtual {p0}, Lcom/google/android/gms/drive/ExecutionOptions;->zzaoe()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/drive/ExecutionOptions$Builder;->setTrackingTag(Ljava/lang/String;)Lcom/google/android/gms/drive/ExecutionOptions$Builder;

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/drive/ExecutionOptions$Builder;->build()Lcom/google/android/gms/drive/ExecutionOptions;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/drive/zzr;

    return-object v0
.end method


# virtual methods
.method public final zzaok()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/drive/zzr;->zzgjz:Z

    return v0
.end method
