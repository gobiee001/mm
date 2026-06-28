.class public final Lcom/google/android/gms/drive/events/CompletionEvent;
.super Lcom/google/android/gms/internal/zzbfm;

# interfaces
.implements Lcom/google/android/gms/drive/events/ResourceEvent;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/drive/events/CompletionEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final STATUS_CANCELED:I = 0x3

.field public static final STATUS_CONFLICT:I = 0x2

.field public static final STATUS_FAILURE:I = 0x1

.field public static final STATUS_SUCCESS:I

.field private static final zzgjj:Lcom/google/android/gms/common/internal/zzal;


# instance fields
.field private zzcbc:I

.field private zzebv:Ljava/lang/String;

.field private zzgis:Lcom/google/android/gms/drive/DriveId;

.field private zzglg:Landroid/os/ParcelFileDescriptor;

.field private zzglh:Landroid/os/ParcelFileDescriptor;

.field private zzgli:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

.field private zzglj:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzglk:Landroid/os/IBinder;

.field private zzgll:Z

.field private zzglm:Z

.field private zzgln:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/common/internal/zzal;

    const-string v1, "CompletionEvent"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzal;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/drive/events/CompletionEvent;->zzgjj:Lcom/google/android/gms/common/internal/zzal;

    new-instance v0, Lcom/google/android/gms/drive/events/zzg;

    invoke-direct {v0}, Lcom/google/android/gms/drive/events/zzg;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/events/CompletionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/drive/DriveId;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;Ljava/util/List;ILandroid/os/IBinder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/drive/DriveId;",
            "Ljava/lang/String;",
            "Landroid/os/ParcelFileDescriptor;",
            "Landroid/os/ParcelFileDescriptor;",
            "Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Landroid/os/IBinder;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbfm;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->zzgll:Z

    iput-boolean v0, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->zzglm:Z

    iput-boolean v0, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->zzgln:Z

    iput-object p1, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->zzgis:Lcom/google/android/gms/drive/DriveId;

    iput-object p2, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->zzebv:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->zzglg:Landroid/os/ParcelFileDescriptor;

    iput-object p4, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->zzglh:Landroid/os/ParcelFileDescriptor;

    iput-object p5, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->zzgli:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    iput-object p6, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->zzglj:Ljava/util/List;

    iput p7, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->zzcbc:I

    iput-object p8, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->zzglk:Landroid/os/IBinder;

    return-void
.end method

