.class public Lcom/integralads/avid/library/mopub/session/AvidAdSessionManager;
.super Ljava/lang/Object;
.source "AvidAdSessionManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findAvidAdSessionById(Ljava/lang/String;)Lcom/integralads/avid/library/mopub/session/AbstractAvidAdSession;
    .locals 1
    .param p0, "avidAdSessionId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/integralads/avid/library/mopub/session/AbstractAvidAdSession;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 64
    invoke-static {}, Lcom/integralads/avid/library/mopub/AvidManager;->getInstance()Lcom/integralads/avid/library/mopub/AvidManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/integralads/avid/library/mopub/AvidManager;->findAvidAdSessionById(Ljava/lang/String;)Lcom/integralads/avid/library/mopub/session/AbstractAvidAdSession;

    move-result-object v0

    return-object v0
.end method

.method private static findWebView(Landroid/view/View;)Landroid/webkit/WebView;
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 92
    invoke-static {}, Lcom/integralads/avid/library/mopub/registration/AvidAdSessionRegistry;->getInstance()Lcom/integralads/avid/library/mopub/registration/AvidAdSessionRegistry;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/integralads/avid/library/mopub/registration/AvidAdSessionRegistry;->findInternalAvidAdSessionByView(Landroid/view/View;)Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;

    move-result-object v0

    .line 93
    .local v0, "avidAdSession":Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getReleaseDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    invoke-static {}, Lcom/integralads/avid/library/mopub/AvidContext;->getInstance()Lcom/integralads/avid/library/mopub/AvidContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/integralads/avid/library/mopub/AvidContext;->getAvidReleaseDate()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    invoke-static {}, Lcom/integralads/avid/library/mopub/AvidContext;->getInstance()Lcom/integralads/avid/library/mopub/AvidContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/integralads/avid/library/mopub/AvidContext;->getAvidVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static startAvidDisplayAdSession(Landroid/content/Context;Lcom/integralads/avid/library/mopub/session/ExternalAvidAdSessionContext;)Lcom/integralads/avid/library/mopub/session/AvidDisplayAdSession;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "avidAdSessionContext"    # Lcom/integralads/avid/library/mopub/session/ExternalAvidAdSessionContext;

    .prologue
    .line 28
    invoke-static {}, Lcom/integralads/avid/library/mopub/AvidManager;->getInstance()Lcom/integralads/avid/library/mopub/AvidManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/integralads/avid/library/mopub/AvidManager;->init(Landroid/content/Context;)V

    .line 29
    new-instance v0, Lcom/integralads/avid/library/mopub/session/AvidDisplayAdSession;

    invoke-direct {v0}, Lcom/integralads/avid/library/mopub/session/AvidDisplayAdSession;-><init>()V

    .line 30
    .local v0, "avidAdSession":Lcom/integralads/avid/library/mopub/session/AvidDisplayAdSession;
    new-instance v1, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidDisplayAdSession;

    invoke-virtual {v0}, Lcom/integralads/avid/library/mopub/session/AvidDisplayAdSession;->getAvidAdSessionId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1}, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidDisplayAdSession;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/integralads/avid/library/mopub/session/ExternalAvidAdSessionContext;)V

    .line 31
    .local v1, "internalAvidAdSession":Lcom/integralads/avid/library/mopub/session/internal/InternalAvidDisplayAdSession;
    invoke-virtual {v1}, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidDisplayAdSession;->onStart()V

    .line 32
    invoke-static {}, Lcom/integralads/avid/library/mopub/AvidManager;->getInstance()Lcom/integralads/avid/library/mopub/AvidManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/integralads/avid/library/mopub/AvidManager;->registerAvidAdSession(Lcom/integralads/avid/library/mopub/session/AbstractAvidAdSession;Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;)V

    .line 33
    return-object v0
.end method

