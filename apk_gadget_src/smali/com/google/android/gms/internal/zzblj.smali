.class public final Lcom/google/android/gms/internal/zzblj;
.super Lcom/google/android/gms/internal/zzbfm;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzblj;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzgju:Ljava/lang/String;

.field private zzgjx:Ljava/lang/String;

.field private zzgmi:Lcom/google/android/gms/drive/zzc;

.field private zzgmt:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

.field private zzgmu:Ljava/lang/Integer;

.field private zzgmv:Lcom/google/android/gms/drive/DriveId;

.field private zzgmw:Z

.field private zzgmx:I

.field private zzgmy:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzblk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzblk;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzblj;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/drive/DriveId;Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;IILcom/google/android/gms/drive/zzo;)V
    .locals 10

    const/4 v3, 0x0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p5}, Lcom/google/android/gms/drive/ExecutionOptions;->zzaof()Z

    move-result v5

    invoke-virtual {p5}, Lcom/google/android/gms/drive/ExecutionOptions;->zzaoe()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p5}, Lcom/google/android/gms/drive/ExecutionOptions;->zzaog()I

    move-result v7

    invoke-virtual {p5}, Lcom/google/android/gms/drive/zzo;->zzaoi()Ljava/lang/String;

    move-result-object v9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v8, p3

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/zzblj;-><init>(Lcom/google/android/gms/drive/DriveId;Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;Lcom/google/android/gms/drive/zzc;Ljava/lang/Integer;ZLjava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/drive/DriveId;Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;Lcom/google/android/gms/drive/zzc;Ljava/lang/Integer;ZLjava/lang/String;IILjava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbfm;-><init>()V

    if-eqz p3, :cond_0

    if-eqz p8, :cond_0

    invoke-virtual {p3}, Lcom/google/android/gms/drive/zzc;->getRequestId()I

    move-result v0

    if-ne v0, p8, :cond_2

    const/4 v0, 0x1

    :goto_0
    const-string v1, "inconsistent contents reference"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzbq;->checkArgument(ZLjava/lang/Object;)V

    :cond_0
    if-eqz p4, :cond_1

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    if-nez p3, :cond_3

    if-nez p8, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Need a valid contents"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/drive/DriveId;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzblj;->zzgmv:Lcom/google/android/gms/drive/DriveId;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzblj;->zzgmt:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzblj;->zzgmi:Lcom/google/android/gms/drive/zzc;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzblj;->zzgmu:Ljava/lang/Integer;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzblj;->zzgju:Ljava/lang/String;

    iput p7, p0, Lcom/google/android/gms/internal/zzblj;->zzgmx:I

    iput-boolean p5, p0, Lcom/google/android/gms/internal/zzblj;->zzgmw:Z

    iput p8, p0, Lcom/google/android/gms/internal/zzblj;->zzgmy:I

    iput-object p9, p0, Lcom/google/android/gms/internal/zzblj;->zzgjx:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbfp;->zze(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzblj;->zzgmv:Lcom/google/android/gms/drive/DriveId;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzblj;->zzgmt:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/zzblj;->zzgmi:Lcom/google/android/gms/drive/zzc;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/internal/zzblj;->zzgmu:Ljava/lang/Integer;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;ILjava/lang/Integer;Z)V

    const/4 v1, 0x6

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzblj;->zzgmw:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;IZ)V

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/gms/internal/zzblj;->zzgju:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0x8

    iget v2, p0, Lcom/google/android/gms/internal/zzblj;->zzgmx:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/zzbfp;->zzc(Landroid/os/Parcel;II)V

    const/16 v1, 0x9

    iget v2, p0, Lcom/google/android/gms/internal/zzblj;->zzgmy:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/zzbfp;->zzc(Landroid/os/Parcel;II)V

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/android/gms/internal/zzblj;->zzgjx:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzbfp;->zzai(Landroid/os/Parcel;I)V

    return-void
.end method
