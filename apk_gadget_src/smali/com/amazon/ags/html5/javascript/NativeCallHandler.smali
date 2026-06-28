.class public Lcom/amazon/ags/html5/javascript/NativeCallHandler;
.super Lcom/amazon/ags/html5/javascript/CallHandlerBase;
.source "NativeCallHandler.java"


# static fields
.field private static final supportedCalls:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final browserUtil:Lcom/amazon/ags/html5/util/BrowserUtil;

.field private final context:Landroid/content/Context;

.field private final emailUtil:Lcom/amazon/ags/html5/util/EmailUtil;

.field private final gcVariationManager:Lcom/amazon/ags/html5/content/GCVariationManager;

.field private final imageManager:Lcom/amazon/ags/html5/util/ImageManager;

.field private final localizationUtil:Lcom/amazon/ags/html5/util/LocalizationUtil;

.field private final networkUtil:Lcom/amazon/ags/html5/util/NetworkUtil;

.field private final offlineEventManager:Lcom/amazon/ags/storage/OfflineEventManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 33
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "getNetworkInfo"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "getPackageName"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "openEmailEditor"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "queueOfflineEvent"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "downloadImages"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "getLocaleInfo"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "getVariationVariable"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "NOTIFY_SIGN_IN_STATE_CHANGE"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/amazon/ags/html5/javascript/NativeCallHandler;->supportedCalls:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/amazon/ags/html5/util/NetworkUtil;Lcom/amazon/ags/html5/util/BrowserUtil;Lcom/amazon/ags/html5/util/EmailUtil;Lcom/amazon/ags/storage/OfflineEventManager;Lcom/amazon/ags/html5/util/ImageManager;Lcom/amazon/ags/html5/util/LocalizationUtil;Lcom/amazon/ags/html5/content/GCVariationManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uiThreadHandler"    # Landroid/os/Handler;
    .param p3, "networkUtil"    # Lcom/amazon/ags/html5/util/NetworkUtil;
    .param p4, "browserUtil"    # Lcom/amazon/ags/html5/util/BrowserUtil;
    .param p5, "emailUtil"    # Lcom/amazon/ags/html5/util/EmailUtil;
    .param p6, "offlineEventManager"    # Lcom/amazon/ags/storage/OfflineEventManager;
    .param p7, "imageManager"    # Lcom/amazon/ags/html5/util/ImageManager;
    .param p8, "localizationUtil"    # Lcom/amazon/ags/html5/util/LocalizationUtil;
    .param p9, "gcVariationManager"    # Lcom/amazon/ags/html5/content/GCVariationManager;

    .prologue
    .line 56
    sget-object v0, Lcom/amazon/ags/html5/javascript/NativeCallHandler;->supportedCalls:Ljava/util/Set;

    invoke-direct {p0, p2, v0}, Lcom/amazon/ags/html5/javascript/CallHandlerBase;-><init>(Landroid/os/Handler;Ljava/util/Set;)V

    .line 57
    iput-object p1, p0, Lcom/amazon/ags/html5/javascript/NativeCallHandler;->context:Landroid/content/Context;

    .line 58
    iput-object p6, p0, Lcom/amazon/ags/html5/javascript/NativeCallHandler;->offlineEventManager:Lcom/amazon/ags/storage/OfflineEventManager;

    .line 59
    iput-object p3, p0, Lcom/amazon/ags/html5/javascript/NativeCallHandler;->networkUtil:Lcom/amazon/ags/html5/util/NetworkUtil;

    .line 60
    iput-object p4, p0, Lcom/amazon/ags/html5/javascript/NativeCallHandler;->browserUtil:Lcom/amazon/ags/html5/util/BrowserUtil;

    .line 61
    iput-object p5, p0, Lcom/amazon/ags/html5/javascript/NativeCallHandler;->emailUtil:Lcom/amazon/ags/html5/util/EmailUtil;

    .line 62
    iput-object p7, p0, Lcom/amazon/ags/html5/javascript/NativeCallHandler;->imageManager:Lcom/amazon/ags/html5/util/ImageManager;

    .line 63
    iput-object p8, p0, Lcom/amazon/ags/html5/javascript/NativeCallHandler;->localizationUtil:Lcom/amazon/ags/html5/util/LocalizationUtil;

    .line 64
    iput-object p9, p0, Lcom/amazon/ags/html5/javascript/NativeCallHandler;->gcVariationManager:Lcom/amazon/ags/html5/content/GCVariationManager;

    .line 65
    return-void
