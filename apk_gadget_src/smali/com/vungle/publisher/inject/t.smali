.class public Lcom/vungle/publisher/inject/t;
.super Ljava/lang/Object;
.source "vungle"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(Landroid/content/Context;)Landroid/net/wifi/WifiManager;
    .locals 1

    .prologue
    .line 25
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method a(Lcom/vungle/publisher/env/a;)Lcom/vungle/publisher/env/AndroidDevice$DeviceIdStrategy;
    .locals 0
    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 20
    return-object p1
.end method
