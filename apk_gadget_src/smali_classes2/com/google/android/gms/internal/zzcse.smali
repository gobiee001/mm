.class public final Lcom/google/android/gms/internal/zzcse;
.super Lcom/google/android/gms/internal/zzbfm;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzcse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzjnr:Lcom/google/android/gms/internal/zzcqr;

.field private final zzjnt:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzcsf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzcsf;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzcse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/internal/zzcse;-><init>(Lcom/google/android/gms/internal/zzcqr;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "com.google.android.gms.nearby.internal.connection.IResultListener"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/zzcqr;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/gms/internal/zzcqr;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/zzcqt;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzcqt;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/zzcqr;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbfm;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcse;->zzjnr:Lcom/google/android/gms/internal/zzcqr;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcse;->zzjnt:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/internal/zzcse;

    if-eqz v2, :cond_3

    check-cast p1, Lcom/google/android/gms/internal/zzcse;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcse;->zzjnr:Lcom/google/android/gms/internal/zzcqr;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcse;->zzjnr:Lcom/google/android/gms/internal/zzcqr;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzbg;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcse;->zzjnt:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcse;->zzjnt:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzbg;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcse;->zzjnr:Lcom/google/android/gms/internal/zzcqr;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcse;->zzjnt:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbfp;->zze(Landroid/os/Parcel;)I

    move-result v1

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcse;->zzjnr:Lcom/google/android/gms/internal/zzcqr;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v2, v0, v3}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/4 v0, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcse;->zzjnt:Ljava/lang/String;

    invoke-static {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/zzbfp;->zzai(Landroid/os/Parcel;I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcse;->zzjnr:Lcom/google/android/gms/internal/zzcqr;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzcqr;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method
