.class Lmiui/animation/listener/ListenerNotifier$NotifyData;
.super Ljava/lang/Object;
.source ""


# instance fields
.field updateList:Ljava/util/List;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/animation/listener/ListenerNotifier$NotifyData;->updateList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method addList(Ljava/util/Collection;)V
    .locals 1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/animation/listener/UpdateInfo;

    invoke-virtual {p0, v0}, Lmiui/animation/listener/ListenerNotifier$NotifyData;->addUpdate(Lmiui/animation/listener/UpdateInfo;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method addUpdate(Lmiui/animation/listener/UpdateInfo;)V
    .locals 1

    iget-object v0, p0, Lmiui/animation/listener/ListenerNotifier$NotifyData;->updateList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lmiui/animation/listener/ListenerNotifier$NotifyData;->updateList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
