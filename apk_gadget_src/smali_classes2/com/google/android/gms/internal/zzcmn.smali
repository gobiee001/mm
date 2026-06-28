.class public final Lcom/google/android/gms/internal/zzcmn;
.super Lcom/google/android/gms/internal/zzbfm;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzcmn;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzjnr:Lcom/google/android/gms/internal/zzcqr;

.field private final zzjns:Lcom/google/android/gms/internal/zzcpy;

.field private final zzjnt:Ljava/lang/String;

.field private final zzjnu:[B

.field private final zzjnv:Lcom/google/android/gms/internal/zzcqo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzcmo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzcmo;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzcmn;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;[BLandroid/os/IBinder;)V
    .locals 6

    const/4 v5, 0x0

    if-nez p1, :cond_0

    move-object v1, v5

    :goto_0
    if-nez p2, :cond_2

    move-object v2, v5

    :goto_1
    if-nez p5, :cond_4

    :goto_2
    move-object v0, p0

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzcmn;-><init>(Lcom/google/android/gms/internal/zzcqr;Lcom/google/android/gms/internal/zzcpy;Ljava/lang/String;[BLcom/google/android/gms/internal/zzcqo;)V

    return-void

    :cond_0
    const-string v0, "com.google.android.gms.nearby.internal.connection.IResultListener"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/zzcqr;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/gms/internal/zzcqr;

    move-object v1, v0

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/zzcqt;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/zzcqt;-><init>(Landroid/os/IBinder;)V

    goto :goto_0

    :cond_2
    const-string v0, "com.google.android.gms.nearby.internal.connection.IConnectionEventListener"

    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v2, v0, Lcom/google/android/gms/internal/zzcpy;

    if-eqz v2, :cond_3

    check-cast v0, Lcom/google/android/gms/internal/zzcpy;

    move-object v2, v0

    goto :goto_1

    :cond_3
    new-instance v2, Lcom/google/android/gms/internal/zzcqa;

    invoke-direct {v2, p2}, Lcom/google/android/gms/internal/zzcqa;-><init>(Landroid/os/IBinder;)V

    goto :goto_1

    :cond_4
    const-string v0, "com.google.android.gms.nearby.internal.connection.IPayloadListener"

    invoke-interface {p5, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v3, v0, Lcom/google/android/gms/internal/zzcqo;

    if-eqz v3, :cond_5

    check-cast v0, Lcom/google/android/gms/internal/zzcqo;

    move-object v5, v0

    goto :goto_2

    :cond_5
    new-instance v5, Lcom/google/android/gms/internal/zzcqq;

    invoke-direct {v5, p5}, Lcom/google/android/gms/internal/zzcqq;-><init>(Landroid/os/IBinder;)V

    goto :goto_2
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/zzcqr;Lcom/google/android/gms/internal/zzcpy;Ljava/lang/String;[BLcom/google/android/gms/internal/zzcqo;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbfm;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcmn;->zzjnr:Lcom/google/android/gms/internal/zzcqr;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcmn;->zzjns:Lcom/google/android/gms/internal/zzcpy;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcmn;->zzjnt:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzcmn;->zzjnu:[B

    iput-object p5, p0, Lcom/google/android/gms/internal/zzcmn;->zzjnv:Lcom/google/android/gms/internal/zzcqo;

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
    instance-of v2, p1, Lcom/google/android/gms/internal/zzcmn;

    if-eqz v2, :cond_3

    check-cast p1, Lcom/google/android/gms/internal/zzcmn;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcmn;->zzjnr:Lcom/google/android/gms/internal/zzcqr;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcmn;->zzjnr:Lcom/google/android/gms/internal/zzcqr;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzbg;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcmn;->zzjns:Lcom/google/android/gms/internal/zzcpy;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcmn;->zzjns:Lcom/google/android/gms/internal/zzcpy;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzbg;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcmn;->zzjnt:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcmn;->zzjnt:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzbg;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcmn;->zzjnu:[B

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcmn;->zzjnu:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcmn;->zzjnv:Lcom/google/android/gms/internal/zzcqo;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcmn;->zzjnv:Lcom/google/android/gms/internal/zzcqo;

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

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcmn;->zzjnr:Lcom/google/android/gms/internal/zzcqr;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcmn;->zzjns:Lcom/google/android/gms/internal/zzcpy;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcmn;->zzjnt:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcmn;->zzjnu:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcmn;->zzjnv:Lcom/google/android/gms/internal/zzcqo;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbfp;->zze(Landroid/os/Parcel;)I

    move-result v2

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcmn;->zzjnr:Lcom/google/android/gms/internal/zzcqr;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    invoke-static {p1, v3, v0, v4}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/4 v3, 0x2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcmn;->zzjns:Lcom/google/android/gms/internal/zzcpy;

    if-nez v0, :cond_1

    move-object v0, v1

    :goto_1
    invoke-static {p1, v3, v0, v4}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/4 v0, 0x3

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcmn;->zzjnt:Ljava/lang/String;

    invoke-static {p1, v0, v3, v4}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x4

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcmn;->zzjnu:[B

    invoke-static {p1, v0, v3, v4}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;I[BZ)V

    const/4 v0, 0x5

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcmn;->zzjnv:Lcom/google/android/gms/internal/zzcqo;

    if-nez v3, :cond_2

    :goto_2
    invoke-static {p1, v0, v1, v4}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    invoke-static {p1, v2}, Lcom/google/android/gms/internal/zzbfp;->zzai(Landroid/os/Parcel;I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcmn;->zzjnr:Lcom/google/android/gms/internal/zzcqr;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzcqr;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcmn;->zzjns:Lcom/google/android/gms/internal/zzcpy;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzcpy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcmn;->zzjnv:Lcom/google/android/gms/internal/zzcqo;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzcqo;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    goto :goto_2
.end method
