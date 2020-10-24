.class abstract Lmiui/animation/listener/ListenerNotifier$SingleNotifier;
.super Lmiui/animation/listener/ListenerNotifier$BaseNotifier;
.source ""


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmiui/animation/listener/ListenerNotifier$BaseNotifier;-><init>(Lmiui/animation/listener/ListenerNotifier$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/animation/listener/ListenerNotifier$1;)V
    .locals 0

    invoke-direct {p0}, Lmiui/animation/listener/ListenerNotifier$SingleNotifier;-><init>()V

    return-void
.end method


# virtual methods
.method doNotify(Lmiui/animation/listener/ListenerNotifier$ListenerNode;Ljava/lang/Object;Ljava/util/List;)V
    .locals 1

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/animation/listener/UpdateInfo;

    invoke-virtual {p0, p1, p2, v0}, Lmiui/animation/listener/ListenerNotifier$SingleNotifier;->doNotify(Lmiui/animation/listener/ListenerNotifier$ListenerNode;Ljava/lang/Object;Lmiui/animation/listener/UpdateInfo;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method abstract doNotify(Lmiui/animation/listener/ListenerNotifier$ListenerNode;Ljava/lang/Object;Lmiui/animation/listener/UpdateInfo;)V
.end method
