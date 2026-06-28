.class public final enum Lcom/mopub/common/util/JavaScriptWebViewCallbacks;
.super Ljava/lang/Enum;
.source "JavaScriptWebViewCallbacks.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mopub/common/util/JavaScriptWebViewCallbacks;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mopub/common/util/JavaScriptWebViewCallbacks;

.field public static final enum WEB_VIEW_DID_APPEAR:Lcom/mopub/common/util/JavaScriptWebViewCallbacks;

.field public static final enum WEB_VIEW_DID_CLOSE:Lcom/mopub/common/util/JavaScriptWebViewCallbacks;


# instance fields
.field private mJavascript:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 6
    new-instance v0, Lcom/mopub/common/util/JavaScriptWebViewCallbacks;

    const-string v1, "WEB_VIEW_DID_APPEAR"

    const-string v2, "webviewDidAppear();"

    invoke-direct {v0, v1, v3, v2}, Lcom/mopub/common/util/JavaScriptWebViewCallbacks;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/util/JavaScriptWebViewCallbacks;->WEB_VIEW_DID_APPEAR:Lcom/mopub/common/util/JavaScriptWebViewCallbacks;

    .line 7
    new-instance v0, Lcom/mopub/common/util/JavaScriptWebViewCallbacks;

    const-string v1, "WEB_VIEW_DID_CLOSE"

    const-string v2, "webviewDidClose();"

    invoke-direct {v0, v1, v4, v2}, Lcom/mopub/common/util/JavaScriptWebViewCallbacks;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/util/JavaScriptWebViewCallbacks;->WEB_VIEW_DID_CLOSE:Lcom/mopub/common/util/JavaScriptWebViewCallbacks;

    .line 3
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/mopub/common/util/JavaScriptWebViewCallbacks;

    sget-object v1, Lcom/mopub/common/util/JavaScriptWebViewCallbacks;->WEB_VIEW_DID_APPEAR:Lcom/mopub/common/util/JavaScriptWebViewCallbacks;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mopub/common/util/JavaScriptWebViewCallbacks;->WEB_VIEW_DID_CLOSE:Lcom/mopub/common/util/JavaScriptWebViewCallbacks;

    aput-object v1, v0, v4

    sput-object v0, Lcom/mopub/common/util/JavaScriptWebViewCallbacks;->$VALUES:[Lcom/mopub/common/util/JavaScriptWebViewCallbacks;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "javascript"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 12
    iput-object p3, p0, Lcom/mopub/common/util/JavaScriptWebViewCallbacks;->mJavascript:Ljava/lang/String;

    .line 13
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mopub/common/util/JavaScriptWebViewCallbacks;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/mopub/common/util/JavaScriptWebViewCallbacks;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mopub/common/util/JavaScriptWebViewCallbacks;

    return-object v0
.end method

.method public static values()[Lcom/mopub/common/util/JavaScriptWebViewCallbacks;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/mopub/common/util/JavaScriptWebViewCallbacks;->$VALUES:[Lcom/mopub/common/util/JavaScriptWebViewCallbacks;

    invoke-virtual {v0}, [Lcom/mopub/common/util/JavaScriptWebViewCallbacks;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mopub/common/util/JavaScriptWebViewCallbacks;

    return-object v0
.end method


# virtual methods
.method public getJavascript()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/mopub/common/util/JavaScriptWebViewCallbacks;->mJavascript:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/common/util/JavaScriptWebViewCallbacks;->mJavascript:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
