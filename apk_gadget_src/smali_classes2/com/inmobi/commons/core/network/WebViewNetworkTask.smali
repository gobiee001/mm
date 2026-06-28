.class public Lcom/inmobi/commons/core/network/WebViewNetworkTask;
.super Ljava/lang/Object;
.source "WebViewNetworkTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/commons/core/network/WebViewNetworkTask$NetworkTaskWebView;
    }
.end annotation


# static fields
.field private static final d:Ljava/lang/String;


# instance fields
.field public a:Lcom/inmobi/commons/core/network/NetworkRequest;

.field public b:Landroid/webkit/WebViewClient;

.field public c:Lcom/inmobi/commons/core/network/WebViewNetworkTask$NetworkTaskWebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/inmobi/commons/core/network/WebViewNetworkTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/commons/core/network/WebViewNetworkTask;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/inmobi/commons/core/network/NetworkRequest;Landroid/webkit/WebViewClient;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p2, p0, Lcom/inmobi/commons/core/network/WebViewNetworkTask;->b:Landroid/webkit/WebViewClient;

    .line 21
    iput-object p1, p0, Lcom/inmobi/commons/core/network/WebViewNetworkTask;->a:Lcom/inmobi/commons/core/network/NetworkRequest;

    .line 22
    return-void
.end method
