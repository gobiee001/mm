.class public Lcom/supersonicads/sdk/data/AdUnitsState;
.super Ljava/lang/Object;
.source "AdUnitsState.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/supersonicads/sdk/data/AdUnitsState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDisplayedDemandSourceName:Ljava/lang/String;

.field private mDisplayedProduct:I

.field private mInterstitialAppKey:Ljava/lang/String;

.field private mInterstitialExtraParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInterstitialInitSuccess:Z

.field private mInterstitialReportInit:Z

.field private mInterstitialReportLoad:Z

.field private mInterstitialUserId:Ljava/lang/String;

.field private mOfferWallExtraParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOfferwallInitSuccess:Z

.field private mOfferwallReportInit:Z

.field private mRVAppKey:Ljava/lang/String;

.field private mRVUserId:Ljava/lang/String;

.field private mShouldRestore:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 125
    new-instance v0, Lcom/supersonicads/sdk/data/AdUnitsState$1;

    invoke-direct {v0}, Lcom/supersonicads/sdk/data/AdUnitsState$1;-><init>()V

    sput-object v0, Lcom/supersonicads/sdk/data/AdUnitsState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-direct {p0}, Lcom/supersonicads/sdk/data/AdUnitsState;->initialize()V

    .line 45
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-direct {p0}, Lcom/supersonicads/sdk/data/AdUnitsState;->initialize()V

    .line 53
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    if-eqz v3, :cond_0

    move v3, v1

    :goto_0
    iput-boolean v3, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mShouldRestore:Z

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mDisplayedProduct:I

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mRVAppKey:Ljava/lang/String;

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mRVUserId:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mDisplayedDemandSourceName:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    if-eqz v3, :cond_1

    move v3, v1

    :goto_1
    iput-boolean v3, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mInterstitialReportInit:Z

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    if-eqz v3, :cond_2

    move v3, v1

    :goto_2
    iput-boolean v3, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mInterstitialInitSuccess:Z

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mInterstitialAppKey:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mInterstitialUserId:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/supersonicads/sdk/data/AdUnitsState;->getMapFromJsonString(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    iput-object v3, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mInterstitialExtraParams:Ljava/util/Map;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    if-eqz v3, :cond_3

    move v3, v1

    :goto_3
    iput-boolean v3, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mOfferwallInitSuccess:Z

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    if-eqz v3, :cond_4

    :goto_4
    iput-boolean v1, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mOfferwallReportInit:Z

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/supersonicads/sdk/data/AdUnitsState;->getMapFromJsonString(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mOfferWallExtraParams:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :goto_5
    return-void

    :cond_0
    move v3, v2

    .line 53
    goto :goto_0

    :cond_1
    move v3, v2

    .line 61
    goto :goto_1

    :cond_2
    move v3, v2

    .line 62
    goto :goto_2

    :cond_3
    move v3, v2

    .line 67
    goto :goto_3

    :cond_4
    move v1, v2

    .line 68
    goto :goto_4

    .line 70
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Ljava/lang/Throwable;
    invoke-direct {p0}, Lcom/supersonicads/sdk/data/AdUnitsState;->initialize()V

    goto :goto_5
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/supersonicads/sdk/data/AdUnitsState$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/supersonicads/sdk/data/AdUnitsState$1;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/supersonicads/sdk/data/AdUnitsState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private getMapFromJsonString(Ljava/lang/String;)Ljava/util/Map;
    .locals 7
    .param p1, "jsonString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 257
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 260
    .local v4, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-static {p1}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 262
    .local v1, "json":Lorg/json/JSONObject;
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 264
    .local v3, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 265
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 266
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 267
    .local v5, "value":Ljava/lang/String;
    invoke-interface {v4, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 271
    .end local v1    # "json":Lorg/json/JSONObject;
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v5    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 272
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 277
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_0
    :goto_1
    return-object v4

    .line 273
    :catch_1
    move-exception v0

    .line 274
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method private initialize()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 79
    iput-boolean v1, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mShouldRestore:Z

    .line 80
    const/4 v0, -0x1

    iput v0, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mDisplayedProduct:I

    .line 82
    iput-boolean v2, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mInterstitialReportInit:Z

    .line 83
    iput-boolean v2, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mOfferwallReportInit:Z

    .line 84
    iput-boolean v1, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mOfferwallInitSuccess:Z

    iput-boolean v1, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mInterstitialInitSuccess:Z

    .line 85
    const-string v0, ""

    iput-object v0, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mInterstitialUserId:Ljava/lang/String;

    iput-object v0, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mInterstitialAppKey:Ljava/lang/String;

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mInterstitialExtraParams:Ljava/util/Map;

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mOfferWallExtraParams:Ljava/util/Map;

    .line 89
    return-void
.end method


# virtual methods
.method public adClosed()V
    .locals 1

    .prologue
    .line 220
    const/4 v0, -0x1

    iput v0, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mDisplayedProduct:I

    return-void
.end method

.method public adOpened(I)V
    .locals 0
    .param p1, "product"    # I

    .prologue
    .line 217
    iput p1, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mDisplayedProduct:I

    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayedDemandSourceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mDisplayedDemandSourceName:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayedProduct()I
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mDisplayedProduct:I

    return v0
.end method

.method public getInterstitialAppKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mInterstitialAppKey:Ljava/lang/String;

    return-object v0
.end method

.method public getInterstitialExtraParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 152
    iget-object v0, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mInterstitialExtraParams:Ljava/util/Map;

    return-object v0
.end method

.method public getInterstitialUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mInterstitialUserId:Ljava/lang/String;

    return-object v0
.end method

.method public getRVAppKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mRVAppKey:Ljava/lang/String;

    return-object v0
.end method

.method public getRVUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mRVUserId:Ljava/lang/String;

    return-object v0
.end method

.method public isInterstitialInitSuccess()Z
    .locals 1

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mInterstitialInitSuccess:Z

    return v0
.end method

.method public reportInitInterstitial()Z
    .locals 1

    .prologue
    .line 154
    iget-boolean v0, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mInterstitialReportInit:Z

    return v0
.end method

.method public reportInitOfferwall()Z
    .locals 1

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mOfferwallReportInit:Z

    return v0
.end method

.method public setDisplayedDemandSourceName(Ljava/lang/String;)V
    .locals 0
    .param p1, "displayedDemandSourceName"    # Ljava/lang/String;

    .prologue
    .line 242
    iput-object p1, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mDisplayedDemandSourceName:Ljava/lang/String;

    return-void
.end method

.method public setInterstitialAppKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "mInterstitialAppKey"    # Ljava/lang/String;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mInterstitialAppKey:Ljava/lang/String;

    .line 194
    return-void
.end method

.method public setInterstitialExtraParams(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 201
    .local p1, "mInterstitialExtraParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mInterstitialExtraParams:Ljava/util/Map;

    .line 202
    return-void
.end method

.method public setInterstitialInitSuccess(Z)V
    .locals 0
    .param p1, "mInterstitialInitSuccess"    # Z

    .prologue
    .line 185
    iput-boolean p1, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mInterstitialInitSuccess:Z

    .line 186
    return-void
.end method

.method public setInterstitialUserId(Ljava/lang/String;)V
    .locals 0
    .param p1, "mInterstitialUserId"    # Ljava/lang/String;

    .prologue
    .line 197
    iput-object p1, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mInterstitialUserId:Ljava/lang/String;

    .line 198
    return-void
.end method

.method public setOfferWallExtraParams(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 175
    .local p1, "offerWallExtraParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mOfferWallExtraParams:Ljava/util/Map;

    .line 176
    return-void
.end method

.method public setOfferwallInitSuccess(Z)V
    .locals 0
    .param p1, "offerwallInitSuccess"    # Z

    .prologue
    .line 223
    iput-boolean p1, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mOfferwallInitSuccess:Z

    .line 224
    return-void
.end method

.method public setOfferwallReportInit(Z)V
    .locals 0
    .param p1, "offerwallReportInit"    # Z

    .prologue
    .line 227
    iput-boolean p1, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mOfferwallReportInit:Z

    .line 228
    return-void
.end method

.method public setRVAppKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "mRVAppKey"    # Ljava/lang/String;

    .prologue
    .line 235
    iput-object p1, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mRVAppKey:Ljava/lang/String;

    .line 236
    return-void
.end method

.method public setRVUserId(Ljava/lang/String;)V
    .locals 0
    .param p1, "mRVUserId"    # Ljava/lang/String;

    .prologue
    .line 245
    iput-object p1, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mRVUserId:Ljava/lang/String;

    .line 246
    return-void
.end method

.method public setReportInitInterstitial(Z)V
    .locals 0
    .param p1, "shouldReport"    # Z

    .prologue
    .line 205
    iput-boolean p1, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mInterstitialReportInit:Z

    .line 206
    return-void
.end method

.method public setReportLoadInterstitial(Z)V
    .locals 0
    .param p1, "shouldReport"    # Z

    .prologue
    .line 209
    iput-boolean p1, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mInterstitialReportLoad:Z

    .line 210
    return-void
.end method

.method public setShouldRestore(Z)V
    .locals 0
    .param p1, "mShouldRestore"    # Z

    .prologue
    .line 213
    iput-boolean p1, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mShouldRestore:Z

    .line 214
    return-void
.end method

.method public shouldRestore()Z
    .locals 1

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mShouldRestore:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 286
    .local v0, "builder":Ljava/lang/StringBuilder;
    :try_start_0
    const-string v1, "shouldRestore:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mShouldRestore:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    const-string v1, "displayedProduct:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mDisplayedProduct:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    const-string v1, "ISReportInit:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mInterstitialReportInit:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    const-string v1, "ISInitSuccess:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mInterstitialInitSuccess:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    const-string v1, "ISAppKey"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mInterstitialAppKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    const-string v1, "ISUserId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mInterstitialUserId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    const-string v1, "ISExtraParams"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mInterstitialExtraParams:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    const-string v1, "OWReportInit"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mOfferwallReportInit:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    const-string v1, "OWInitSuccess"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mOfferwallInitSuccess:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    const-string v1, "OWExtraParams"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mOfferWallExtraParams:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 298
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 102
    :try_start_0
    iget-boolean v0, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mShouldRestore:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 103
    iget v0, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mDisplayedProduct:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    iget-object v0, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mRVAppKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mRVUserId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mDisplayedDemandSourceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 110
    iget-boolean v0, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mInterstitialReportInit:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 111
    iget-boolean v0, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mInterstitialInitSuccess:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 112
    iget-object v0, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mInterstitialAppKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mInterstitialUserId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 114
    new-instance v0, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mInterstitialExtraParams:Ljava/util/Map;

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    instance-of v3, v0, Lorg/json/JSONObject;

    if-nez v3, :cond_3

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 116
    iget-boolean v0, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mOfferwallInitSuccess:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 117
    iget-boolean v0, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mOfferwallReportInit:Z

    if-eqz v0, :cond_5

    move v0, v1

    :goto_5
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 118
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/supersonicads/sdk/data/AdUnitsState;->mOfferWallExtraParams:Ljava/util/Map;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    instance-of v1, v0, Lorg/json/JSONObject;

    if-nez v1, :cond_6

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 122
    :goto_7
    return-void

    :cond_0
    move v0, v2

    .line 102
    goto :goto_0

    :cond_1
    move v0, v2

    .line 110
    goto :goto_1

    :cond_2
    move v0, v2

    .line 111
    goto :goto_2

    .line 114
    :cond_3
    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_4
    move v0, v2

    .line 116
    goto :goto_4

    :cond_5
    move v0, v2

    .line 117
    goto :goto_5

    .line 118
    :cond_6
    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_6

    .line 119
    :catch_0
    move-exception v0

    goto :goto_7
.end method