.end method

.method private downloadImages(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 11
    .param p1, "rid"    # Ljava/lang/String;
    .param p2, "request"    # Lorg/json/JSONObject;

    .prologue
    .line 145
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 149
    .local v7, "processedURLS":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :try_start_0
    const-string v8, "parameters"

    invoke-virtual {p2, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 152
    .local v6, "parameters":Lorg/json/JSONObject;
    const-string v8, "imageData"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 153
    .local v2, "imageData":Lorg/json/JSONObject;
    const-string v8, "images"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 166
    .local v5, "imagesJSON":Lorg/json/JSONArray;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lez v8, :cond_1

    .line 167
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v1, v8, :cond_1

    .line 169
    :try_start_1
    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 170
    .local v3, "imageJSON":Lorg/json/JSONObject;
    const-string v8, "imageUrl"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 171
    .local v4, "imageURL":Ljava/lang/String;
    invoke-interface {v7, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 172
    iget-object v8, p0, Lcom/amazon/ags/html5/javascript/NativeCallHandler;->imageManager:Lcom/amazon/ags/html5/util/ImageManager;

    invoke-virtual {v8, v4}, Lcom/amazon/ags/html5/util/ImageManager;->downloadImage(Ljava/lang/String;)V

    .line 173
    invoke-interface {v7, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 167
    .end local v3    # "imageJSON":Lorg/json/JSONObject;
    .end local v4    # "imageURL":Ljava/lang/String;
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 155
    .end local v1    # "i":I
    .end local v2    # "imageData":Lorg/json/JSONObject;
    .end local v5    # "imagesJSON":Lorg/json/JSONArray;
    .end local v6    # "parameters":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 156
    .local v0, "e":Lorg/json/JSONException;
    iget-object v8, p0, Lcom/amazon/ags/html5/javascript/NativeCallHandler;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to get image data from request "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 157
    const-string/jumbo v8, "{}"

    const-string v9, "REQUEST_ERROR"

    invoke-virtual {p0, p1, v8, v9}, Lcom/amazon/ags/html5/javascript/NativeCallHandler;->sendReply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_2
    return-void

    .line 159
    :catch_1
    move-exception v0

    .line 160
    .local v0, "e":Ljava/lang/Exception;
    iget-object v8, p0, Lcom/amazon/ags/html5/javascript/NativeCallHandler;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot process downloadImages request: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 161
    const-string/jumbo v8, "{}"

    const-string v9, "ERROR"

    invoke-virtual {p0, p1, v8, v9}, Lcom/amazon/ags/html5/javascript/NativeCallHandler;->sendReply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 175
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "i":I
    .restart local v2    # "imageData":Lorg/json/JSONObject;
    .restart local v5    # "imagesJSON":Lorg/json/JSONArray;
    .restart local v6    # "parameters":Lorg/json/JSONObject;
    :catch_2
    move-exception v0

    .line 176
    .local v0, "e":Lorg/json/JSONException;
    iget-object v8, p0, Lcom/amazon/ags/html5/javascript/NativeCallHandler;->TAG:Ljava/lang/String;

    const-string v9, "Unable to get image data for specific image"

    invoke-static {v8, v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 177
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_3
    move-exception v0

    .line 178
    .local v0, "e":Ljava/lang/Exception;
    iget-object v8, p0, Lcom/amazon/ags/html5/javascript/NativeCallHandler;->TAG:Ljava/lang/String;

    const-string v9, "Cannot process specific image download"

    invoke-static {v8, v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 184
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "i":I
    :cond_1
    const-string/jumbo v8, "{}"

    const-string v9, "SUCCESS"

    invoke-virtual {p0, p1, v8, v9}, Lcom/amazon/ags/html5/javascript/NativeCallHandler;->sendReply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private getNetworkInfo(Ljava/lang/String;)V
    .locals 4
    .param p1, "rid"    # Ljava/lang/String;

    .prologue
    .line 250
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 253
    .local v1, "networkInfo":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "connected"

    iget-object v3, p0, Lcom/amazon/ags/html5/javascript/NativeCallHandler;->networkUtil:Lcom/amazon/ags/html5/util/NetworkUtil;

    invoke-virtual {v3}, Lcom/amazon/ags/html5/util/NetworkUtil;->isNetworkConnected()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    :goto_0
    instance-of v2, v1, Lorg/json/JSONObject;

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .end local v1    # "networkInfo":Lorg/json/JSONObject;
    :goto_1
    const-string v3, "SUCCESS"

    invoke-virtual {p0, p1, v2, v3}, Lcom/amazon/ags/html5/javascript/NativeCallHandler;->sendReply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    return-void

    .line 254
    .restart local v1    # "networkInfo":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 255
    .local v0, "e":Lorg/json/JSONException;
    iget-object v2, p0, Lcom/amazon/ags/html5/javascript/NativeCallHandler;->TAG:Ljava/lang/String;

    const-string v3, "Unable to get network state"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 257
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_0
    check-cast v1, Lorg/json/JSONObject;

    .end local v1    # "networkInfo":Lorg/json/JSONObject;
    invoke-static {v1}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private getPackageName(Ljava/lang/String;)V
    .locals 4
    .param p1, "rid"    # Ljava/lang/String;

    .prologue
    .line 261
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 263
    .local v1, "reply":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "PACKAGE_NAME"

    iget-object v3, p0, Lcom/amazon/ags/html5/javascript/NativeCallHandler;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 264
    instance-of v2, v1, Lorg/json/JSONObject;

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .end local v1    # "reply":Lorg/json/JSONObject;
    :goto_0
    const-string v3, "SUCCESS"

    invoke-virtual {p0, p1, v2, v3}, Lcom/amazon/ags/html5/javascript/NativeCallHandler;->sendReply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    :goto_1
    return-void

    .line 264
    .restart local v1    # "reply":Lorg/json/JSONObject;
    :cond_0
    check-cast v1, Lorg/json/JSONObject;

    .end local v1    # "reply":Lorg/json/JSONObject;
    invoke-static {v1}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 265
    :catch_0
    move-exception v0

    .line 266
    .local v0, "e":Lorg/json/JSONException;
    iget-object v2, p0, Lcom/amazon/ags/html5/javascript/NativeCallHandler;->TAG:Ljava/lang/String;

    const-string v3, "Error building response for getPackageName"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    const-string/jumbo v2, "{}"

    const-string v3, "ERROR"

    invoke-virtual {p0, p1, v2, v3}, Lcom/amazon/ags/html5/javascript/NativeCallHandler;->sendReply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private notifySignedInStateChange(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "rid"    # Ljava/lang/String;
    .param p2, "request"    # Lorg/json/JSONObject;

    .prologue
    .line 272
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 274
    .local v2, "reply":Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "parameters"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 275
    .local v1, "parameters":Lorg/json/JSONObject;
    const-string v3, "isSignedIn"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Lcom/amazon/ags/client/player/PlayerClientImpl;->notifySignedInListener(Z)V

    .line 276
    instance-of v3, v2, Lorg/json/JSONObject;

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    .end local v2    # "reply":Lorg/json/JSONObject;
    :goto_0
    const-string v4, "SUCCESS"

    invoke-virtual {p0, p1, v3, v4}, Lcom/amazon/ags/html5/javascript/NativeCallHandler;->sendReply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    .end local v1    # "parameters":Lorg/json/JSONObject;
    :goto_1
    return-void

    .line 276
    .restart local v1    # "parameters":Lorg/json/JSONObject;
    .restart local v2    # "reply":Lorg/json/JSONObject;
    :cond_0
    check-cast v2, Lorg/json/JSONObject;

    .end local v2    # "reply":Lorg/json/JSONObject;
    invoke-static {v2}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 277
    .end local v1    # "parameters":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 278
    .local v0, "e":Lorg/json/JSONException;
    iget-object v3, p0, Lcom/amazon/ags/html5/javascript/NativeCallHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error notifying sign in state change: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    const-string/jumbo v3, "{}"

    const-string v4, "ERROR"

    invoke-virtual {p0, p1, v3, v4}, Lcom/amazon/ags/html5/javascript/NativeCallHandler;->sendReply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private openBrowser(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "rid"    # Ljava/lang/String;
    .param p2, "request"    # Lorg/json/JSONObject;

    .prologue
    .line 211
    :try_start_0
    const-string v3, "parameters"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 212
    .local v1, "parameters":Lorg/json/JSONObject;
    const-string v3, "url"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 213
    .local v2, "url":Ljava/lang/String;
    iget-object v3, p0, Lcom/amazon/ags/html5/javascript/NativeCallHandler;->browserUtil:Lcom/amazon/ags/html5/util/BrowserUtil;

    invoke-virtual {v3, v2}, Lcom/amazon/ags/html5/util/BrowserUtil;->launchBrowser(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 224
    const-string/jumbo v3, "{}"

    const-string v4, "SUCCESS"

    invoke-virtual {p0, p1, v3, v4}, Lcom/amazon/ags/html5/javascript/NativeCallHandler;->sendReply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    .end local v1    # "parameters":Lorg/json/JSONObject;
    .end local v2    # "url":Ljava/lang/String;
    :goto_0
    return-void

    .line 214
    :catch_0
    move-exception v0

    .line 215
    .local v0, "e":Lorg/json/JSONException;
    iget-object v3, p0, Lcom/amazon/ags/html5/javascript/NativeCallHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to get browser parameters from request "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 216
    const-string/jumbo v3, "{}"

    const-string v4, "REQUEST_ERROR"

    invoke-virtual {p0, p1, v3, v4}, Lcom/amazon/ags/html5/javascript/NativeCallHandler;->sendReply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 218
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v0

    .line 219
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/amazon/ags/html5/javascript/NativeCallHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot process launch browser request: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 220
    const-string/jumbo v3, "{}"

    const-string v4, "ERROR"

    invoke-virtual {p0, p1, v3, v4}, Lcom/amazon/ags/html5/javascript/NativeCallHandler;->sendReply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private openEmailEditor(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 8
    .param p1, "rid"    # Ljava/lang/String;
    .param p2, "request"    # Lorg/json/JSONObject;

    .prologue
    .line 229
    :try_start_0
    const-string v5, "parameters"

    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 231
    .local v3, "parameters":Lorg/json/JSONObject;
    const-string v5, "mailTo"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 232
    .local v2, "mailTo":Ljava/lang/String;
    const-string v5, "subject"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 233
    .local v4, "subject":Ljava/lang/String;
    const-string v5, "body"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 235
    .local v0, "body":Ljava/lang/String;
    iget-object v5, p0, Lcom/amazon/ags/html5/javascript/NativeCallHandler;->emailUtil:Lcom/amazon/ags/html5/util/EmailUtil;

    invoke-virtual {v5, v2, v4, v0}, Lcom/amazon/ags/html5/util/EmailUtil;->launchEmailEditor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 246
    const-string/jumbo v5, "{}"

    const-string v6, "SUCCESS"

    invoke-virtual {p0, p1, v5, v6}, Lcom/amazon/ags/html5/javascript/NativeCallHandler;->sendReply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    .end local v0    # "body":Ljava/lang/String;
    .end local v2    # "mailTo":Ljava/lang/String;
    .end local v3    # "parameters":Lorg/json/JSONObject;
    .end local v4    # "subject":Ljava/lang/String;
    :goto_0
    return-void

    .line 236
    :catch_0
    move-exception v1

    .line 237
    .local v1, "e":Lorg/json/JSONException;
    iget-object v5, p0, Lcom/amazon/ags/html5/javascript/NativeCallHandler;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to get email parameters from request "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 238
    const-string/jumbo v5, "{}"

    const-string v6, "REQUEST_ERROR"

    invoke-virtual {p0, p1, v5, v6}, Lcom/amazon/ags/html5/javascript/NativeCallHandler;->sendReply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 240
    .end local v1    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v1

    .line 241
    .local v1, "e":Ljava/lang/Exception;
    iget-object v5, p0, Lcom/amazon/ags/html5/javascript/NativeCallHandler;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot process open email request: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 242
    const-string/jumbo v5, "{}"

    const-string v6, "ERROR"

    invoke-virtual {p0, p1, v5, v6}, Lcom/amazon/ags/html5/javascript/NativeCallHandler;->sendReply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private queueOfflineEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 8
    .param p1, "rid"    # Ljava/lang/String;
    .param p2, "request"    # Lorg/json/JSONObject;

    .prologue
    .line 189
    :try_start_0
    const-string v5, "parameters"

    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 191
    .local v4, "parameters":Lorg/json/JSONObject;
    const-string v5, "eventJson"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 192
    .local v3, "eventJsonString":Ljava/lang/String;
    new-instance v5, Lorg/json/JSONObject;

    invoke-static {v3}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 193
    .local v2, "eventJson":Lorg/json/JSONObject;
    new-instance v1, Lcom/amazon/ags/storage/OfflineEvent;

    invoke-direct {v1, v2}, Lcom/amazon/ags/storage/OfflineEvent;-><init>(Lorg/json/JSONObject;)V

    .line 195
    .local v1, "event":Lcom/amazon/ags/storage/OfflineEvent;
    iget-object v5, p0, Lcom/amazon/ags/html5/javascript/NativeCallHandler;->offlineEventManager:Lcom/amazon/ags/storage/OfflineEventManager;

    invoke-interface {v5, v1}, Lcom/amazon/ags/storage/OfflineEventManager;->submitEvent(Lcom/amazon/ags/storage/OfflineEvent;)Lcom/amazon/ags/storage/OfflineEventId;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 206
    const-string/jumbo v5, "{}"

    const-string v6, "SUCCESS"

    invoke-virtual {p0, p1, v5, v6}, Lcom/amazon/ags/html5/javascript/NativeCallHandler;->sendReply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    .end local v1    # "event":Lcom/amazon/ags/storage/OfflineEvent;
    .end local v2    # "eventJson":Lorg/json/JSONObject;
    .end local v3    # "eventJsonString":Ljava/lang/String;
    .end local v4    # "parameters":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 196
    :catch_0
    move-exception v0

    .line 197
    .local v0, "e":Lorg/json/JSONException;
    iget-object v5, p0, Lcom/amazon/ags/html5/javascript/NativeCallHandler;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to get event parameters from request "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 198
    const-string/jumbo v5, "{}"

    const-string v6, "REQUEST_ERROR"

    invoke-virtual {p0, p1, v5, v6}, Lcom/amazon/ags/html5/javascript/NativeCallHandler;->sendReply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 200
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v0

    .line 201
    .local v0, "e":Ljava/lang/Exception;
    iget-object v5, p0, Lcom/amazon/ags/html5/javascript/NativeCallHandler;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot process queue offline event request: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 202
    const-string/jumbo v5, "{}"

    const-string v6, "ERROR"

    invoke-virtual {p0, p1, v5, v6}, Lcom/amazon/ags/html5/javascript/NativeCallHandler;->sendReply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private retrieveLocaleInfo(Ljava/lang/String;)V
    .locals 4
    .param p1, "rid"    # Ljava/lang/String;

    .prologue
    .line 132
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 134
    .local v1, "localeInfo":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "languageCode"

    iget-object v3, p0, Lcom/amazon/ags/html5/javascript/NativeCallHandler;->localizationUtil:Lcom/amazon/ags/html5/util/LocalizationUtil;

    invoke-virtual {v3}, Lcom/amazon/ags/html5/util/LocalizationUtil;->getLanguageCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 135
    const-string v2, "countryCode"

    iget-object v3, p0, Lcom/amazon/ags/html5/javascript/NativeCallHandler;->localizationUtil:Lcom/amazon/ags/html5/util/LocalizationUtil;

    invoke-virtual {v3}, Lcom/amazon/ags/html5/util/LocalizationUtil;->getCountryCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    instance-of v2, v1, Lorg/json/JSONObject;

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .end local v1    # "localeInfo":Lorg/json/JSONObject;
    :goto_0
    const-string v3, "SUCCESS"

    invoke-virtual {p0, p1, v2, v3}, Lcom/amazon/ags/html5/javascript/NativeCallHandler;->sendReply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    :goto_1
    return-void

    .line 136
    .restart local v1    # "localeInfo":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 137
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/amazon/ags/html5/javascript/NativeCallHandler;->TAG:Ljava/lang/String;

    const-string v3, "Unable to get locale information"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 138
    const-string/jumbo v2, "{}"

    const-string v3, "ERROR"

    invoke-virtual {p0, p1, v2, v3}, Lcom/amazon/ags/html5/javascript/NativeCallHandler;->sendReply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 141
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    check-cast v1, Lorg/json/JSONObject;

    .end local v1    # "localeInfo":Lorg/json/JSONObject;
    invoke-static {v1}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private retrieveVariationVariable(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 10
    .param p1, "rid"    # Ljava/lang/String;
    .param p2, "request"    # Lorg/json/JSONObject;

    .prologue
    .line 103
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 106
    .local v5, "variationInfo":Lorg/json/JSONObject;
    :try_start_0
    const-string v7, "parameters"

    invoke-virtual {p2, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 108
    .local v3, "parameters":Lorg/json/JSONObject;
    const-string v7, "variation"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 109
    .local v6, "variationName":Ljava/lang/String;
    const-string v7, "variationVariableDefaultValue"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "defaultVariationVariableValue":Ljava/lang/String;
    iget-object v7, p0, Lcom/amazon/ags/html5/javascript/NativeCallHandler;->gcVariationManager:Lcom/amazon/ags/html5/content/GCVariationManager;

    invoke-virtual {v7}, Lcom/amazon/ags/html5/content/GCVariationManager;->getCachedVariations()Ljava/util/Map;

    move-result-object v2

    .line 112
    .local v2, "gcVariations":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 113
    .local v4, "treatment":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 114
    const-string v7, "variation"

    invoke-virtual {v5, v7, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 128
    :goto_0
    instance-of v7, v5, Lorg/json/JSONObject;

    if-nez v7, :cond_1

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    .end local v5    # "variationInfo":Lorg/json/JSONObject;
    :goto_1
    const-string v8, "SUCCESS"

    invoke-virtual {p0, p1, v7, v8}, Lcom/amazon/ags/html5/javascript/NativeCallHandler;->sendReply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    .end local v0    # "defaultVariationVariableValue":Ljava/lang/String;
    .end local v2    # "gcVariations":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "parameters":Lorg/json/JSONObject;
    .end local v4    # "treatment":Ljava/lang/String;
    .end local v6    # "variationName":Ljava/lang/String;
    :goto_2
    return-void

    .line 116
    .restart local v0    # "defaultVariationVariableValue":Ljava/lang/String;
    .restart local v2    # "gcVariations":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v3    # "parameters":Lorg/json/JSONObject;
    .restart local v4    # "treatment":Ljava/lang/String;
    .restart local v5    # "variationInfo":Lorg/json/JSONObject;
    .restart local v6    # "variationName":Ljava/lang/String;
    :cond_0
    :try_start_1
    const-string v7, "variation"

    invoke-virtual {v5, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 118
    .end local v0    # "defaultVariationVariableValue":Ljava/lang/String;
    .end local v2    # "gcVariations":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "parameters":Lorg/json/JSONObject;
    .end local v4    # "treatment":Ljava/lang/String;
    .end local v6    # "variationName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 119
    .local v1, "e":Lorg/json/JSONException;
    iget-object v7, p0, Lcom/amazon/ags/html5/javascript/NativeCallHandler;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to get variation data from request "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 120
    const-string/jumbo v7, "{}"

    const-string v8, "REQUEST_ERROR"

    invoke-virtual {p0, p1, v7, v8}, Lcom/amazon/ags/html5/javascript/NativeCallHandler;->sendReply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 122
    .end local v1    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v1

    .line 123
    .local v1, "e":Ljava/lang/Exception;
    iget-object v7, p0, Lcom/amazon/ags/html5/javascript/NativeCallHandler;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot process getVariationVariable request: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 124
    const-string/jumbo v7, "{}"

    const-string v8, "ERROR"

    invoke-virtual {p0, p1, v7, v8}, Lcom/amazon/ags/html5/javascript/NativeCallHandler;->sendReply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 128
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "defaultVariationVariableValue":Ljava/lang/String;
    .restart local v2    # "gcVariations":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v3    # "parameters":Lorg/json/JSONObject;
    .restart local v4    # "treatment":Ljava/lang/String;
    .restart local v6    # "variationName":Ljava/lang/String;
    :cond_1
    check-cast v5, Lorg/json/JSONObject;

    .end local v5    # "variationInfo":Lorg/json/JSONObject;
    invoke-static {v5}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1
.end method


# virtual methods
.method protected handleMessage(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Z
    .locals 2
    .param p1, "rid"    # Ljava/lang/String;
    .param p2, "nativeCallType"    # Ljava/lang/String;
    .param p3, "request"    # Lorg/json/JSONObject;

    .prologue
    const/4 v0, 0x1

    .line 70
    const-string v1, "getNetworkInfo"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    invoke-direct {p0, p1}, Lcom/amazon/ags/html5/javascript/NativeCallHandler;->getNetworkInfo(Ljava/lang/String;)V

    .line 99
    :goto_0
    return v0

    .line 73
    :cond_0
    const-string v1, "getPackageName"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 74
    invoke-direct {p0, p1}, Lcom/amazon/ags/html5/javascript/NativeCallHandler;->getPackageName(Ljava/lang/String;)V

    goto :goto_0

    .line 76
    :cond_1
    const-string v1, "openBrowser"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 77
    invoke-direct {p0, p1, p3}, Lcom/amazon/ags/html5/javascript/NativeCallHandler;->openBrowser(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 79
    :cond_2
    const-string v1, "openEmailEditor"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 80
    invoke-direct {p0, p1, p3}, Lcom/amazon/ags/html5/javascript/NativeCallHandler;->openEmailEditor(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 82
    :cond_3
    const-string v1, "queueOfflineEvent"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 83
    invoke-direct {p0, p1, p3}, Lcom/amazon/ags/html5/javascript/NativeCallHandler;->queueOfflineEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 85
    :cond_4
    const-string v1, "downloadImages"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 86
    invoke-direct {p0, p1, p3}, Lcom/amazon/ags/html5/javascript/NativeCallHandler;->downloadImages(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 88
    :cond_5
    const-string v1, "getLocaleInfo"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 89
    invoke-direct {p0, p1}, Lcom/amazon/ags/html5/javascript/NativeCallHandler;->retrieveLocaleInfo(Ljava/lang/String;)V

    goto :goto_0

    .line 91
    :cond_6
    const-string v1, "getVariationVariable"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 92
    invoke-direct {p0, p1, p3}, Lcom/amazon/ags/html5/javascript/NativeCallHandler;->retrieveVariationVariable(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 94
    :cond_7
    const-string v1, "NOTIFY_SIGN_IN_STATE_CHANGE"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 95
    invoke-direct {p0, p1, p3}, Lcom/amazon/ags/html5/javascript/NativeCallHandler;->notifySignedInStateChange(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 99
    :cond_8
    const/4 v0, 0x0

    goto :goto_0
.end method
