.class public final Lcom/google/android/gms/drive/zzo;
.super Lcom/google/android/gms/drive/ExecutionOptions;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private zzgjx:Ljava/lang/String;

.field private zzgjy:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p5}, Lcom/google/android/gms/drive/ExecutionOptions;-><init>(Ljava/lang/String;ZI)V

    iput-object p3, p0, Lcom/google/android/gms/drive/zzo;->zzgjx:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/drive/zzo;->zzgjy:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILcom/google/android/gms/drive/zzp;)V
    .locals 6

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v3

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/drive/zzo;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static zza(Lcom/google/android/gms/drive/ExecutionOptions;)Lcom/google/android/gms/drive/zzo;
    .locals 2

    new-instance v0, Lcom/google/android/gms/drive/zzq;

    invoke-direct {v0}, Lcom/google/android/gms/drive/zzq;-><init>()V

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/drive/ExecutionOptions;->zzaog()I

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "May not set a conflict strategy for new file creation."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/drive/ExecutionOptions;->zzaoe()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/drive/ExecutionOptions$Builder;->setTrackingTag(Ljava/lang/String;)Lcom/google/android/gms/drive/ExecutionOptions$Builder;

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/drive/ExecutionOptions;->zzaof()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/drive/ExecutionOptions$Builder;->setNotifyOnCompletion(Z)Lcom/google/android/gms/drive/ExecutionOptions$Builder;

    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/drive/ExecutionOptions$Builder;->build()Lcom/google/android/gms/drive/ExecutionOptions;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/drive/zzo;

    return-object v0
.end method


# virtual methods
.method public final zzaoi()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/drive/zzo;->zzgjx:Ljava/lang/String;

    return-object v0
.end method

.method public final zzaoj()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/drive/zzo;->zzgjy:Ljava/lang/String;

    return-object v0
.end method
