.class public final Lcom/google/android/gms/internal/zzcbr;
.super Lcom/google/android/gms/internal/zzbfm;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzcbr;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private versionCode:I

.field private zzibr:Lcom/google/android/gms/internal/zzaz;

.field private zzibs:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzcbs;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzcbs;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzcbr;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(I[B)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbfm;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzcbr;->versionCode:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcbr;->zzibr:Lcom/google/android/gms/internal/zzaz;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcbr;->zzibs:[B

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcbr;->zzanj()V

    return-void
.end method

.method private final zzanj()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcbr;->zzibr:Lcom/google/android/gms/internal/zzaz;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcbr;->zzibs:[B

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcbr;->zzibr:Lcom/google/android/gms/internal/zzaz;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcbr;->zzibs:[B

    if-eqz v0, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcbr;->zzibr:Lcom/google/android/gms/internal/zzaz;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcbr;->zzibs:[B

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid internal representation - full"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcbr;->zzibr:Lcom/google/android/gms/internal/zzaz;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcbr;->zzibs:[B

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid internal representation - empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Impossible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbfp;->zze(Landroid/os/Parcel;)I

    move-result v1

    const/4 v0, 0x1

    iget v2, p0, Lcom/google/android/gms/internal/zzcbr;->versionCode:I

    invoke-static {p1, v0, v2}, Lcom/google/android/gms/internal/zzbfp;->zzc(Landroid/os/Parcel;II)V

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcbr;->zzibs:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcbr;->zzibs:[B

    :goto_0
    const/4 v3, 0x0

    invoke-static {p1, v2, v0, v3}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;I[BZ)V

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/zzbfp;->zzai(Landroid/os/Parcel;I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcbr;->zzibr:Lcom/google/android/gms/internal/zzaz;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzfjs;->zzc(Lcom/google/android/gms/internal/zzfjs;)[B

    move-result-object v0

    goto :goto_0
.end method

.method public final zzaur()Lcom/google/android/gms/internal/zzaz;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcbr;->zzibr:Lcom/google/android/gms/internal/zzaz;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcbr;->zzibs:[B

    new-instance v1, Lcom/google/android/gms/internal/zzaz;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzaz;-><init>()V

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzfjs;->zza(Lcom/google/android/gms/internal/zzfjs;[B)Lcom/google/android/gms/internal/zzfjs;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaz;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcbr;->zzibr:Lcom/google/android/gms/internal/zzaz;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcbr;->zzibs:[B
    :try_end_0
    .catch Lcom/google/android/gms/internal/zzfjr; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcbr;->zzanj()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcbr;->zzibr:Lcom/google/android/gms/internal/zzaz;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
