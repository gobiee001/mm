.class public final Lcom/google/android/gms/nearby/messages/internal/zzcg;
.super Lcom/google/android/gms/internal/zzbfm;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/nearby/messages/internal/zzcg;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzeck:I

.field private zzeev:Landroid/app/PendingIntent;

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

.field private zzjtm:Lcom/google/android/gms/nearby/messages/internal/zzp;

.field private zzjtn:Lcom/google/android/gms/nearby/messages/internal/ClientAppContext;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private zzjuy:Lcom/google/android/gms/nearby/messages/internal/zzm;

.field private zzjva:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/nearby/messages/internal/zzch;

    invoke-direct {v0}, Lcom/google/android/gms/nearby/messages/internal/zzch;-><init>()V

    sput-object v0, Lcom/google/android/gms/nearby/messages/internal/zzcg;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILandroid/os/IBinder;Landroid/os/IBinder;Landroid/app/PendingIntent;ILjava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/nearby/messages/internal/ClientAppContext;)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbfm;-><init>()V

    iput p1, p0, Lcom/google/android/gms/nearby/messages/internal/zzcg;->zzeck:I

    if-nez p2, :cond_0

    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/zzcg;->zzjuy:Lcom/google/android/gms/nearby/messages/internal/zzm;

    if-nez p3, :cond_2

    :goto_1
    iput-object v1, p0, Lcom/google/android/gms/nearby/messages/internal/zzcg;->zzjtm:Lcom/google/android/gms/nearby/messages/internal/zzp;

    iput-object p4, p0, Lcom/google/android/gms/nearby/messages/internal/zzcg;->zzeev:Landroid/app/PendingIntent;

    iput p5, p0, Lcom/google/android/gms/nearby/messages/internal/zzcg;->zzjva:I

    iput-object p6, p0, Lcom/google/android/gms/nearby/messages/internal/zzcg;->zzjrq:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/nearby/messages/internal/zzcg;->zzjti:Ljava/lang/String;

    iput-boolean p8, p0, Lcom/google/android/gms/nearby/messages/internal/zzcg;->zzjrr:Z

    invoke-static {p9, p7, p6, p8}, Lcom/google/android/gms/nearby/messages/internal/ClientAppContext;->zza(Lcom/google/android/gms/nearby/messages/internal/ClientAppContext;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/gms/nearby/messages/internal/ClientAppContext;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/zzcg;->zzjtn:Lcom/google/android/gms/nearby/messages/internal/ClientAppContext;

    return-void

    :cond_0
    const-string v0, "com.google.android.gms.nearby.messages.internal.IMessageListener"

    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v2, v0, Lcom/google/android/gms/nearby/messages/internal/zzm;

    if-eqz v2, :cond_1

    check-cast v0, Lcom/google/android/gms/nearby/messages/internal/zzm;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/nearby/messages/internal/zzo;

    invoke-direct {v0, p2}, Lcom/google/android/gms/nearby/messages/internal/zzo;-><init>(Landroid/os/IBinder;)V

    goto :goto_0

    :cond_2
    const-string v0, "com.google.android.gms.nearby.messages.internal.INearbyMessagesCallback"

    invoke-interface {p3, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/nearby/messages/internal/zzp;

    if-eqz v1, :cond_3

    check-cast v0, Lcom/google/android/gms/nearby/messages/internal/zzp;

    move-object v1, v0

    goto :goto_1

    :cond_3
    new-instance v1, Lcom/google/android/gms/nearby/messages/internal/zzr;

    invoke-direct {v1, p3}, Lcom/google/android/gms/nearby/messages/internal/zzr;-><init>(Landroid/os/IBinder;)V

    goto :goto_1
.end method

.method public constructor <init>(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/PendingIntent;)V
    .locals 10

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v7, v6

    move v8, v5

    move-object v9, v6

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/nearby/messages/internal/zzcg;-><init>(ILandroid/os/IBinder;Landroid/os/IBinder;Landroid/app/PendingIntent;ILjava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/nearby/messages/internal/ClientAppContext;)V

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbfp;->zze(Landroid/os/Parcel;)I

    move-result v1

    const/4 v0, 0x1

    iget v2, p0, Lcom/google/android/gms/nearby/messages/internal/zzcg;->zzeck:I

    invoke-static {p1, v0, v2}, Lcom/google/android/gms/internal/zzbfp;->zzc(Landroid/os/Parcel;II)V

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/zzcg;->zzjuy:Lcom/google/android/gms/nearby/messages/internal/zzm;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v2, v0, v3}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/4 v0, 0x3

    iget-object v2, p0, Lcom/google/android/gms/nearby/messages/internal/zzcg;->zzjtm:Lcom/google/android/gms/nearby/messages/internal/zzp;

    invoke-interface {v2}, Lcom/google/android/gms/nearby/messages/internal/zzp;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/4 v0, 0x4

    iget-object v2, p0, Lcom/google/android/gms/nearby/messages/internal/zzcg;->zzeev:Landroid/app/PendingIntent;

    invoke-static {p1, v0, v2, p2, v3}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v0, 0x5

    iget v2, p0, Lcom/google/android/gms/nearby/messages/internal/zzcg;->zzjva:I

    invoke-static {p1, v0, v2}, Lcom/google/android/gms/internal/zzbfp;->zzc(Landroid/os/Parcel;II)V

    const/4 v0, 0x6

    iget-object v2, p0, Lcom/google/android/gms/nearby/messages/internal/zzcg;->zzjrq:Ljava/lang/String;

    invoke-static {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x7

    iget-object v2, p0, Lcom/google/android/gms/nearby/messages/internal/zzcg;->zzjti:Ljava/lang/String;

    invoke-static {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v0, 0x8

    iget-boolean v2, p0, Lcom/google/android/gms/nearby/messages/internal/zzcg;->zzjrr:Z

    invoke-static {p1, v0, v2}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;IZ)V

    const/16 v0, 0x9

    iget-object v2, p0, Lcom/google/android/gms/nearby/messages/internal/zzcg;->zzjtn:Lcom/google/android/gms/nearby/messages/internal/ClientAppContext;

    invoke-static {p1, v0, v2, p2, v3}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/zzbfp;->zzai(Landroid/os/Parcel;I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/zzcg;->zzjuy:Lcom/google/android/gms/nearby/messages/internal/zzm;

    invoke-interface {v0}, Lcom/google/android/gms/nearby/messages/internal/zzm;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method
