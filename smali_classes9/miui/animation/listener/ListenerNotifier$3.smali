.class Lmiui/animation/listener/ListenerNotifier$3;
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
    .locals 4

    iget-boolean p0, p3, Lmiui/animation/listener/UpdateInfo;->isCompleted:Z

    if-eqz p0, :cond_0

    iget-wide v0, p3, Lmiui/animation/listener/UpdateInfo;->endTime:J

    invoke-static {}, Lmiui/animation/internal/AnimRunner;->getInst()Lmiui/animation/internal/AnimRunner;

    move-result-object p0

    invoke-virtual {p0}, Lmiui/animation/internal/AnimRunner;->getRunningTime()J

    move-result-wide v2

    cmp-long p0, v0, v2

    if-nez p0, :cond_1

    :cond_0
    invoke-static {p1, p2, p3}, Lmiui/animation/listener/ListenerNotifier;->access$200(Lmiui/animation/listener/ListenerNotifier$ListenerNode;Ljava/lang/Object;Lmiui/animation/listener/UpdateInfo;)V

    :cond_1
    return-void
.end method
