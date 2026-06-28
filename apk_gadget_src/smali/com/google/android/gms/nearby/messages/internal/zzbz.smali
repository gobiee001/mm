.class public final Lcom/google/android/gms/nearby/messages/internal/zzbz;
.super Lcom/google/android/gms/internal/zzbfm;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/nearby/messages/internal/zzbz;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzeck:I

.field private zzjrq:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private zzjrr:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private zzjti:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private zzjtk:I

.field private zzjtm:Lcom/google/android/gms/nearby/messages/internal/zzp;

.field private zzjtn:Lcom/google/android/gms/nearby/messages/internal/ClientAppContext;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private zzjus:Lcom/google/android/gms/nearby/messages/internal/zzaf;

.field private zzjut:Lcom/google/android/gms/nearby/messages/Strategy;

.field private zzjuu:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private zzjuv:Lcom/google/android/gms/nearby/messages/internal/zzu;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/nearby/messages/internal/zzca;

    invoke-direct {v0}, Lcom/google/android/gms/nearby/messages/internal/zzca;-><init>()V

    sput-object v0, Lcom/google/android/gms/nearby/messages/internal/zzbz;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/nearby/messages/internal/zzaf;Lcom/google/android/gms/nearby/messages/Strategy;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/IBinder;ZLcom/google/android/gms/nearby/messages/internal/ClientAppContext;I)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbfm;-><init>()V

    iput p1, p0, Lcom/google/android/gms/nearby/messages/internal/zzbz;->zzeck:I

    iput-object p2, p0, Lcom/google/android/gms/nearby/messages/internal/zzbz;->zzjus:Lcom/google/android/gms/nearby/messages/internal/zzaf;

    iput-object p3, p0, Lcom/google/android/gms/nearby/messages/internal/zzbz;->zzjut:Lcom/google/android/gms/nearby/messages/Strategy;

    if-nez p4, :cond_1

    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/zzbz;->zzjtm:Lcom/google/android/gms/nearby/messages/internal/zzp;

    iput-object p5, p0, Lcom/google/android/gms/nearby/messages/internal/zzbz;->zzjrq:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/nearby/messages/internal/zzbz;->zzjti:Ljava/lang/String;

    iput-boolean p7, p0, Lcom/google/android/gms/nearby/messages/internal/zzbz;->zzjuu:Z

    if-nez p8, :cond_3

    :cond_0
    :goto_1
    iput-object v1, p0, Lcom/google/android/gms/nearby/messages/internal/zzbz;->zzjuv:Lcom/google/android/gms/nearby/messages/internal/zzu;

    iput-boolean p9, p0, Lcom/google/android/gms/nearby/messages/internal/zzbz;->zzjrr:Z

    invoke-static {p10, p6, p5, p9}, Lcom/google/android/gms/nearby/messages/internal/ClientAppContext;->zza(Lcom/google/android/gms/nearby/messages/internal/ClientAppContext;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/gms/nearby/messages/internal/ClientAppContext;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/zzbz;->zzjtn:Lcom/google/android/gms/nearby/messages/internal/ClientAppContext;

    iput p11, p0, Lcom/google/android/gms/nearby/messages/internal/zzbz;->zzjtk:I

    return-void

    :cond_1
    const-string v0, "com.google.android.gms.nearby.messages.internal.INearbyMessagesCallback"

    invoke-interface {p4, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v2, v0, Lcom/google/android/gms/nearby/messages/internal/zzp;

    if-eqz v2, :cond_2

    check-cast v0, Lcom/google/android/gms/nearby/messages/internal/zzp;

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/google/android/gms/nearby/messages/internal/zzr;

    invoke-direct {v0, p4}, Lcom/google/android/gms/nearby/messages/internal/zzr;-><init>(Landroid/os/IBinder;)V

    goto :goto_0

    :cond_3
    if-eqz p8, :cond_0

    const-string v0, "com.google.android.gms.nearby.messages.internal.IPublishCallback"

    invoke-interface {p8, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/nearby/messages/internal/zzu;

    if-eqz v1, :cond_4

    check-cast v0, Lcom/google/android/gms/nearby/messages/internal/zzu;

    move-object v1, v0

    goto :goto_1

    :cond_4
    new-instance v1, Lcom/google/android/gms/nearby/messages/internal/zzw;

    invoke-direct {v1, p8}, Lcom/google/android/gms/nearby/messages/internal/zzw;-><init>(Landroid/os/IBinder;)V

    goto :goto_1
.end method

.method public constructor <init>(Lcom/google/android/gms/nearby/messages/internal/zzaf;Lcom/google/android/gms/nearby/messages/Strategy;Landroid/os/IBinder;Landroid/os/IBinder;I)V
    .locals 12

    const/4 v1, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v8, p4

    move/from16 v11, p5

    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/nearby/messages/internal/zzbz;-><init>(ILcom/google/android/gms/nearby/messages/internal/zzaf;Lcom/google/android/gms/nearby/messages/Strategy;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/IBinder;ZLcom/google/android/gms/nearby/messages/internal/ClientAppContext;I)V

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbfp;->zze(Landroid/os/Parcel;)I

    move-result v1

    const/4 v0, 0x1

    iget v2, p0, Lcom/google/android/gms/nearby/messages/internal/zzbz;->zzeck:I

    invoke-static {p1, v0, v2}, Lcom/google/android/gms/internal/zzbfp;->zzc(Landroid/os/Parcel;II)V

    const/4 v0, 0x2

    iget-object v2, p0, Lcom/google/android/gms/nearby/messages/internal/zzbz;->zzjus:Lcom/google/android/gms/nearby/messages/internal/zzaf;

    invoke-static {p1, v0, v2, p2, v3}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v0, 0x3

    iget-object v2, p0, Lcom/google/android/gms/nearby/messages/internal/zzbz;->zzjut:Lcom/google/android/gms/nearby/messages/Strategy;

    invoke-static {p1, v0, v2, p2, v3}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v0, 0x4

    iget-object v2, p0, Lcom/google/android/gms/nearby/messages/internal/zzbz;->zzjtm:Lcom/google/android/gms/nearby/messages/internal/zzp;

    invoke-interface {v2}, Lcom/google/android/gms/nearby/messages/internal/zzp;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/4 v0, 0x5

    iget-object v2, p0, Lcom/google/android/gms/nearby/messages/internal/zzbz;->zzjrq:Ljava/lang/String;

    invoke-static {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x6

    iget-object v2, p0, Lcom/google/android/gms/nearby/messages/internal/zzbz;->zzjti:Ljava/lang/String;

    invoke-static {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x7

    iget-boolean v2, p0, Lcom/google/android/gms/nearby/messages/internal/zzbz;->zzjuu:Z

    invoke-static {p1, v0, v2}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;IZ)V

    const/16 v2, 0x8

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/zzbz;->zzjuv:Lcom/google/android/gms/nearby/messages/internal/zzu;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v2, v0, v3}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/16 v0, 0x9

    iget-boolean v2, p0, Lcom/google/android/gms/nearby/messages/internal/zzbz;->zzjrr:Z

    invoke-static {p1, v0, v2}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;IZ)V

    const/16 v0, 0xa

    iget-object v2, p0, Lcom/google/android/gms/nearby/messages/internal/zzbz;->zzjtn:Lcom/google/android/gms/nearby/messages/internal/ClientAppContext;

    invoke-static {p1, v0, v2, p2, v3}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v0, 0xb

    iget v2, p0, Lcom/google/android/gms/nearby/messages/internal/zzbz;->zzjtk:I

    invoke-static {p1, v0, v2}, Lcom/google/android/gms/internal/zzbfp;->zzc(Landroid/os/Parcel;II)V

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/zzbfp;->zzai(Landroid/os/Parcel;I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/zzbz;->zzjuv:Lcom/google/android/gms/nearby/messages/internal/zzu;

    invoke-interface {v0}, Lcom/google/android/gms/nearby/messages/internal/zzu;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method