.method private final zzab(Z)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-direct {p0}, Lcom/google/android/gms/drive/events/CompletionEvent;->zzaoq()V

    iput-boolean v5, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->zzgln:Z

    iget-object v0, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->zzglg:Landroid/os/ParcelFileDescriptor;

    invoke-static {v0}, Lcom/google/android/gms/common/util/zzn;->zza(Landroid/os/ParcelFileDescriptor;)V

    iget-object v0, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->zzglh:Landroid/os/ParcelFileDescriptor;

    invoke-static {v0}, Lcom/google/android/gms/common/util/zzn;->zza(Landroid/os/ParcelFileDescriptor;)V

    iget-object v0, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->zzgli:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->zzgli:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    sget-object v1, Lcom/google/android/gms/internal/zzbth;->zzgtq:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->zzd(Lcom/google/android/gms/drive/metadata/MetadataField;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->zzgli:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    sget-object v1, Lcom/google/android/gms/internal/zzbth;->zzgtq:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->zza(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/data/BitmapTeleporter;

    invoke-virtual {v0}, Lcom/google/android/gms/common/data/BitmapTeleporter;->release()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->zzglk:Landroid/os/IBinder;

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    const-string v0, "snooze"

    :goto_0
    sget-object v1, Lcom/google/android/gms/drive/events/CompletionEvent;->zzgjj:Lcom/google/android/gms/common/internal/zzal;

    const-string v2, "CompletionEvent"

    const-string v3, "No callback on %s"

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v0, v4, v6

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/common/internal/zzal;->zzd(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-void

    :cond_1
    const-string v0, "dismiss"

    goto :goto_0

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->zzglk:Landroid/os/IBinder;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbqp;->zzao(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzbqo;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzbqo;->zzab(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v1, v0

    if-eqz p1, :cond_3

    const-string v0, "snooze"

    :goto_2
    sget-object v2, Lcom/google/android/gms/drive/events/CompletionEvent;->zzgjj:Lcom/google/android/gms/common/internal/zzal;

    const-string v3, "CompletionEvent"

    const-string v4, "RemoteException on %s"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0, v1}, Lcom/google/android/gms/common/internal/zzal;->zzd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    const-string v0, "dismiss"

    goto :goto_2
.end method

.method private final zzaoq()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->zzgln:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Event has already been dismissed or snoozed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public final dismiss()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/drive/events/CompletionEvent;->zzab(Z)V

    return-void
.end method

.method public final getAccountName()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/drive/events/CompletionEvent;->zzaoq()V

    iget-object v0, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->zzebv:Ljava/lang/String;

    return-object v0
.end method

.method public final getBaseContentsInputStream()Ljava/io/InputStream;
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/drive/events/CompletionEvent;->zzaoq()V

    iget-object v0, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->zzglg:Landroid/os/ParcelFileDescriptor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->zzgll:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getBaseInputStream() can only be called once per CompletionEvent instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->zzgll:Z

    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->zzglg:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    goto :goto_0
.end method

.method public final getDriveId()Lcom/google/android/gms/drive/DriveId;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/drive/events/CompletionEvent;->zzaoq()V

    iget-object v0, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->zzgis:Lcom/google/android/gms/drive/DriveId;

    return-object v0
.end method

.method public final getModifiedContentsInputStream()Ljava/io/InputStream;
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/drive/events/CompletionEvent;->zzaoq()V

    iget-object v0, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->zzglh:Landroid/os/ParcelFileDescriptor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->zzglm:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getModifiedInputStream() can only be called once per CompletionEvent instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->zzglm:Z

    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->zzglh:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    goto :goto_0
.end method

.method public final getModifiedMetadataChangeSet()Lcom/google/android/gms/drive/MetadataChangeSet;
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/drive/events/CompletionEvent;->zzaoq()V

    iget-object v0, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->zzgli:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/drive/MetadataChangeSet;

    iget-object v1, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->zzgli:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    invoke-direct {v0, v1}, Lcom/google/android/gms/drive/MetadataChangeSet;-><init>(Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getStatus()I
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/drive/events/CompletionEvent;->zzaoq()V

    iget v0, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->zzcbc:I

    return v0
.end method

.method public final getTrackingTags()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/drive/events/CompletionEvent;->zzaoq()V

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->zzglj:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final getType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public final snooze()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/drive/events/CompletionEvent;->zzab(Z)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->zzglj:Ljava/util/List;

    if-nez v0, :cond_0

    const-string v0, "<null>"

    :goto_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "CompletionEvent [id=%s, status=%s, trackingTag=%s]"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->zzgis:Lcom/google/android/gms/drive/DriveId;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->zzcbc:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "\',\'"

    iget-object v1, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->zzglj:Ljava/util/List;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "\'"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    const/4 v4, 0x0

    or-int/lit8 v0, p2, 0x1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbfp;->zze(Landroid/os/Parcel;)I

    move-result v1

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->zzgis:Lcom/google/android/gms/drive/DriveId;

    invoke-static {p1, v2, v3, v0, v4}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->zzebv:Ljava/lang/String;

    invoke-static {p1, v2, v3, v4}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->zzglg:Landroid/os/ParcelFileDescriptor;

    invoke-static {p1, v2, v3, v0, v4}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->zzglh:Landroid/os/ParcelFileDescriptor;

    invoke-static {p1, v2, v3, v0, v4}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->zzgli:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    invoke-static {p1, v2, v3, v0, v4}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v0, 0x7

    iget-object v2, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->zzglj:Ljava/util/List;

    invoke-static {p1, v0, v2, v4}, Lcom/google/android/gms/internal/zzbfp;->zzb(Landroid/os/Parcel;ILjava/util/List;Z)V

    const/16 v0, 0x8

    iget v2, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->zzcbc:I

    invoke-static {p1, v0, v2}, Lcom/google/android/gms/internal/zzbfp;->zzc(Landroid/os/Parcel;II)V

    const/16 v0, 0x9

    iget-object v2, p0, Lcom/google/android/gms/drive/events/CompletionEvent;->zzglk:Landroid/os/IBinder;

    invoke-static {p1, v0, v2, v4}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/zzbfp;->zzai(Landroid/os/Parcel;I)V

    return-void
.end method
