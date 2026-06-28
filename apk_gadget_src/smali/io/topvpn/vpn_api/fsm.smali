.class Lio/topvpn/vpn_api/fsm;
.super Ljava/lang/Object;
.source "fsm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/topvpn/vpn_api/fsm$transition;,
        Lio/topvpn/vpn_api/fsm$state;
    }
.end annotation


# instance fields
.field private final m_name:Ljava/lang/String;

.field protected m_state:Lio/topvpn/vpn_api/fsm$state;

.field protected final m_state_sync:Ljava/lang/Object;

.field protected final m_transitions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lio/topvpn/vpn_api/fsm$state;",
            "Ljava/util/Set",
            "<",
            "Lio/topvpn/vpn_api/fsm$state;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>(Lio/topvpn/vpn_api/fsm$state;[Lio/topvpn/vpn_api/fsm$transition;)V
    .locals 1

    .prologue
    .line 53
    const-string v0, "fsm"

    invoke-direct {p0, v0, p1, p2}, Lio/topvpn/vpn_api/fsm;-><init>(Ljava/lang/String;Lio/topvpn/vpn_api/fsm$state;[Lio/topvpn/vpn_api/fsm$transition;)V

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;Lio/topvpn/vpn_api/fsm$state;[Lio/topvpn/vpn_api/fsm$transition;)V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/topvpn/vpn_api/fsm;->m_transitions:Ljava/util/Map;

    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/topvpn/vpn_api/fsm;->m_state_sync:Ljava/lang/Object;

    .line 43
    iput-object p1, p0, Lio/topvpn/vpn_api/fsm;->m_name:Ljava/lang/String;

    .line 44
    array-length v3, p3

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, p3, v2

    .line 46
    iget-object v5, v4, Lio/topvpn/vpn_api/fsm$transition;->m_to:[Lio/topvpn/vpn_api/fsm$state;

    array-length v6, v5

    move v0, v1

    :goto_1
    if-ge v0, v6, :cond_0

    aget-object v7, v5, v0

    .line 47
    iget-object v8, v4, Lio/topvpn/vpn_api/fsm$transition;->m_from:Lio/topvpn/vpn_api/fsm$state;

    invoke-direct {p0, v8, v7}, Lio/topvpn/vpn_api/fsm;->register_transition(Lio/topvpn/vpn_api/fsm$state;Lio/topvpn/vpn_api/fsm$state;)V

    .line 46
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 44
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 49
    :cond_1
    iput-object p2, p0, Lio/topvpn/vpn_api/fsm;->m_state:Lio/topvpn/vpn_api/fsm$state;

    .line 50
    return-void
.end method

.method private register_transition(Lio/topvpn/vpn_api/fsm$state;Lio/topvpn/vpn_api/fsm$state;)V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lio/topvpn/vpn_api/fsm;->m_transitions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 57
    if-nez v0, :cond_0

    .line 59
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 60
    iget-object v1, p0, Lio/topvpn/vpn_api/fsm;->m_transitions:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 63
    return-void
.end method

.method private zerr_state(ILio/topvpn/vpn_api/fsm$state;Lio/topvpn/vpn_api/fsm$state;)I
    .locals 1

    .prologue
    .line 99
    const-string v0, ""

    invoke-direct {p0, p1, p2, p3, v0}, Lio/topvpn/vpn_api/fsm;->zerr_state(ILio/topvpn/vpn_api/fsm$state;Lio/topvpn/vpn_api/fsm$state;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private zerr_state(ILio/topvpn/vpn_api/fsm$state;Lio/topvpn/vpn_api/fsm$state;Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Lio/topvpn/vpn_api/fsm$state;->m_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p3, Lio/topvpn/vpn_api/fsm$state;->m_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/topvpn/vpn_api/fsm;->zerr(ILjava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method protected final _set_state(Lio/topvpn/vpn_api/fsm$state;)V
    .locals 4

    .prologue
    const/4 v3, 0x5

    .line 102
    iget-object v0, p0, Lio/topvpn/vpn_api/fsm;->m_state:Lio/topvpn/vpn_api/fsm$state;

    .line 103
    invoke-direct {p0, v3, v0, p1}, Lio/topvpn/vpn_api/fsm;->zerr_state(ILio/topvpn/vpn_api/fsm$state;Lio/topvpn/vpn_api/fsm$state;)I

    .line 104
    iget-object v1, p0, Lio/topvpn/vpn_api/fsm;->m_state:Lio/topvpn/vpn_api/fsm$state;

    invoke-virtual {v1, p0, p1}, Lio/topvpn/vpn_api/fsm$state;->exit(Lio/topvpn/vpn_api/fsm;Lio/topvpn/vpn_api/fsm$state;)V

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/topvpn/vpn_api/fsm;->m_state:Lio/topvpn/vpn_api/fsm$state;

    iget-object v2, v2, Lio/topvpn/vpn_api/fsm$state;->m_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " exited"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v3, v1}, Lio/topvpn/vpn_api/fsm;->zerr(ILjava/lang/String;)I

    .line 106
    iput-object p1, p0, Lio/topvpn/vpn_api/fsm;->m_state:Lio/topvpn/vpn_api/fsm$state;

    .line 107
    iget-object v1, p0, Lio/topvpn/vpn_api/fsm;->m_state:Lio/topvpn/vpn_api/fsm$state;

    invoke-virtual {v1, p0, v0}, Lio/topvpn/vpn_api/fsm$state;->enter(Lio/topvpn/vpn_api/fsm;Lio/topvpn/vpn_api/fsm$state;)V

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/topvpn/vpn_api/fsm;->m_state:Lio/topvpn/vpn_api/fsm$state;

    iget-object v1, v1, Lio/topvpn/vpn_api/fsm$state;->m_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " entered"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lio/topvpn/vpn_api/fsm;->zerr(ILjava/lang/String;)I

    .line 109
    iget-object v0, p0, Lio/topvpn/vpn_api/fsm;->m_state_sync:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 110
    return-void
.end method

.method public final get_state()Lio/topvpn/vpn_api/fsm$state;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lio/topvpn/vpn_api/fsm;->m_state:Lio/topvpn/vpn_api/fsm$state;

    return-object v0
.end method

.method public set_state(Lio/topvpn/vpn_api/fsm$state;)V
    .locals 3

    .prologue
    .line 84
    iget-object v0, p0, Lio/topvpn/vpn_api/fsm;->m_transitions:Ljava/util/Map;

    iget-object v1, p0, Lio/topvpn/vpn_api/fsm;->m_state:Lio/topvpn/vpn_api/fsm$state;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    const-string v0, "fsm_invalid_transition"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lio/topvpn/vpn_api/fsm;->m_state:Lio/topvpn/vpn_api/fsm$state;

    iget-object v2, v2, Lio/topvpn/vpn_api/fsm$state;->m_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lio/topvpn/vpn_api/fsm$state;->m_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/topvpn/vpn_api/util;->perr(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    const/4 v0, 0x3

    iget-object v1, p0, Lio/topvpn/vpn_api/fsm;->m_state:Lio/topvpn/vpn_api/fsm$state;

    const-string v2, "invalid transition"

    invoke-direct {p0, v0, v1, p1, v2}, Lio/topvpn/vpn_api/fsm;->zerr_state(ILio/topvpn/vpn_api/fsm$state;Lio/topvpn/vpn_api/fsm$state;Ljava/lang/String;)I

    .line 93
    :goto_0
    return-void

    .line 90
    :cond_0
    iget-object v1, p0, Lio/topvpn/vpn_api/fsm;->m_state_sync:Ljava/lang/Object;

    monitor-enter v1

    .line 91
    :try_start_0
    invoke-virtual {p0, p1}, Lio/topvpn/vpn_api/fsm;->_set_state(Lio/topvpn/vpn_api/fsm$state;)V

    .line 92
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public set_state_if(Lio/topvpn/vpn_api/fsm$state;Lio/topvpn/vpn_api/fsm$state;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 68
    iget-object v0, p0, Lio/topvpn/vpn_api/fsm;->m_transitions:Ljava/util/Map;

    iget-object v2, p0, Lio/topvpn/vpn_api/fsm;->m_state:Lio/topvpn/vpn_api/fsm$state;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    const-string v0, "fsm_if_invalid_transition"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lio/topvpn/vpn_api/fsm;->m_state:Lio/topvpn/vpn_api/fsm$state;

    iget-object v3, v3, Lio/topvpn/vpn_api/fsm$state;->m_name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lio/topvpn/vpn_api/fsm$state;->m_name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lio/topvpn/vpn_api/util;->perr(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    const/4 v0, 0x3

    iget-object v2, p0, Lio/topvpn/vpn_api/fsm;->m_state:Lio/topvpn/vpn_api/fsm$state;

    const-string v3, "invalid transition"

    invoke-direct {p0, v0, v2, p1, v3}, Lio/topvpn/vpn_api/fsm;->zerr_state(ILio/topvpn/vpn_api/fsm$state;Lio/topvpn/vpn_api/fsm$state;Ljava/lang/String;)I

    move v0, v1

    .line 79
    :goto_0
    return v0

    .line 75
    :cond_0
    iget-object v2, p0, Lio/topvpn/vpn_api/fsm;->m_state_sync:Ljava/lang/Object;

    monitor-enter v2

    .line 76
    :try_start_0
    iget-object v0, p0, Lio/topvpn/vpn_api/fsm;->m_state:Lio/topvpn/vpn_api/fsm$state;

    if-eq v0, p2, :cond_1

    .line 77
    monitor-exit v2

    move v0, v1

    goto :goto_0

    .line 78
    :cond_1
    invoke-virtual {p0, p1}, Lio/topvpn/vpn_api/fsm;->_set_state(Lio/topvpn/vpn_api/fsm$state;)V

    .line 79
    const/4 v0, 0x1

    monitor-exit v2

    goto :goto_0

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public wait_for(Lio/topvpn/vpn_api/fsm$state;I)V
    .locals 8

    .prologue
    .line 113
    invoke-static {}, Lio/topvpn/vpn_api/util;->time_monotonic_ms()J

    move-result-wide v0

    .line 114
    iget-object v2, p0, Lio/topvpn/vpn_api/fsm;->m_state_sync:Ljava/lang/Object;

    monitor-enter v2

    .line 115
    :goto_0
    :try_start_0
    iget-object v3, p0, Lio/topvpn/vpn_api/fsm;->m_state:Lio/topvpn/vpn_api/fsm$state;

    if-eq v3, p1, :cond_0

    .line 117
    if-lez p2, :cond_1

    invoke-static {}, Lio/topvpn/vpn_api/util;->time_monotonic_ms()J

    move-result-wide v4

    sub-long/2addr v4, v0

    int-to-long v6, p2

    cmp-long v3, v4, v6

    if-lez v3, :cond_1

    .line 121
    :cond_0
    monitor-exit v2

    .line 122
    return-void

    .line 119
    :cond_1
    iget-object v3, p0, Lio/topvpn/vpn_api/fsm;->m_state_sync:Ljava/lang/Object;

    int-to-long v4, p2

    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V

    goto :goto_0

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected final zerr(ILjava/lang/String;)I
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lio/topvpn/vpn_api/fsm;->m_name:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lio/topvpn/vpn_api/util;->_zerr(Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    return v0
.end method
