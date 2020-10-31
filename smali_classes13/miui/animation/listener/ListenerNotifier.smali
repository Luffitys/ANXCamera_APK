.class public Lmiui/animation/listener/ListenerNotifier;
.super Ljava/lang/Object;
.source "ListenerNotifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/animation/listener/ListenerNotifier$PendingNotify;,
        Lmiui/animation/listener/ListenerNotifier$ListenerNode;,
        Lmiui/animation/listener/ListenerNotifier$NotifyData;,
        Lmiui/animation/listener/ListenerNotifier$SingleNotifier;,
        Lmiui/animation/listener/ListenerNotifier$BaseNotifier;
    }
.end annotation


# static fields
.field private static final NOTIFY_ANIM_CANCEL:I = 0x6

.field private static final NOTIFY_ANIM_END:I = 0x5

.field private static final NOTIFY_BEGIN:I = 0x0

.field private static final NOTIFY_CANCEL_ALL:I = 0x7

.field private static final NOTIFY_END_ALL:I = 0x8

.field private static final NOTIFY_PROPERTY_BEGIN:I = 0x1

.field private static final NOTIFY_PROPERTY_END:I = 0x4

.field private static final NOTIFY_UPDATE:I = 0x2

.field private static final NOTIFY_UPDATE_LIST:I = 0x3

.field private static sNotifiers:[Lmiui/animation/listener/ListenerNotifier$BaseNotifier;


# instance fields
.field private mCurNotify:Lmiui/animation/listener/ListenerNotifier$PendingNotify;

.field private mExistListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiui/animation/listener/TransitionListener;",
            ">;"
        }
    .end annotation
.end field

.field private mHead:Lmiui/animation/listener/ListenerNotifier$ListenerNode;

.field private mNotifyData:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Object;",
            "Landroid/util/SparseArray<",
            "Lmiui/animation/listener/ListenerNotifier$NotifyData;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPendingList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiui/animation/listener/ListenerNotifier$PendingNotify;",
            ">;"
        }
    .end annotation
.end field