.method public static startAvidManagedDisplayAdSession(Landroid/content/Context;Lcom/integralads/avid/library/mopub/session/ExternalAvidAdSessionContext;)Lcom/integralads/avid/library/mopub/session/AvidManagedDisplayAdSession;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "avidAdSessionContext"    # Lcom/integralads/avid/library/mopub/session/ExternalAvidAdSessionContext;

    .prologue
    .line 55
    invoke-static {}, Lcom/integralads/avid/library/mopub/AvidManager;->getInstance()Lcom/integralads/avid/library/mopub/AvidManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/integralads/avid/library/mopub/AvidManager;->init(Landroid/content/Context;)V

    .line 56
    new-instance v0, Lcom/integralads/avid/library/mopub/session/AvidManagedDisplayAdSession;

    invoke-direct {v0}, Lcom/integralads/avid/library/mopub/session/AvidManagedDisplayAdSession;-><init>()V

    .line 57
    .local v0, "avidAdSession":Lcom/integralads/avid/library/mopub/session/AvidManagedDisplayAdSession;
    new-instance v1, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidManagedDisplayAdSession;

    invoke-virtual {v0}, Lcom/integralads/avid/library/mopub/session/AvidManagedDisplayAdSession;->getAvidAdSessionId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1}, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidManagedDisplayAdSession;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/integralads/avid/library/mopub/session/ExternalAvidAdSessionContext;)V

    .line 58
    .local v1, "internalAvidAdSession":Lcom/integralads/avid/library/mopub/session/internal/InternalAvidManagedDisplayAdSession;
    invoke-virtual {v1}, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidManagedDisplayAdSession;->onStart()V

    .line 59
    invoke-static {}, Lcom/integralads/avid/library/mopub/AvidManager;->getInstance()Lcom/integralads/avid/library/mopub/AvidManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/integralads/avid/library/mopub/AvidManager;->registerAvidAdSession(Lcom/integralads/avid/library/mopub/session/AbstractAvidAdSession;Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;)V

    .line 60
    return-object v0
.end method

.method public static startAvidManagedVideoAdSession(Landroid/content/Context;Lcom/integralads/avid/library/mopub/session/ExternalAvidAdSessionContext;)Lcom/integralads/avid/library/mopub/session/AvidManagedVideoAdSession;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "avidAdSessionContext"    # Lcom/integralads/avid/library/mopub/session/ExternalAvidAdSessionContext;

    .prologue
    .line 46
    invoke-static {}, Lcom/integralads/avid/library/mopub/AvidManager;->getInstance()Lcom/integralads/avid/library/mopub/AvidManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/integralads/avid/library/mopub/AvidManager;->init(Landroid/content/Context;)V

    .line 47
    new-instance v0, Lcom/integralads/avid/library/mopub/session/AvidManagedVideoAdSession;

    invoke-direct {v0}, Lcom/integralads/avid/library/mopub/session/AvidManagedVideoAdSession;-><init>()V

    .line 48
    .local v0, "avidAdSession":Lcom/integralads/avid/library/mopub/session/AvidManagedVideoAdSession;
    new-instance v1, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidManagedVideoAdSession;

    invoke-virtual {v0}, Lcom/integralads/avid/library/mopub/session/AvidManagedVideoAdSession;->getAvidAdSessionId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1}, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidManagedVideoAdSession;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/integralads/avid/library/mopub/session/ExternalAvidAdSessionContext;)V

    .line 49
    .local v1, "internalAvidAdSession":Lcom/integralads/avid/library/mopub/session/internal/InternalAvidManagedVideoAdSession;
    invoke-virtual {v1}, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidManagedVideoAdSession;->onStart()V

    .line 50
    invoke-static {}, Lcom/integralads/avid/library/mopub/AvidManager;->getInstance()Lcom/integralads/avid/library/mopub/AvidManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/integralads/avid/library/mopub/AvidManager;->registerAvidAdSession(Lcom/integralads/avid/library/mopub/session/AbstractAvidAdSession;Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;)V

    .line 51
    return-object v0
