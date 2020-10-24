.class public Lmiui/animation/listener/ListenerNotifier;
.super Ljava/lang/Object;
.source ""


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

.field private mHead:Lmiui/animation/listener/ListenerNotifier$ListenerNode;

.field private mNotifyData:Landroid/util/ArrayMap;

.field private mPendingList:Ljava/util/List;

.field private final mTarget:Lmiui/animation/IAnimTarget;


# direct methods
.method static constructor <clinit>()V
    .locals 3

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
    .locals 2

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
    .locals 0

    invoke-static {p0, p1, p2}, Lmiui/animation/listener/ListenerNotifier;->notifyOnUpdate(Lmiui/animation/listener/ListenerNotifier$ListenerNode;Ljava/lang/Object;Lmiui/animation/listener/UpdateInfo;)V

    return-void
.end method

.method static synthetic access$300(Lmiui/animation/listener/ListenerNotifier$ListenerNode;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lmiui/animation/listener/ListenerNotifier;->removeNode(Lmiui/animation/listener/ListenerNotifier$ListenerNode;Ljava/lang/Object;)V

    return-void
.end method

.method private addNode(Ljava/lang/Object;Lmiui/animation/base/AnimConfig;)V
    .locals 5

    iget-object v0, p2, Lmiui/animation/base/AnimConfig;->listeners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lmiui/animation/listener/ListenerNotifier;->mHead:Lmiui/animation/listener/ListenerNotifier$ListenerNode;

    :goto_0
    iget-object v1, v0, Lmiui/animation/listener/ListenerNotifier$ListenerNode;->next:Lmiui/animation/listener/ListenerNotifier$ListenerNode;

    if-eqz v1, :cond_2

    iget-object v0, p2, Lmiui/animation/base/AnimConfig;->listeners:Ljava/util/HashSet;

    iget-object v2, v1, Lmiui/animation/listener/ListenerNotifier$ListenerNode;->listener:Lmiui/animation/listener/TransitionListener;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiui/animation/listener/ListenerNotifier;->mExistListeners:Ljava/util/List;

    iget-object v2, v1, Lmiui/animation/listener/ListenerNotifier$ListenerNode;->listener:Lmiui/animation/listener/TransitionListener;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v1, p1, p2}, Lmiui/animation/listener/ListenerNotifier;->updateNodeInfo(Lmiui/animation/listener/ListenerNotifier$ListenerNode;Ljava/lang/Object;Lmiui/animation/base/AnimConfig;)V

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    iget-object v1, p2, Lmiui/animation/base/AnimConfig;->listeners:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/animation/listener/TransitionListener;

    iget-object v3, p0, Lmiui/animation/listener/ListenerNotifier;->mExistListeners:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    new-instance v3, Lmiui/animation/listener/ListenerNotifier$ListenerNode;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lmiui/animation/listener/ListenerNotifier$ListenerNode;-><init>(Lmiui/animation/listener/ListenerNotifier$1;)V

    iput-object v2, v3, Lmiui/animation/listener/ListenerNotifier$ListenerNode;->listener:Lmiui/animation/listener/TransitionListener;

    invoke-direct {p0, v3, p1, p2}, Lmiui/animation/listener/ListenerNotifier;->updateNodeInfo(Lmiui/animation/listener/ListenerNotifier$ListenerNode;Ljava/lang/Object;Lmiui/animation/base/AnimConfig;)V

    iput-object v0, v3, Lmiui/animation/listener/ListenerNotifier$ListenerNode;->prev:Lmiui/animation/listener/ListenerNotifier$ListenerNode;

    iput-object v3, v0, Lmiui/animation/listener/ListenerNotifier$ListenerNode;->next:Lmiui/animation/listener/ListenerNotifier$ListenerNode;

    move-object v0, v3

    goto :goto_1

    :cond_4
    iget-object p0, p0, Lmiui/animation/listener/ListenerNotifier;->mExistListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private getNodeCount()I
    .locals 1

    iget-object p0, p0, Lmiui/animation/listener/ListenerNotifier;->mHead:Lmiui/animation/listener/ListenerNotifier$ListenerNode;

    const/4 v0, 0x0

    :goto_0
    iget-object p0, p0, Lmiui/animation/listener/ListenerNotifier$ListenerNode;->next:Lmiui/animation/listener/ListenerNotifier$ListenerNode;

    if-eqz p0, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method private getNotifyData(ILjava/lang/Object;)Lmiui/animation/listener/ListenerNotifier$NotifyData;
    .locals 1

    iget-object v0, p0, Lmiui/animation/listener/ListenerNotifier;->mNotifyData:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iget-object p0, p0, Lmiui/animation/listener/ListenerNotifier;->mNotifyData:Landroid/util/ArrayMap;

    invoke-virtual {p0, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmiui/animation/listener/ListenerNotifier$NotifyData;

    if-nez p0, :cond_1

    new-instance p0, Lmiui/animation/listener/ListenerNotifier$NotifyData;

    invoke-direct {p0}, Lmiui/animation/listener/ListenerNotifier$NotifyData;-><init>()V

    invoke-virtual {v0, p1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    return-object p0
.end method

.method private notifyByType(ILjava/lang/Object;Lmiui/animation/listener/UpdateInfo;Ljava/util/Collection;)V
    .locals 1

    invoke-direct {p0}, Lmiui/animation/listener/ListenerNotifier;->getNodeCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lmiui/animation/listener/ListenerNotifier;->getNotifyData(ILjava/lang/Object;)Lmiui/animation/listener/ListenerNotifier$NotifyData;

    move-result-object v0

    if-eqz p4, :cond_1

    invoke-virtual {v0, p4}, Lmiui/animation/listener/ListenerNotifier$NotifyData;->addList(Ljava/util/Collection;)V

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {v0, p3}, Lmiui/animation/listener/ListenerNotifier$NotifyData;->addUpdate(Lmiui/animation/listener/UpdateInfo;)V

    :cond_2
    :goto_0
    iget-object p3, p0, Lmiui/animation/listener/ListenerNotifier;->mCurNotify:Lmiui/animation/listener/ListenerNotifier$PendingNotify;

    if-nez p3, :cond_4

    new-instance p3, Lmiui/animation/listener/ListenerNotifier$PendingNotify;

    invoke-direct {p3, p2, p1}, Lmiui/animation/listener/ListenerNotifier$PendingNotify;-><init>(Ljava/lang/Object;I)V

    iput-object p3, p0, Lmiui/animation/listener/ListenerNotifier;->mCurNotify:Lmiui/animation/listener/ListenerNotifier$PendingNotify;

    invoke-direct {p0, p2, p1, v0}, Lmiui/animation/listener/ListenerNotifier;->notifyListener(Ljava/lang/Object;ILmiui/animation/listener/ListenerNotifier$NotifyData;)V

    iget-object p1, p0, Lmiui/animation/listener/ListenerNotifier;->mPendingList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lmiui/animation/listener/ListenerNotifier$PendingNotify;

    iget p3, p2, Lmiui/animation/listener/ListenerNotifier$PendingNotify;->what:I

    iget-object p4, p2, Lmiui/animation/listener/ListenerNotifier$PendingNotify;->tag:Ljava/lang/Object;

    invoke-direct {p0, p3, p4}, Lmiui/animation/listener/ListenerNotifier;->getNotifyData(ILjava/lang/Object;)Lmiui/animation/listener/ListenerNotifier$NotifyData;

    move-result-object p3

    iget-object p4, p2, Lmiui/animation/listener/ListenerNotifier$PendingNotify;->tag:Ljava/lang/Object;

    iget p2, p2, Lmiui/animation/listener/ListenerNotifier$PendingNotify;->what:I

    invoke-direct {p0, p4, p2, p3}, Lmiui/animation/listener/ListenerNotifier;->notifyListener(Ljava/lang/Object;ILmiui/animation/listener/ListenerNotifier$NotifyData;)V

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    iput-object p1, p0, Lmiui/animation/listener/ListenerNotifier;->mCurNotify:Lmiui/animation/listener/ListenerNotifier$PendingNotify;

    iget-object p0, p0, Lmiui/animation/listener/ListenerNotifier;->mPendingList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    goto :goto_2

    :cond_4
    invoke-virtual {p3, p2, p1}, Lmiui/animation/listener/ListenerNotifier$PendingNotify;->isSame(Ljava/lang/Object;I)Z

    move-result p3

    if-nez p3, :cond_7

    iget-object p3, p0, Lmiui/animation/listener/ListenerNotifier;->mPendingList:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_5
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_6

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lmiui/animation/listener/ListenerNotifier$PendingNotify;

    invoke-virtual {p4, p2, p1}, Lmiui/animation/listener/ListenerNotifier$PendingNotify;->isSame(Ljava/lang/Object;I)Z

    move-result p4

    if-eqz p4, :cond_5

    return-void

    :cond_6
    iget-object p0, p0, Lmiui/animation/listener/ListenerNotifier;->mPendingList:Ljava/util/List;

    new-instance p3, Lmiui/animation/listener/ListenerNotifier$PendingNotify;

    invoke-direct {p3, p2, p1}, Lmiui/animation/listener/ListenerNotifier$PendingNotify;-><init>(Ljava/lang/Object;I)V

    invoke-interface {p0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_2
    return-void
.end method

.method private notifyListener(Ljava/lang/Object;ILmiui/animation/listener/ListenerNotifier$NotifyData;)V
    .locals 2

    iget-object p0, p0, Lmiui/animation/listener/ListenerNotifier;->mHead:Lmiui/animation/listener/ListenerNotifier$ListenerNode;

    :goto_0
    iget-object p0, p0, Lmiui/animation/listener/ListenerNotifier$ListenerNode;->next:Lmiui/animation/listener/ListenerNotifier$ListenerNode;

    if-eqz p0, :cond_1

    iget-object v0, p0, Lmiui/animation/listener/ListenerNotifier$ListenerNode;->bindTag:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lmiui/animation/listener/ListenerNotifier;->sNotifiers:[Lmiui/animation/listener/ListenerNotifier$BaseNotifier;

    aget-object v0, v0, p2

    iget-object v1, p3, Lmiui/animation/listener/ListenerNotifier$NotifyData;->updateList:Ljava/util/List;

    invoke-virtual {v0, p0, p1, v1}, Lmiui/animation/listener/ListenerNotifier$BaseNotifier;->notify(Lmiui/animation/listener/ListenerNotifier$ListenerNode;Ljava/lang/Object;Ljava/util/List;)V

    goto :goto_0

    :cond_1
    iget-object p0, p3, Lmiui/animation/listener/ListenerNotifier$NotifyData;->updateList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private static notifyOnUpdate(Lmiui/animation/listener/ListenerNotifier$ListenerNode;Ljava/lang/Object;Lmiui/animation/listener/UpdateInfo;)V
    .locals 6

    iget-object v0, p0, Lmiui/animation/listener/ListenerNotifier$ListenerNode;->listener:Lmiui/animation/listener/TransitionListener;

    iget-object p0, p2, Lmiui/animation/listener/UpdateInfo;->property:Lmiui/animation/property/FloatProperty;

    invoke-virtual {p2}, Lmiui/animation/listener/UpdateInfo;->getFloatValue()F

    move-result v1

    iget-boolean v2, p2, Lmiui/animation/listener/UpdateInfo;->isCompleted:Z

    invoke-virtual {v0, p1, p0, v1, v2}, Lmiui/animation/listener/TransitionListener;->onUpdate(Ljava/lang/Object;Lmiui/animation/property/FloatProperty;FZ)V

    iget-object v2, p2, Lmiui/animation/listener/UpdateInfo;->property:Lmiui/animation/property/FloatProperty;

    instance-of p0, v2, Lmiui/animation/property/IIntValueProperty;

    if-eqz p0, :cond_0

    check-cast v2, Lmiui/animation/property/IIntValueProperty;

    invoke-virtual {p2}, Lmiui/animation/listener/UpdateInfo;->getIntValue()I

    move-result v3

    iget v4, p2, Lmiui/animation/listener/UpdateInfo;->velocity:F

    iget-boolean v5, p2, Lmiui/animation/listener/UpdateInfo;->isCompleted:Z

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lmiui/animation/listener/TransitionListener;->onUpdate(Ljava/lang/Object;Lmiui/animation/property/IIntValueProperty;IFZ)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lmiui/animation/listener/UpdateInfo;->getFloatValue()F

    move-result v3

    iget v4, p2, Lmiui/animation/listener/UpdateInfo;->velocity:F

    iget-boolean v5, p2, Lmiui/animation/listener/UpdateInfo;->isCompleted:Z

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lmiui/animation/listener/TransitionListener;->onUpdate(Ljava/lang/Object;Lmiui/animation/property/FloatProperty;FFZ)V

    :goto_0
    return-void
.end method

.method private static removeNode(Lmiui/animation/listener/ListenerNotifier$ListenerNode;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lmiui/animation/listener/ListenerNotifier$ListenerNode;->toTag:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmiui/animation/listener/ListenerNotifier$ListenerNode;->prev:Lmiui/animation/listener/ListenerNotifier$ListenerNode;

    iget-object v0, p0, Lmiui/animation/listener/ListenerNotifier$ListenerNode;->next:Lmiui/animation/listener/ListenerNotifier$ListenerNode;

    iput-object v0, p1, Lmiui/animation/listener/ListenerNotifier$ListenerNode;->next:Lmiui/animation/listener/ListenerNotifier$ListenerNode;

    iget-object p0, p0, Lmiui/animation/listener/ListenerNotifier$ListenerNode;->next:Lmiui/animation/listener/ListenerNotifier$ListenerNode;

    if-eqz p0, :cond_0

    iput-object p1, p0, Lmiui/animation/listener/ListenerNotifier$ListenerNode;->prev:Lmiui/animation/listener/ListenerNotifier$ListenerNode;

    :cond_0
    return-void
.end method

.method private updateNodeInfo(Lmiui/animation/listener/ListenerNotifier$ListenerNode;Ljava/lang/Object;Lmiui/animation/base/AnimConfig;)V
    .locals 0

    iput-object p2, p1, Lmiui/animation/listener/ListenerNotifier$ListenerNode;->toTag:Ljava/lang/Object;

    iget-object p0, p3, Lmiui/animation/base/AnimConfig;->tag:Ljava/lang/Object;

    iput-object p0, p1, Lmiui/animation/listener/ListenerNotifier$ListenerNode;->bindTag:Ljava/lang/Object;

    iget-object p0, p3, Lmiui/animation/base/AnimConfig;->relatedProperty:[Lmiui/animation/property/FloatProperty;

    iput-object p0, p1, Lmiui/animation/listener/ListenerNotifier$ListenerNode;->relatedProperty:[Lmiui/animation/property/FloatProperty;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    iget-object v0, p0, Lmiui/animation/listener/ListenerNotifier;->mHead:Lmiui/animation/listener/ListenerNotifier$ListenerNode;

    iget-object v0, v0, Lmiui/animation/listener/ListenerNotifier$ListenerNode;->next:Lmiui/animation/listener/ListenerNotifier$ListenerNode;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-object v1, v0, Lmiui/animation/listener/ListenerNotifier$ListenerNode;->prev:Lmiui/animation/listener/ListenerNotifier$ListenerNode;

    :cond_0
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
    .locals 2

    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lmiui/animation/listener/ListenerNotifier;->notifyByType(ILjava/lang/Object;Lmiui/animation/listener/UpdateInfo;Ljava/util/Collection;)V

    return-void
.end method

.method public notifyAnimEnd(Ljava/lang/Object;Lmiui/animation/listener/UpdateInfo;)V
    .locals 2

    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lmiui/animation/listener/ListenerNotifier;->notifyByType(ILjava/lang/Object;Lmiui/animation/listener/UpdateInfo;Ljava/util/Collection;)V

    return-void
.end method

.method public notifyBegin(Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1, v1}, Lmiui/animation/listener/ListenerNotifier;->notifyByType(ILjava/lang/Object;Lmiui/animation/listener/UpdateInfo;Ljava/util/Collection;)V

    return-void
.end method

.method public notifyCancelAll(Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1, v1}, Lmiui/animation/listener/ListenerNotifier;->notifyByType(ILjava/lang/Object;Lmiui/animation/listener/UpdateInfo;Ljava/util/Collection;)V

    return-void
.end method

.method public notifyEndAll(Ljava/lang/Object;)V
    .locals 2

    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1, v1}, Lmiui/animation/listener/ListenerNotifier;->notifyByType(ILjava/lang/Object;Lmiui/animation/listener/UpdateInfo;Ljava/util/Collection;)V

    return-void
.end method

.method public notifyPropertyBegin(Ljava/lang/Object;Lmiui/animation/listener/UpdateInfo;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lmiui/animation/listener/ListenerNotifier;->notifyByType(ILjava/lang/Object;Lmiui/animation/listener/UpdateInfo;Ljava/util/Collection;)V

    return-void
.end method

.method public notifyPropertyEnd(Ljava/lang/Object;Ljava/util/List;)V
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1, p2}, Lmiui/animation/listener/ListenerNotifier;->notifyByType(ILjava/lang/Object;Lmiui/animation/listener/UpdateInfo;Ljava/util/Collection;)V

    return-void
.end method

.method public notifyUpdate(Ljava/lang/Object;Ljava/util/List;)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1, p2}, Lmiui/animation/listener/ListenerNotifier;->notifyByType(ILjava/lang/Object;Lmiui/animation/listener/UpdateInfo;Ljava/util/Collection;)V

    return-void
.end method

.method public notifyUpdateList(Ljava/lang/Object;Ljava/util/List;)V
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1, p2}, Lmiui/animation/listener/ListenerNotifier;->notifyByType(ILjava/lang/Object;Lmiui/animation/listener/UpdateInfo;Ljava/util/Collection;)V

    return-void
.end method

.method public setListeners(Ljava/lang/Object;Lmiui/animation/base/AnimConfigLink;)Z
    .locals 5

    iget-object p2, p2, Lmiui/animation/base/AnimConfigLink;->configList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/animation/base/AnimConfig;

    invoke-direct {p0, p1, v0}, Lmiui/animation/listener/ListenerNotifier;->addNode(Ljava/lang/Object;Lmiui/animation/base/AnimConfig;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lmiui/animation/utils/LogUtils;->isLogEnabled()Z

    move-result p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setListeners for "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmiui/animation/listener/ListenerNotifier;->mTarget:Lmiui/animation/IAnimTarget;

    invoke-virtual {v2}, Lmiui/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "toTag = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "listeners = "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lmiui/animation/listener/ListenerNotifier;->getNodeCount()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v0

    invoke-static {p2, v2}, Lmiui/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iget-object p0, p0, Lmiui/animation/listener/ListenerNotifier;->mHead:Lmiui/animation/listener/ListenerNotifier$ListenerNode;

    iget-object p0, p0, Lmiui/animation/listener/ListenerNotifier$ListenerNode;->next:Lmiui/animation/listener/ListenerNotifier$ListenerNode;

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    return v0
.end method
