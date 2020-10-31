.class Lmiui/animation/listener/ListenerNotifier$5;
.super Lmiui/animation/listener/ListenerNotifier$SingleNotifier;
.source "ListenerNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/animation/listener/ListenerNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmiui/animation/listener/ListenerNotifier$SingleNotifier;-><init>(Lmiui/animation/listener/ListenerNotifier$1;)V

    return-void
.end method


# virtual methods
.method doNotify(Lmiui/animation/listener/ListenerNotifier$ListenerNode;Ljava/lang/Object;Lmiui/animation/listener/UpdateInfo;)V
    .registers 8

    iget-boolean v0, p3, Lmiui/animation/listener/UpdateInfo;->isCompleted:Z

    if-eqz v0, :cond_1f

    iget-boolean v0, p3, Lmiui/animation/listener/UpdateInfo;->isCanceled:Z

    if-nez v0, :cond_1f

    iget-boolean v0, p3, Lmiui/animation/listener/UpdateInfo;->isEndByUser:Z

    if-nez v0, :cond_1f

    iget-wide v0, p3, Lmiui/animation/listener/UpdateInfo;->endTime:J

    invoke-static {}, Lmiui/animation/internal/AnimRunner;->getInst()Lmiui/animation/internal/AnimRunner;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/animation/internal/AnimRunner;->getRunningTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1f

    iget-object v0, p1, Lmiui/animation/listener/ListenerNotifier$ListenerNode;->listener:Lmiui/animation/listener/TransitionListener;

    invoke-virtual {v0, p2, p3}, Lmiui/animation/listener/TransitionListener;->onComplete(Ljava/lang/Object;Lmiui/animation/listener/UpdateInfo;)V

    :cond_1f
    return-void
.end method