.field private final mTarget:Lmiui/animation/IAnimTarget;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x9

    new-array v0, v0, [Lmiui/animation/listener/ListenerNotifier$BaseNotifier;

    new-instance v1, Lmiui/animation/listener/ListenerNotifier$1;

    invoke-direct {v1}, Lmiui/animation/listener/ListenerNotifier$1;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lmiui/animation/listener/ListenerNotifier$2;

    invoke-direct {v1}, Lmiui/animation/listener/ListenerNotifier$2;-><init>()V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lmiui/animation/listener/ListenerNotifier$3;

    invoke-direct {v1}, Lmiui/animation/listener/ListenerNotifier$3;-><init>()V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lmiui/animation/listener/ListenerNotifier$4;

    invoke-direct {v1}, Lmiui/animation/listener/ListenerNotifier$4;-><init>()V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lmiui/animation/listener/ListenerNotifier$5;

    invoke-direct {v1}, Lmiui/animation/listener/ListenerNotifier$5;-><init>()V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lmiui/animation/listener/ListenerNotifier$6;

    invoke-direct {v1}, Lmiui/animation/listener/ListenerNotifier$6;-><init>()V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Lmiui/animation/listener/ListenerNotifier$7;

    invoke-direct {v1}, Lmiui/animation/listener/ListenerNotifier$7;-><init>()V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Lmiui/animation/listener/ListenerNotifier$8;

    invoke-direct {v1}, Lmiui/animation/listener/ListenerNotifier$8;-><init>()V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-instance v1, Lmiui/animation/listener/ListenerNotifier$9;

    invoke-direct {v1}, Lmiui/animation/listener/ListenerNotifier$9;-><init>()V

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sput-object v0, Lmiui/animation/listener/ListenerNotifier;->sNotifiers:[Lmiui/animation/listener/ListenerNotifier$BaseNotifier;

    return-void
.end method

.method public constructor <init>(Lmiui/animation/IAnimTarget;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lmiui/animation/listener/ListenerNotifier;->mNotifyData:Landroid/util/ArrayMap;

    new-instance v0, Lmiui/animation/listener/ListenerNotifier$ListenerNode;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmiui/animation/listener/ListenerNotifier$ListenerNode;-><init>(Lmiui/animation/listener/ListenerNotifier$1;)V

    iput-object v0, p0, Lmiui/animation/listener/ListenerNotifier;->mHead:Lmiui/animation/listener/ListenerNotifier$ListenerNode;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/animation/listener/ListenerNotifier;->mExistListeners:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/animation/listener/ListenerNotifier;->mPendingList:Ljava/util/List;

    iput-object p1, p0, Lmiui/animation/listener/ListenerNotifier;->mTarget:Lmiui/animation/IAnimTarget;

    return-void
.end method

.method static synthetic access$200(Lmiui/animation/listener/ListenerNotifier$ListenerNode;Ljava/lang/Object;Lmiui/animation/listener/UpdateInfo;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lmiui/animation/listener/ListenerNotifier;->notifyOnUpdate(Lmiui/animation/listener/ListenerNotifier$ListenerNode;Ljava/lang/Object;Lmiui/animation/listener/UpdateInfo;)V

    return-void
.end method

.method static synthetic access$300(Lmiui/animation/listener/ListenerNotifier$ListenerNode;Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Lmiui/animation/listener/ListenerNotifier;->removeNode(Lmiui/animation/listener/ListenerNotifier$ListenerNode;Ljava/lang/Object;)V

    return-void
.end method

.method private addNode(Ljava/lang/Object;Lmiui/animation/base/AnimConfig;)V
    .registers 8

    iget-object v0, p2, Lmiui/animation/base/AnimConfig;->listeners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lmiui/animation/listener/ListenerNotifier;->mHead:Lmiui/animation/listener/ListenerNotifier$ListenerNode;

    :cond_b
    :goto_b
    iget-object v1, v0, Lmiui/animation/listener/ListenerNotifier$ListenerNode;->next:Lmiui/animation/listener/ListenerNotifier$ListenerNode;

    if-eqz v1, :cond_26

    iget-object v0, v0, Lmiui/animation/listener/ListenerNotifier$ListenerNode;->next:Lmiui/animation/listener/ListenerNotifier$ListenerNode;

    iget-object v1, p2, Lmiui/animation/base/AnimConfig;->listeners:Ljava/util/HashSet;

    iget-object v2, v0, Lmiui/animation/listener/ListenerNotifier$ListenerNode;->listener:Lmiui/animation/listener/TransitionListener;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lmiui/animation/listener/ListenerNotifier;->mExistListeners:Ljava/util/List;

    iget-object v2, v0, Lmiui/animation/listener/ListenerNotifier$ListenerNode;->listener:Lmiui/animation/listener/TransitionListener;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v0, p1, p2}, Lmiui/animation/listener/ListenerNotifier;->updateNodeInfo(Lmiui/animation/listener/ListenerNotifier$ListenerNode;Ljava/lang/Object;Lmiui/animation/base/AnimConfig;)V

    goto :goto_b

    :cond_26
    iget-object v1, p2, Lmiui/animation/base/AnimConfig;->listeners:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_52

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/animation/listener/TransitionListener;

    iget-object v3, p0, Lmiui/animation/listener/ListenerNotifier;->mExistListeners:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_41

    goto :goto_2c

    :cond_41
    new-instance v3, Lmiui/animation/listener/ListenerNotifier$ListenerNode;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lmiui/animation/listener/ListenerNotifier$ListenerNode;-><init>(Lmiui/animation/listener/ListenerNotifier$1;)V

    iput-object v2, v3, Lmiui/animation/listener/ListenerNotifier$ListenerNode;->listener:Lmiui/animation/listener/TransitionListener;

    invoke-direct {p0, v3, p1, p2}, Lmiui/animation/listener/ListenerNotifier;->updateNodeInfo(Lmiui/animation/listener/ListenerNotifier$ListenerNode;Ljava/lang/Object;Lmiui/animation/base/AnimConfig;)V

    iput-object v0, v3, Lmiui/animation/listener/ListenerNotifier$ListenerNode;->prev:Lmiui/animation/listener/ListenerNotifier$ListenerNode;

    iput-object v3, v0, Lmiui/animation/listener/ListenerNotifier$ListenerNode;->next:Lmiui/animation/listener/ListenerNotifier$ListenerNode;

    move-object v0, v3

    goto :goto_2c

    :cond_52
    iget-object v1, p0, Lmiui/animation/listener/ListenerNotifier;->mExistListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    return-void
.end method

.method private getNodeCount()I
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lmiui/animation/listener/ListenerNotifier;->mHead:Lmiui/animation/listener/ListenerNotifier$ListenerNode;

    :goto_3
    iget-object v2, v1, Lmiui/animation/listener/ListenerNotifier$ListenerNode;->next:Lmiui/animation/listener/ListenerNotifier$ListenerNode;

    if-eqz v2, :cond_c

    iget-object v1, v1, Lmiui/animation/listener/ListenerNotifier$ListenerNode;->next:Lmiui/animation/listener/ListenerNotifier$ListenerNode;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_c
    return v0
.end method

.method private getNotifyData(ILjava/lang/Object;)Lmiui/animation/listener/ListenerNotifier$NotifyData;
    .registers 6

    iget-object v0, p0, Lmiui/animation/listener/ListenerNotifier;->mNotifyData:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    if-nez v0, :cond_15

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    move-object v0, v1

    iget-object v1, p0, Lmiui/animation/listener/ListenerNotifier;->mNotifyData:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/animation/listener/ListenerNotifier$NotifyData;

    if-nez v1, :cond_26

    new-instance v2, Lmiui/animation/listener/ListenerNotifier$NotifyData;

    invoke-direct {v2}, Lmiui/animation/listener/ListenerNotifier$NotifyData;-><init>()V

    move-object v1, v2

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_26
    return-object v1
.end method

.method private notifyByType(ILjava/lang/Object;Lmiui/animation/listener/UpdateInfo;Ljava/util/Collection;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            "Lmiui/animation/listener/UpdateInfo;",
            "Ljava/util/Collection<",
            "Lmiui/animation/listener/UpdateInfo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lmiui/animation/listener/ListenerNotifier;->getNodeCount()I

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-direct {p0, p1, p2}, Lmiui/animation/listener/ListenerNotifier;->getNotifyData(ILjava/lang/Object;)Lmiui/animation/listener/ListenerNotifier$NotifyData;

    move-result-object v0

    if-eqz p4, :cond_11

    invoke-virtual {v0, p4}, Lmiui/animation/listener/ListenerNotifier$NotifyData;->addList(Ljava/util/Collection;)V

    goto :goto_16

    :cond_11
    if-eqz p3, :cond_16

    invoke-virtual {v0, p3}, Lmiui/animation/listener/ListenerNotifier$NotifyData;->addUpdate(Lmiui/animation/listener/UpdateInfo;)V

    :cond_16
    :goto_16
    iget-object v1, p0, Lmiui/animation/listener/ListenerNotifier;->mCurNotify:Lmiui/animation/listener/ListenerNotifier$PendingNotify;

    if-nez v1, :cond_4f

    new-instance v1, Lmiui/animation/listener/ListenerNotifier$PendingNotify;

    invoke-direct {v1, p2, p1}, Lmiui/animation/listener/ListenerNotifier$PendingNotify;-><init>(Ljava/lang/Object;I)V

    iput-object v1, p0, Lmiui/animation/listener/ListenerNotifier;->mCurNotify:Lmiui/animation/listener/ListenerNotifier$PendingNotify;

    invoke-direct {p0, p2, p1, v0}, Lmiui/animation/listener/ListenerNotifier;->notifyListener(Ljava/lang/Object;ILmiui/animation/listener/ListenerNotifier$NotifyData;)V

    iget-object v1, p0, Lmiui/animation/listener/ListenerNotifier;->mPendingList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_46

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/animation/listener/ListenerNotifier$PendingNotify;

    iget v3, v2, Lmiui/animation/listener/ListenerNotifier$PendingNotify;->what:I

    iget-object v4, v2, Lmiui/animation/listener/ListenerNotifier$PendingNotify;->tag:Ljava/lang/Object;

    invoke-direct {p0, v3, v4}, Lmiui/animation/listener/ListenerNotifier;->getNotifyData(ILjava/lang/Object;)Lmiui/animation/listener/ListenerNotifier$NotifyData;

    move-result-object v0

    iget-object v3, v2, Lmiui/animation/listener/ListenerNotifier$PendingNotify;->tag:Ljava/lang/Object;

    iget v4, v2, Lmiui/animation/listener/ListenerNotifier$PendingNotify;->what:I

    invoke-direct {p0, v3, v4, v0}, Lmiui/animation/listener/ListenerNotifier;->notifyListener(Ljava/lang/Object;ILmiui/animation/listener/ListenerNotifier$NotifyData;)V

    goto :goto_2a

    :cond_46
    const/4 v1, 0x0

    iput-object v1, p0, Lmiui/animation/listener/ListenerNotifier;->mCurNotify:Lmiui/animation/listener/ListenerNotifier$PendingNotify;

    iget-object v1, p0, Lmiui/animation/listener/ListenerNotifier;->mPendingList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_79

    :cond_4f
    invoke-virtual {v1, p2, p1}, Lmiui/animation/listener/ListenerNotifier$PendingNotify;->isSame(Ljava/lang/Object;I)Z

    move-result v1

    if-nez v1, :cond_79

    iget-object v1, p0, Lmiui/animation/listener/ListenerNotifier;->mPendingList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/animation/listener/ListenerNotifier$PendingNotify;

    invoke-virtual {v2, p2, p1}, Lmiui/animation/listener/ListenerNotifier$PendingNotify;->isSame(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_6e

    return-void

    :cond_6e
    goto :goto_5b

    :cond_6f
    iget-object v1, p0, Lmiui/animation/listener/ListenerNotifier;->mPendingList:Ljava/util/List;

    new-instance v2, Lmiui/animation/listener/ListenerNotifier$PendingNotify;

    invoke-direct {v2, p2, p1}, Lmiui/animation/listener/ListenerNotifier$PendingNotify;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_79
    :goto_79
    return-void
.end method

.method private notifyListener(Ljava/lang/Object;ILmiui/animation/listener/ListenerNotifier$NotifyData;)V
    .registers 7

    iget-object v0, p0, Lmiui/animation/listener/ListenerNotifier;->mHead:Lmiui/animation/listener/ListenerNotifier$ListenerNode;

    :goto_2
    iget-object v1, v0, Lmiui/animation/listener/ListenerNotifier$ListenerNode;->next:Lmiui/animation/listener/ListenerNotifier$ListenerNode;

    if-eqz v1, :cond_1f

    iget-object v0, v0, Lmiui/animation/listener/ListenerNotifier$ListenerNode;->next:Lmiui/animation/listener/ListenerNotifier$ListenerNode;

    iget-object v1, v0, Lmiui/animation/listener/ListenerNotifier$ListenerNode;->bindTag:Ljava/lang/Object;

    if-eqz v1, :cond_15

    iget-object v1, v0, Lmiui/animation/listener/ListenerNotifier$ListenerNode;->bindTag:Ljava/lang/Object;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    goto :goto_2

    :cond_15
    sget-object v1, Lmiui/animation/listener/ListenerNotifier;->sNotifiers:[Lmiui/animation/listener/ListenerNotifier$BaseNotifier;

    aget-object v1, v1, p2

    iget-object v2, p3, Lmiui/animation/listener/ListenerNotifier$NotifyData;->updateList:Ljava/util/List;

    invoke-virtual {v1, v0, p1, v2}, Lmiui/animation/listener/ListenerNotifier$BaseNotifier;->notify(Lmiui/animation/listener/ListenerNotifier$ListenerNode;Ljava/lang/Object;Ljava/util/List;)V

    goto :goto_2

    :cond_1f
    iget-object v1, p3, Lmiui/animation/listener/ListenerNotifier$NotifyData;->updateList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    return-void
.end method

.method private static notifyOnUpdate(Lmiui/animation/listener/ListenerNotifier$ListenerNode;Ljava/lang/Object;Lmiui/animation/listener/UpdateInfo;)V
    .registers 10

    iget-object v6, p0, Lmiui/animation/listener/ListenerNotifier$ListenerNode;->listener:Lmiui/animation/listener/TransitionListener;

    iget-object v0, p2, Lmiui/animation/listener/UpdateInfo;->property:Lmiui/animation/property/FloatProperty;

    invoke-virtual {p2}, Lmiui/animation/listener/UpdateInfo;->getFloatValue()F

    move-result v1

    iget-boolean v2, p2, Lmiui/animation/listener/UpdateInfo;->isCompleted:Z

    invoke-virtual {v6, p1, v0, v1, v2}, Lmiui/animation/listener/TransitionListener;->onUpdate(Ljava/lang/Object;Lmiui/animation/property/FloatProperty;FZ)V

    iget-object v0, p2, Lmiui/animation/listener/UpdateInfo;->property:Lmiui/animation/property/FloatProperty;

    instance-of v0, v0, Lmiui/animation/property/IIntValueProperty;

    if-eqz v0, :cond_26

    iget-object v0, p2, Lmiui/animation/listener/UpdateInfo;->property:Lmiui/animation/property/FloatProperty;

    move-object v2, v0

    check-cast v2, Lmiui/animation/property/IIntValueProperty;

    invoke-virtual {p2}, Lmiui/animation/listener/UpdateInfo;->getIntValue()I

    move-result v3

    iget v4, p2, Lmiui/animation/listener/UpdateInfo;->velocity:F

    iget-boolean v5, p2, Lmiui/animation/listener/UpdateInfo;->isCompleted:Z

    move-object v0, v6

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lmiui/animation/listener/TransitionListener;->onUpdate(Ljava/lang/Object;Lmiui/animation/property/IIntValueProperty;IFZ)V

    goto :goto_35

    :cond_26
    iget-object v2, p2, Lmiui/animation/listener/UpdateInfo;->property:Lmiui/animation/property/FloatProperty;

    invoke-virtual {p2}, Lmiui/animation/listener/UpdateInfo;->getFloatValue()F

    move-result v3

    iget v4, p2, Lmiui/animation/listener/UpdateInfo;->velocity:F

    iget-boolean v5, p2, Lmiui/animation/listener/UpdateInfo;->isCompleted:Z

    move-object v0, v6

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lmiui/animation/listener/TransitionListener;->onUpdate(Ljava/lang/Object;Lmiui/animation/property/FloatProperty;FFZ)V

    :goto_35
    return-void
.end method

.method private static removeNode(Lmiui/animation/listener/ListenerNotifier$ListenerNode;Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lmiui/animation/listener/ListenerNotifier$ListenerNode;->toTag:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lmiui/animation/listener/ListenerNotifier$ListenerNode;->prev:Lmiui/animation/listener/ListenerNotifier$ListenerNode;

    iget-object v1, p0, Lmiui/animation/listener/ListenerNotifier$ListenerNode;->next:Lmiui/animation/listener/ListenerNotifier$ListenerNode;

    iput-object v1, v0, Lmiui/animation/listener/ListenerNotifier$ListenerNode;->next:Lmiui/animation/listener/ListenerNotifier$ListenerNode;

    iget-object v0, p0, Lmiui/animation/listener/ListenerNotifier$ListenerNode;->next:Lmiui/animation/listener/ListenerNotifier$ListenerNode;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lmiui/animation/listener/ListenerNotifier$ListenerNode;->next:Lmiui/animation/listener/ListenerNotifier$ListenerNode;

    iget-object v1, p0, Lmiui/animation/listener/ListenerNotifier$ListenerNode;->prev:Lmiui/animation/listener/ListenerNotifier$ListenerNode;

    iput-object v1, v0, Lmiui/animation/listener/ListenerNotifier$ListenerNode;->prev:Lmiui/animation/listener/ListenerNotifier$ListenerNode;

    :cond_18
    return-void
.end method

.method private updateNodeInfo(Lmiui/animation/listener/ListenerNotifier$ListenerNode;Ljava/lang/Object;Lmiui/animation/base/AnimConfig;)V
    .registers 5

    iput-object p2, p1, Lmiui/animation/listener/ListenerNotifier$ListenerNode;->toTag:Ljava/lang/Object;

    iget-object v0, p3, Lmiui/animation/base/AnimConfig;->tag:Ljava/lang/Object;

    iput-object v0, p1, Lmiui/animation/listener/ListenerNotifier$ListenerNode;->bindTag:Ljava/lang/Object;

    iget-object v0, p3, Lmiui/animation/base/AnimConfig;->relatedProperty:[Lmiui/animation/property/FloatProperty;

    iput-object v0, p1, Lmiui/animation/listener/ListenerNotifier$ListenerNode;->relatedProperty:[Lmiui/animation/property/FloatProperty;

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 3

    iget-object v0, p0, Lmiui/animation/listener/ListenerNotifier;->mHead:Lmiui/animation/listener/ListenerNotifier$ListenerNode;

    iget-object v0, v0, Lmiui/animation/listener/ListenerNotifier$ListenerNode;->next:Lmiui/animation/listener/ListenerNotifier$ListenerNode;

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lmiui/animation/listener/ListenerNotifier;->mHead:Lmiui/animation/listener/ListenerNotifier$ListenerNode;

    iget-object v0, v0, Lmiui/animation/listener/ListenerNotifier$ListenerNode;->next:Lmiui/animation/listener/ListenerNotifier$ListenerNode;

    iput-object v1, v0, Lmiui/animation/listener/ListenerNotifier$ListenerNode;->prev:Lmiui/animation/listener/ListenerNotifier$ListenerNode;

    :cond_d
    iget-object v0, p0, Lmiui/animation/listener/ListenerNotifier;->mHead:Lmiui/animation/listener/ListenerNotifier$ListenerNode;

    iput-object v1, v0, Lmiui/animation/listener/ListenerNotifier$ListenerNode;->next:Lmiui/animation/listener/ListenerNotifier$ListenerNode;

    iget-object v0, p0, Lmiui/animation/listener/ListenerNotifier;->mNotifyData:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    iget-object v0, p0, Lmiui/animation/listener/ListenerNotifier;->mPendingList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iput-object v1, p0, Lmiui/animation/listener/ListenerNotifier;->mCurNotify:Lmiui/animation/listener/ListenerNotifier$PendingNotify;

    return-void
.end method

.method public notifyAnimCancel(Ljava/lang/Object;Lmiui/animation/listener/UpdateInfo;)V
    .registers 5

    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lmiui/animation/listener/ListenerNotifier;->notifyByType(ILjava/lang/Object;Lmiui/animation/listener/UpdateInfo;Ljava/util/Collection;)V

    return-void
.end method

.method public notifyAnimEnd(Ljava/lang/Object;Lmiui/animation/listener/UpdateInfo;)V
    .registers 5

    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lmiui/animation/listener/ListenerNotifier;->notifyByType(ILjava/lang/Object;Lmiui/animation/listener/UpdateInfo;Ljava/util/Collection;)V

    return-void
.end method

.method public notifyBegin(Ljava/lang/Object;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1, v1}, Lmiui/animation/listener/ListenerNotifier;->notifyByType(ILjava/lang/Object;Lmiui/animation/listener/UpdateInfo;Ljava/util/Collection;)V

    return-void
.end method

.method public notifyCancelAll(Ljava/lang/Object;)V
    .registers 4

    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1, v1}, Lmiui/animation/listener/ListenerNotifier;->notifyByType(ILjava/lang/Object;Lmiui/animation/listener/UpdateInfo;Ljava/util/Collection;)V

    return-void
.end method

.method public notifyEndAll(Ljava/lang/Object;)V
    .registers 4

    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1, v1}, Lmiui/animation/listener/ListenerNotifier;->notifyByType(ILjava/lang/Object;Lmiui/animation/listener/UpdateInfo;Ljava/util/Collection;)V

    return-void
.end method

.method public notifyPropertyBegin(Ljava/lang/Object;Lmiui/animation/listener/UpdateInfo;)V
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lmiui/animation/listener/ListenerNotifier;->notifyByType(ILjava/lang/Object;Lmiui/animation/listener/UpdateInfo;Ljava/util/Collection;)V

    return-void
.end method

.method public notifyPropertyEnd(Ljava/lang/Object;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Lmiui/animation/listener/UpdateInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1, p2}, Lmiui/animation/listener/ListenerNotifier;->notifyByType(ILjava/lang/Object;Lmiui/animation/listener/UpdateInfo;Ljava/util/Collection;)V

    return-void
.end method

.method public notifyUpdate(Ljava/lang/Object;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Lmiui/animation/listener/UpdateInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1, p2}, Lmiui/animation/listener/ListenerNotifier;->notifyByType(ILjava/lang/Object;Lmiui/animation/listener/UpdateInfo;Ljava/util/Collection;)V

    return-void
.end method

.method public notifyUpdateList(Ljava/lang/Object;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Lmiui/animation/listener/UpdateInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1, p2}, Lmiui/animation/listener/ListenerNotifier;->notifyByType(ILjava/lang/Object;Lmiui/animation/listener/UpdateInfo;Ljava/util/Collection;)V

    return-void
.end method

.method public setListeners(Ljava/lang/Object;Lmiui/animation/base/AnimConfigLink;)Z
    .registers 9

    iget-object v0, p2, Lmiui/animation/base/AnimConfigLink;->configList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/animation/base/AnimConfig;

    invoke-direct {p0, p1, v1}, Lmiui/animation/listener/ListenerNotifier;->addNode(Ljava/lang/Object;Lmiui/animation/base/AnimConfig;)V

    goto :goto_6

    :cond_16
    invoke-static {}, Lmiui/animation/utils/LogUtils;->isLogEnabled()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_65

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setListeners for "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lmiui/animation/listener/ListenerNotifier;->mTarget:Lmiui/animation/IAnimTarget;

    invoke-virtual {v3}, Lmiui/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "toTag = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "listeners = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lmiui/animation/listener/ListenerNotifier;->getNodeCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v0, v3}, Lmiui/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_65
    iget-object v0, p0, Lmiui/animation/listener/ListenerNotifier;->mHead:Lmiui/animation/listener/ListenerNotifier$ListenerNode;

    iget-object v0, v0, Lmiui/animation/listener/ListenerNotifier$ListenerNode;->next:Lmiui/animation/listener/ListenerNotifier$ListenerNode;

    if-eqz v0, :cond_6c

    goto :goto_6d

    :cond_6c
    move v1, v2

    :goto_6d
    return v1
.end method
