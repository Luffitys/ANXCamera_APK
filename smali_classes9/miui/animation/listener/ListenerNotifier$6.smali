.class Lmiui/animation/listener/ListenerNotifier$6;
.super Lmiui/animation/listener/ListenerNotifier$SingleNotifier;
.source ""


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmiui/animation/listener/ListenerNotifier$SingleNotifier;-><init>(Lmiui/animation/listener/ListenerNotifier$1;)V

    return-void
.end method


# virtual methods
.method doNotify(Lmiui/animation/listener/ListenerNotifier$ListenerNode;Ljava/lang/Object;Lmiui/animation/listener/UpdateInfo;)V
    .locals 0

    iget-object p0, p1, Lmiui/animation/listener/ListenerNotifier$ListenerNode;->listener:Lmiui/animation/listener/TransitionListener;

    invoke-virtual {p0, p2, p3}, Lmiui/animation/listener/TransitionListener;->onComplete(Ljava/lang/Object;Lmiui/animation/listener/UpdateInfo;)V

    return-void
.end method
