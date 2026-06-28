.class public final Lcom/google/android/gms/internal/zzabz;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# instance fields
.field public zzbdn:Landroid/location/Location;

.field public zzcnf:Ljava/lang/String;

.field public zzcnk:Landroid/os/Bundle;

.field public zzcnr:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public zzcqr:Landroid/os/Bundle;

.field public zzcqs:Lcom/google/android/gms/internal/zzacy;

.field public zzcqt:Ljava/lang/String;

.field public zzcqu:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

.field public zzcqv:Lcom/google/android/gms/internal/zzaat;

.field public zzcqw:Lcom/google/android/gms/internal/zzaco;

.field public zzcqx:Lorg/json/JSONObject;

.field public zzcqy:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzabz;->zzcqx:Lorg/json/JSONObject;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzabz;->zzcnr:Ljava/util/List;

    return-void
.end method
