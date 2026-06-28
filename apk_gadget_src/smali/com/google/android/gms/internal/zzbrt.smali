.class public final Lcom/google/android/gms/internal/zzbrt;
.super Lcom/google/android/gms/internal/zzbfm;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzbrt;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzaym:Ljava/lang/String;

.field private zzgrh:Landroid/os/ParcelFileDescriptor;

.field private zzgri:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzbru;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbru;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbrt;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/ParcelFileDescriptor;Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbfm;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbrt;->zzgrh:Landroid/os/ParcelFileDescriptor;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbrt;->zzgri:Landroid/os/IBinder;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbrt;->zzaym:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    const/4 v4, 0x0

    or-int/lit8 v0, p2, 0x1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbfp;->zze(Landroid/os/Parcel;)I

    move-result v1

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbrt;->zzgrh:Landroid/os/ParcelFileDescriptor;

    invoke-static {p1, v2, v3, v0, v4}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v0, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbrt;->zzgri:Landroid/os/IBinder;

    invoke-static {p1, v0, v2, v4}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/4 v0, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbrt;->zzaym:Ljava/lang/String;

    invoke-static {p1, v0, v2, v4}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/zzbfp;->zzai(Landroid/os/Parcel;I)V

    return-void
.end method
