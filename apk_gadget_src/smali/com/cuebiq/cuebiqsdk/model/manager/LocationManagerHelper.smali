.class public Lcom/cuebiq/cuebiqsdk/model/manager/LocationManagerHelper;
.super Ljava/lang/Object;
.source "LocationManagerHelper.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cuebiq/cuebiqsdk/model/manager/LocationManagerHelper$OnLocationListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/cuebiq/cuebiqsdk/model/manager/LocationManagerHelper$OnLocationListener;

.field private mLocationHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/cuebiq/cuebiqsdk/model/manager/LocationManagerHelper;->mLocationHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/cuebiq/cuebiqsdk/model/manager/LocationManagerHelper;Landroid/location/Location;)V
    .locals 0
    .param p0, "x0"    # Lcom/cuebiq/cuebiqsdk/model/manager/LocationManagerHelper;
    .param p1, "x1"    # Landroid/location/Location;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/cuebiq/cuebiqsdk/model/manager/LocationManagerHelper;->onLocation(Landroid/location/Location;)V

    return-void
.end method

.method private onLocation(Landroid/location/Location;)V
    .locals 2
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    const/4 v1, 0x0

    .line 63
    iget-object v0, p0, Lcom/cuebiq/cuebiqsdk/model/manager/LocationManagerHelper;->mLocationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/cuebiq/cuebiqsdk/model/manager/LocationManagerHelper;->mLocationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 65
    iput-object v1, p0, Lcom/cuebiq/cuebiqsdk/model/manager/LocationManagerHelper;->mLocationHandler:Landroid/os/Handler;

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/cuebiq/cuebiqsdk/model/manager/LocationManagerHelper;->mListener:Lcom/cuebiq/cuebiqsdk/model/manager/LocationManagerHelper$OnLocationListener;

    if-eqz v0, :cond_1

    .line 69
    iget-object v0, p0, Lcom/cuebiq/cuebiqsdk/model/manager/LocationManagerHelper;->mListener:Lcom/cuebiq/cuebiqsdk/model/manager/LocationManagerHelper$OnLocationListener;

    invoke-interface {v0, p1}, Lcom/cuebiq/cuebiqsdk/model/manager/LocationManagerHelper$OnLocationListener;->onLocation(Landroid/location/Location;)V

    .line 71
    :cond_1
    return-void
.end method


# virtual methods
.method public getLocation(Landroid/content/Context;Lcom/cuebiq/cuebiqsdk/model/manager/LocationManagerHelper$OnLocationListener;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/cuebiq/cuebiqsdk/model/manager/LocationManagerHelper$OnLocationListener;

    .prologue
    const/4 v5, 0x0

    .line 31
    iput-object p2, p0, Lcom/cuebiq/cuebiqsdk/model/manager/LocationManagerHelper;->mListener:Lcom/cuebiq/cuebiqsdk/model/manager/LocationManagerHelper$OnLocationListener;

    .line 33
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x16

    if-le v3, v4, :cond_0

    .line 34
    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p1, v3}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 35
    const-string v3, "LocationManager -> Permission about LOCATION is not granted. Unable to acquire location data."

    invoke-static {v3}, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->log(Ljava/lang/String;)V

    .line 36
    invoke-direct {p0, v5}, Lcom/cuebiq/cuebiqsdk/model/manager/LocationManagerHelper;->onLocation(Landroid/location/Location;)V

    .line 60
    :goto_0
    return-void

    .line 41
    :cond_0
    iget-object v3, p0, Lcom/cuebiq/cuebiqsdk/model/manager/LocationManagerHelper;->mLocationHandler:Landroid/os/Handler;

    new-instance v4, Lcom/cuebiq/cuebiqsdk/model/manager/LocationManagerHelper$1;

    invoke-direct {v4, p0}, Lcom/cuebiq/cuebiqsdk/model/manager/LocationManagerHelper$1;-><init>(Lcom/cuebiq/cuebiqsdk/model/manager/LocationManagerHelper;)V

    const-wide/16 v6, 0x4e20

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 48
    const-string v3, "location"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager;

    .line 51
    .local v2, "locationManager":Landroid/location/LocationManager;
    :try_start_0
    invoke-static {p1}, Lcom/cuebiq/cuebiqsdk/utils/Utils;->isLocationEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 52
    invoke-static {p1}, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->getBeAudienceConfiguration(Landroid/content/Context;)Lcom/cuebiq/cuebiqsdk/model/config/Settings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cuebiq/cuebiqsdk/model/config/Settings;->getAcc()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v2, v3, p0, v4}, Landroid/location/LocationManager;->requestSingleUpdate(Ljava/lang/String;Landroid/location/LocationListener;Landroid/os/Looper;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Ljava/lang/Throwable;
    invoke-direct {p0, v5}, Lcom/cuebiq/cuebiqsdk/model/manager/LocationManagerHelper;->onLocation(Landroid/location/Location;)V

    goto :goto_0

    .line 54
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_1
    :try_start_1
    invoke-static {p1}, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->getBeAudienceConfiguration(Landroid/content/Context;)Lcom/cuebiq/cuebiqsdk/model/config/Settings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cuebiq/cuebiqsdk/model/config/Settings;->getAcc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    .line 55
    .local v1, "lastKnownLocation":Landroid/location/Location;
    invoke-direct {p0, v1}, Lcom/cuebiq/cuebiqsdk/model/manager/LocationManagerHelper;->onLocation(Landroid/location/Location;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 0
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/cuebiq/cuebiqsdk/model/manager/LocationManagerHelper;->onLocation(Landroid/location/Location;)V

    .line 77
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 1
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 91
    const-string v0, "LocationManager -> onProviderDisabled"

    invoke-static {v0}, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->log(Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 1
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 86
    const-string v0, "LocationManager -> onProviderEnabled"

    invoke-static {v0}, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->log(Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 1
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 81
    const-string v0, "LocationManager -> onStatusChanged"

    invoke-static {v0}, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->log(Ljava/lang/String;)V

    .line 82
    return-void
.end method
