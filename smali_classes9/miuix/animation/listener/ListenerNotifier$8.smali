.class final Lmiuix/animation/listener/ListenerNotifier$8;
.super Lmiuix/animation/listener/ListenerNotifier$BaseNotifier;
.source ""


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmiuix/animation/listener/ListenerNotifier$BaseNotifier;-><init>(Lmiuix/animation/listener/ListenerNotifier$1;)V

    return-void
.end method


# virtual methods
.method doNotify(Lmiuix/animation/listener/ListenerNotifier$ListenerNode;Ljava/lang/Object;Ljava/util/Collection;)V
    .locals 0

    iget-object p0, p1, Lmiuix/animation/listener/ListenerNotifier$ListenerNode;->listener:Lmiuix/animation/listener/TransitionListener;

    invoke-virtual {p0, p2}, Lmiuix/animation/listener/TransitionListener;->onCancel(Ljava/lang/Object;)V

    invoke-static {p1, p2}, Lmiuix/animation/listener/ListenerNotifier;->access$300(Lmiuix/animation/listener/ListenerNotifier$ListenerNode;Ljava/lang/Object;)V

    return-void
.end method
