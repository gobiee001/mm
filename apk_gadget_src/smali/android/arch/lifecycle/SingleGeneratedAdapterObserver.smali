.class public Landroid/arch/lifecycle/SingleGeneratedAdapterObserver;
.super Ljava/lang/Object;
.source "SingleGeneratedAdapterObserver.java"

# interfaces
.implements Landroid/arch/lifecycle/GenericLifecycleObserver;


# instance fields
.field private final mGeneratedAdapter:Landroid/arch/lifecycle/GeneratedAdapter;


# virtual methods
.method public onStateChanged(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Lifecycle$Event;)V
    .locals 3
    .param p1, "source"    # Landroid/arch/lifecycle/LifecycleOwner;
    .param p2, "event"    # Landroid/arch/lifecycle/Lifecycle$Event;

    .prologue
    const/4 v2, 0x0

    .line 35
    iget-object v0, p0, Landroid/arch/lifecycle/SingleGeneratedAdapterObserver;->mGeneratedAdapter:Landroid/arch/lifecycle/GeneratedAdapter;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1, v2}, Landroid/arch/lifecycle/GeneratedAdapter;->callMethods(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Lifecycle$Event;ZLandroid/arch/lifecycle/MethodCallsLogger;)V

    .line 36
    iget-object v0, p0, Landroid/arch/lifecycle/SingleGeneratedAdapterObserver;->mGeneratedAdapter:Landroid/arch/lifecycle/GeneratedAdapter;

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, v1, v2}, Landroid/arch/lifecycle/GeneratedAdapter;->callMethods(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Lifecycle$Event;ZLandroid/arch/lifecycle/MethodCallsLogger;)V

    .line 37
    return-void
.end method
