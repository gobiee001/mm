.class public final Ldagger/internal/MembersInjectors;
.super Ljava/lang/Object;
.source "MembersInjectors.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldagger/internal/MembersInjectors$NoOpMembersInjector;
    }
.end annotation


# direct methods
.method public static injectMembers(Ldagger/MembersInjector;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ldagger/MembersInjector",
            "<TT;>;TT;)TT;"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, "membersInjector":Ldagger/MembersInjector;, "Ldagger/MembersInjector<TT;>;"
    .local p1, "instance":Ljava/lang/Object;, "TT;"
    invoke-interface {p0, p1}, Ldagger/MembersInjector;->injectMembers(Ljava/lang/Object;)V

    .line 38
    return-object p1
.end method

.method public static noOp()Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ldagger/MembersInjector",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 49
    sget-object v0, Ldagger/internal/MembersInjectors$NoOpMembersInjector;->INSTANCE:Ldagger/internal/MembersInjectors$NoOpMembersInjector;

    return-object v0
.end method
