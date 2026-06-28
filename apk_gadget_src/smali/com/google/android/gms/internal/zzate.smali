.class public final Lcom/google/android/gms/internal/zzate;
.super Lcom/google/android/gms/internal/zzbfm;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzate;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzbgw:Ljava/lang/String;

.field private zzear:Lcom/google/android/gms/internal/zzass;

.field private zzeas:J

.field private zzeat:I

.field private zzeau:Lcom/google/android/gms/internal/zzasp;

.field private zzeav:Z

.field private zzeaw:I

.field private zzeax:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzatg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzatg;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzate;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/zzass;JILjava/lang/String;Lcom/google/android/gms/internal/zzasp;ZII)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbfm;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzate;->zzear:Lcom/google/android/gms/internal/zzass;

    iput-wide p2, p0, Lcom/google/android/gms/internal/zzate;->zzeas:J

    iput p4, p0, Lcom/google/android/gms/internal/zzate;->zzeat:I

    iput-object p5, p0, Lcom/google/android/gms/internal/zzate;->zzbgw:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzate;->zzeau:Lcom/google/android/gms/internal/zzasp;

    iput-boolean p7, p0, Lcom/google/android/gms/internal/zzate;->zzeav:Z

    iput p8, p0, Lcom/google/android/gms/internal/zzate;->zzeaw:I

    iput p9, p0, Lcom/google/android/gms/internal/zzate;->zzeax:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/util/List;I)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/appindexing/AppIndexApi$AppIndexingLink;",
            ">;I)V"
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzate;->zza(Ljava/lang/String;Landroid/content/Intent;)Lcom/google/android/gms/internal/zzass;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p4

    move-object/from16 v1, p6

    invoke-static {p2, p3, v0, v2, v1}, Lcom/google/android/gms/internal/zzate;->zza(Landroid/content/Intent;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/util/List;)Lcom/google/android/gms/internal/zzasq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzasq;->zzaal()Lcom/google/android/gms/internal/zzasp;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x1

    move-object v2, p0

    invoke-direct/range {v2 .. v11}, Lcom/google/android/gms/internal/zzate;-><init>(Lcom/google/android/gms/internal/zzass;JILjava/lang/String;Lcom/google/android/gms/internal/zzasp;ZII)V

    return-void
.end method

