.class public final Lcom/google/android/gms/drive/zzq;
.super Lcom/google/android/gms/drive/ExecutionOptions$Builder;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/drive/ExecutionOptions$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic build()Lcom/google/android/gms/drive/ExecutionOptions;
    .locals 7

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/drive/ExecutionOptions$Builder;->zzaoh()V

    new-instance v0, Lcom/google/android/gms/drive/zzo;

    iget-object v1, p0, Lcom/google/android/gms/drive/zzq;->zzgju:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/google/android/gms/drive/zzq;->zzgjv:Z

    iget v5, p0, Lcom/google/android/gms/drive/zzq;->zzgjw:I

    move-object v4, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/drive/zzo;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILcom/google/android/gms/drive/zzp;)V

    return-object v0
.end method

.method public final synthetic setConflictStrategy(I)Lcom/google/android/gms/drive/ExecutionOptions$Builder;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final synthetic setNotifyOnCompletion(Z)Lcom/google/android/gms/drive/ExecutionOptions$Builder;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/gms/drive/ExecutionOptions$Builder;->setNotifyOnCompletion(Z)Lcom/google/android/gms/drive/ExecutionOptions$Builder;

    return-object p0
.end method

.method public final synthetic setTrackingTag(Ljava/lang/String;)Lcom/google/android/gms/drive/ExecutionOptions$Builder;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/gms/drive/ExecutionOptions$Builder;->setTrackingTag(Ljava/lang/String;)Lcom/google/android/gms/drive/ExecutionOptions$Builder;

    return-object p0
.end method
