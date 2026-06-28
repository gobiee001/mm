.class public Lcom/inmobi/commons/core/network/WebViewNetworkTask$NetworkTaskWebView;
.super Landroid/webkit/WebView;
.source "WebViewNetworkTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/commons/core/network/WebViewNetworkTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NetworkTaskWebView"
.end annotation


# instance fields
.field public a:Z

.field final synthetic b:Lcom/inmobi/commons/core/network/WebViewNetworkTask;


# direct methods
.method public constructor <init>(Lcom/inmobi/commons/core/network/WebViewNetworkTask;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/inmobi/commons/core/network/WebViewNetworkTask$NetworkTaskWebView;->b:Lcom/inmobi/commons/core/network/WebViewNetworkTask;

    .line 47
    invoke-direct {p0, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 48
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/commons/core/network/WebViewNetworkTask$NetworkTaskWebView;->a:Z

    .line 53
    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    .line 54
    return-void
.end method