.end method

.method public static startAvidVideoAdSession(Landroid/content/Context;Lcom/integralads/avid/library/mopub/session/ExternalAvidAdSessionContext;)Lcom/integralads/avid/library/mopub/session/AvidVideoAdSession;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "avidAdSessionContext"    # Lcom/integralads/avid/library/mopub/session/ExternalAvidAdSessionContext;

    .prologue
    .line 37
    invoke-static {}, Lcom/integralads/avid/library/mopub/AvidManager;->getInstance()Lcom/integralads/avid/library/mopub/AvidManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/integralads/avid/library/mopub/AvidManager;->init(Landroid/content/Context;)V

    .line 38
    new-instance v0, Lcom/integralads/avid/library/mopub/session/AvidVideoAdSession;

    invoke-direct {v0}, Lcom/integralads/avid/library/mopub/session/AvidVideoAdSession;-><init>()V

    .line 39
    .local v0, "avidAdSession":Lcom/integralads/avid/library/mopub/session/AvidVideoAdSession;
    new-instance v1, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidVideoAdSession;

    invoke-virtual {v0}, Lcom/integralads/avid/library/mopub/session/AvidVideoAdSession;->getAvidAdSessionId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1}, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidVideoAdSession;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/integralads/avid/library/mopub/session/ExternalAvidAdSessionContext;)V

    .line 40
    .local v1, "internalAvidAdSession":Lcom/integralads/avid/library/mopub/session/internal/InternalAvidVideoAdSession;
    invoke-virtual {v1}, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidVideoAdSession;->onStart()V

    .line 41
    invoke-static {}, Lcom/integralads/avid/library/mopub/AvidManager;->getInstance()Lcom/integralads/avid/library/mopub/AvidManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/integralads/avid/library/mopub/AvidManager;->registerAvidAdSession(Lcom/integralads/avid/library/mopub/session/AbstractAvidAdSession;Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;)V

    .line 42
    return-object v0
.end method

.method public static webViewForSessionId(Ljava/lang/String;)Landroid/webkit/WebView;
    .locals 2
    .param p0, "sessionId"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-static {}, Lcom/integralads/avid/library/mopub/registration/AvidAdSessionRegistry;->getInstance()Lcom/integralads/avid/library/mopub/registration/AvidAdSessionRegistry;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/integralads/avid/library/mopub/registration/AvidAdSessionRegistry;->findInternalAvidAdSessionById(Ljava/lang/String;)Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;

    move-result-object v0

    .line 88
    .local v0, "session":Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static webViewForView(Landroid/view/View;)Landroid/webkit/WebView;
    .locals 5
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 68
    invoke-static {p0}, Lcom/integralads/avid/library/mopub/session/AvidAdSessionManager;->findWebView(Landroid/view/View;)Landroid/webkit/WebView;

    move-result-object v3

    .line 69
    .local v3, "webView":Landroid/webkit/WebView;
    if-eqz v3, :cond_0

    move-object v4, v3

    .line 83
    :goto_0
    return-object v4

    .line 72
    :cond_0
    instance-of v4, p0, Landroid/view/ViewGroup;

    if-nez v4, :cond_1

    .line 73
    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    move-object v2, p0

    .line 75
    check-cast v2, Landroid/view/ViewGroup;

    .line 76
    .local v2, "viewGroup":Landroid/view/ViewGroup;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 77
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 78
    .local v0, "childView":Landroid/view/View;
    invoke-static {v0}, Lcom/integralads/avid/library/mopub/session/AvidAdSessionManager;->webViewForView(Landroid/view/View;)Landroid/webkit/WebView;

    move-result-object v3

    .line 79
    if-eqz v3, :cond_3

    .end local v0    # "childView":Landroid/view/View;
    :cond_2
    move-object v4, v3

    .line 83
    goto :goto_0

    .line 76
    .restart local v0    # "childView":Landroid/view/View;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
