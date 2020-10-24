.class abstract Lmiuix/animation/listener/ListenerNotifier$BaseNotifier;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private mUpdateList:Ljava/util/List;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/animation/listener/ListenerNotifier$BaseNotifier;->mUpdateList:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lmiuix/animation/listener/ListenerNotifier$1;)V
    .locals 0

    invoke-direct {p0}, Lmiuix/animation/listener/ListenerNotifier$BaseNotifier;-><init>()V

    return-void
.end method


# virtual methods
.method abstract doNotify(Lmiuix/animation/listener/ListenerNotifier$ListenerNode;Ljava/lang/Object;Ljava/util/Collection;)V
.end method

.method notify(Lmiuix/animation/listener/ListenerNotifier$ListenerNode;Ljava/lang/Object;Ljava/util/Collection;)V
    .locals 3

    iget-object v0, p1, Lmiuix/animation/listener/ListenerNotifier$ListenerNode;->relatedProperty:[Lmiuix/animation/property/FloatProperty;

    invoke-static {v0}, Lmiuix/animation/utils/CommonUtils;->isArrayEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lmiuix/animation/listener/ListenerNotifier$BaseNotifier;->doNotify(Lmiuix/animation/listener/ListenerNotifier$ListenerNode;Ljava/lang/Object;Ljava/util/Collection;)V

    goto :goto_1

    :cond_0
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/animation/listener/UpdateInfo;

    iget-object v1, p1, Lmiuix/animation/listener/ListenerNotifier$ListenerNode;->relatedProperty:[Lmiuix/animation/property/FloatProperty;

    if-eqz v1, :cond_2

    iget-object v2, v0, Lmiuix/animation/listener/UpdateInfo;->property:Lmiuix/animation/property/FloatProperty;

    invoke-static {v1, v2}, Lmiuix/animation/utils/CommonUtils;->inArray([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_2
    iget-object v1, p0, Lmiuix/animation/listener/ListenerNotifier$BaseNotifier;->mUpdateList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    iget-object p3, p0, Lmiuix/animation/listener/ListenerNotifier$BaseNotifier;->mUpdateList:Ljava/util/List;

    invoke-virtual {p0, p1, p2, p3}, Lmiuix/animation/listener/ListenerNotifier$BaseNotifier;->doNotify(Lmiuix/animation/listener/ListenerNotifier$ListenerNode;Ljava/lang/Object;Ljava/util/Collection;)V

    iget-object p0, p0, Lmiuix/animation/listener/ListenerNotifier$BaseNotifier;->mUpdateList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :goto_1
    return-void
.end method