.method public static zza(Landroid/content/Intent;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/util/List;)Lcom/google/android/gms/internal/zzasq;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/appindexing/AppIndexApi$AppIndexingLink;",
            ">;)",
            "Lcom/google/android/gms/internal/zzasq;"
        }
    .end annotation

    const/4 v7, 0x1

    new-instance v2, Lcom/google/android/gms/internal/zzasq;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzasq;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/zzasu;

    new-instance v1, Lcom/google/android/gms/internal/zzatc;

    const-string v3, "title"

    invoke-direct {v1, v3}, Lcom/google/android/gms/internal/zzatc;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Lcom/google/android/gms/internal/zzatc;->zzax(I)Lcom/google/android/gms/internal/zzatc;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/google/android/gms/internal/zzatc;->zzan(Z)Lcom/google/android/gms/internal/zzatc;

    move-result-object v1

    const-string v3, "name"

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/zzatc;->zzep(Ljava/lang/String;)Lcom/google/android/gms/internal/zzatc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatc;->zzaam()Lcom/google/android/gms/internal/zzatb;

    move-result-object v1

    const-string v3, "text1"

    invoke-direct {v0, p1, v1, v3}, Lcom/google/android/gms/internal/zzasu;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzatb;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzasq;->zza(Lcom/google/android/gms/internal/zzasu;)Lcom/google/android/gms/internal/zzasq;

    if-eqz p2, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzasu;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/google/android/gms/internal/zzatc;

    const-string v4, "web_url"

    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/zzatc;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/zzatc;->zzax(I)Lcom/google/android/gms/internal/zzatc;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/google/android/gms/internal/zzatc;->zzam(Z)Lcom/google/android/gms/internal/zzatc;

    move-result-object v3

    const-string v4, "url"

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/zzatc;->zzep(Ljava/lang/String;)Lcom/google/android/gms/internal/zzatc;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzatc;->zzaam()Lcom/google/android/gms/internal/zzatb;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/zzasu;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzatb;)V

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzasq;->zza(Lcom/google/android/gms/internal/zzasu;)Lcom/google/android/gms/internal/zzasq;

    :cond_0
    if-eqz p4, :cond_3

    new-instance v3, Lcom/google/android/gms/internal/zzcbv;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzcbv;-><init>()V

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    new-array v4, v0, [Lcom/google/android/gms/internal/zzcbw;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, v4

    if-ge v1, v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/zzcbw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzcbw;-><init>()V

    aput-object v0, v4, v1

    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/appindexing/AppIndexApi$AppIndexingLink;

    aget-object v5, v4, v1

    iget-object v6, v0, Lcom/google/android/gms/appindexing/AppIndexApi$AppIndexingLink;->appIndexingUrl:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/google/android/gms/internal/zzcbw;->zzidp:Ljava/lang/String;

    aget-object v5, v4, v1

    iget v6, v0, Lcom/google/android/gms/appindexing/AppIndexApi$AppIndexingLink;->viewId:I

    iput v6, v5, Lcom/google/android/gms/internal/zzcbw;->viewId:I

    iget-object v5, v0, Lcom/google/android/gms/appindexing/AppIndexApi$AppIndexingLink;->webUrl:Landroid/net/Uri;

    if-eqz v5, :cond_1

    aget-object v5, v4, v1

    iget-object v0, v0, Lcom/google/android/gms/appindexing/AppIndexApi$AppIndexingLink;->webUrl:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/google/android/gms/internal/zzcbw;->zzidq:Ljava/lang/String;

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    iput-object v4, v3, Lcom/google/android/gms/internal/zzcbv;->zzidn:[Lcom/google/android/gms/internal/zzcbw;

    new-instance v0, Lcom/google/android/gms/internal/zzasu;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzfjs;->zzc(Lcom/google/android/gms/internal/zzfjs;)[B

    move-result-object v1

    new-instance v3, Lcom/google/android/gms/internal/zzatc;

    const-string v4, "outlinks"

    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/zzatc;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Lcom/google/android/gms/internal/zzatc;->zzam(Z)Lcom/google/android/gms/internal/zzatc;

    move-result-object v3

    const-string v4, ".private:outLinks"

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/zzatc;->zzep(Ljava/lang/String;)Lcom/google/android/gms/internal/zzatc;

    move-result-object v3

    const-string v4, "blob"

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/zzatc;->zzeo(Ljava/lang/String;)Lcom/google/android/gms/internal/zzatc;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzatc;->zzaam()Lcom/google/android/gms/internal/zzatb;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/zzasu;-><init>([BLcom/google/android/gms/internal/zzatb;)V

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzasq;->zza(Lcom/google/android/gms/internal/zzasu;)Lcom/google/android/gms/internal/zzasq;

    :cond_3
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v1, "intent_action"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzate;->zzl(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzasu;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzasq;->zza(Lcom/google/android/gms/internal/zzasu;)Lcom/google/android/gms/internal/zzasq;

    :cond_4
    invoke-virtual {p0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v1, "intent_data"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzate;->zzl(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzasu;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzasq;->zza(Lcom/google/android/gms/internal/zzasu;)Lcom/google/android/gms/internal/zzasq;

    :cond_5
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v1, "intent_activity"

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzate;->zzl(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzasu;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzasq;->zza(Lcom/google/android/gms/internal/zzasu;)Lcom/google/android/gms/internal/zzasq;

    :cond_6
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_7

    const-string v1, "intent_extra_data_key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    const-string v1, "intent_extra_data"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzate;->zzl(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzasu;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzasq;->zza(Lcom/google/android/gms/internal/zzasu;)Lcom/google/android/gms/internal/zzasq;

    :cond_7
    invoke-virtual {v2, p3}, Lcom/google/android/gms/internal/zzasq;->zzem(Ljava/lang/String;)Lcom/google/android/gms/internal/zzasq;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/zzasq;->zzal(Z)Lcom/google/android/gms/internal/zzasq;

    move-result-object v0

    return-object v0
.end method

.method public static zza(Ljava/lang/String;Landroid/content/Intent;)Lcom/google/android/gms/internal/zzass;
    .locals 3

    invoke-static {p1}, Lcom/google/android/gms/internal/zzate;->zzd(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzass;

    const-string v2, ""

    invoke-direct {v1, p0, v2, v0}, Lcom/google/android/gms/internal/zzass;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private static zzd(Landroid/content/Intent;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/zip/CRC32;

    invoke-direct {v1}, Ljava/util/zip/CRC32;-><init>()V

    :try_start_0
    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/zip/CRC32;->update([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static zzl(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzasu;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/zzasu;

    new-instance v1, Lcom/google/android/gms/internal/zzatc;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzatc;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzatc;->zzam(Z)Lcom/google/android/gms/internal/zzatc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatc;->zzaam()Lcom/google/android/gms/internal/zzatb;

    move-result-object v1

    invoke-direct {v0, p1, v1, p0}, Lcom/google/android/gms/internal/zzasu;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzatb;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 6

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "UsageInfo[documentId=%s, timestamp=%d, usageType=%d, status=%d]"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/gms/internal/zzate;->zzear:Lcom/google/android/gms/internal/zzass;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzate;->zzeas:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lcom/google/android/gms/internal/zzate;->zzeat:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget v4, p0, Lcom/google/android/gms/internal/zzate;->zzeax:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    const/4 v4, 0x0

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbfp;->zze(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzate;->zzear:Lcom/google/android/gms/internal/zzass;

    invoke-static {p1, v1, v2, p2, v4}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzate;->zzeas:J

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;IJ)V

    const/4 v1, 0x3

    iget v2, p0, Lcom/google/android/gms/internal/zzate;->zzeat:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/zzbfp;->zzc(Landroid/os/Parcel;II)V

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/zzate;->zzbgw:Ljava/lang/String;

    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/internal/zzate;->zzeau:Lcom/google/android/gms/internal/zzasp;

    invoke-static {p1, v1, v2, p2, v4}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x6

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzate;->zzeav:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;IZ)V

    const/4 v1, 0x7

    iget v2, p0, Lcom/google/android/gms/internal/zzate;->zzeaw:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/zzbfp;->zzc(Landroid/os/Parcel;II)V

    const/16 v1, 0x8

    iget v2, p0, Lcom/google/android/gms/internal/zzate;->zzeax:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/zzbfp;->zzc(Landroid/os/Parcel;II)V

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzbfp;->zzai(Landroid/os/Parcel;I)V

    return-void
.end method
