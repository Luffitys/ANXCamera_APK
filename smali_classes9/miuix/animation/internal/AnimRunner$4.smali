.class Lmiuix/animation/internal/AnimRunner$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lmiuix/animation/internal/AnimRunner;

.field final synthetic val$config:Lmiuix/animation/base/AnimConfigLink;

.field final synthetic val$from:Lmiuix/animation/controller/AnimState;

.field final synthetic val$target:Lmiuix/animation/IAnimTarget;

.field final synthetic val$to:Lmiuix/animation/controller/AnimState;


# direct methods
.method constructor <init>(Lmiuix/animation/internal/AnimRunner;Lmiuix/animation/IAnimTarget;Lmiuix/animation/controller/AnimState;Lmiuix/animation/controller/AnimState;Lmiuix/animation/base/AnimConfigLink;)V
    .locals 0

    iput-object p1, p0, Lmiuix/animation/internal/AnimRunner$4;->this$0:Lmiuix/animation/internal/AnimRunner;

    iput-object p2, p0, Lmiuix/animation/internal/AnimRunner$4;->val$target:Lmiuix/animation/IAnimTarget;

    iput-object p3, p0, Lmiuix/animation/internal/AnimRunner$4;->val$from:Lmiuix/animation/controller/AnimState;

    iput-object p4, p0, Lmiuix/animation/internal/AnimRunner$4;->val$to:Lmiuix/animation/controller/AnimState;

    iput-object p5, p0, Lmiuix/animation/internal/AnimRunner$4;->val$config:Lmiuix/animation/base/AnimConfigLink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lmiuix/animation/internal/AnimRunner$4;->val$target:Lmiuix/animation/IAnimTarget;

    iget-object v1, p0, Lmiuix/animation/internal/AnimRunner$4;->this$0:Lmiuix/animation/internal/AnimRunner;

    invoke-static {v1}, Lmiuix/animation/internal/AnimRunner;->access$100(Lmiuix/animation/internal/AnimRunner;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    iget-object v3, p0, Lmiuix/animation/internal/AnimRunner$4;->val$from:Lmiuix/animation/controller/AnimState;

    iget-object v4, p0, Lmiuix/animation/internal/AnimRunner$4;->val$to:Lmiuix/animation/controller/AnimState;

    iget-object v5, p0, Lmiuix/animation/internal/AnimRunner$4;->val$config:Lmiuix/animation/base/AnimConfigLink;

    invoke-static/range {v0 .. v5}, Lmiuix/animation/internal/AnimRunner;->getAnimTask(Lmiuix/animation/IAnimTarget;JLmiuix/animation/controller/AnimState;Lmiuix/animation/controller/AnimState;Lmiuix/animation/base/AnimConfigLink;)Lmiuix/animation/internal/AnimTask;

    iget-object p0, p0, Lmiuix/animation/internal/AnimRunner$4;->this$0:Lmiuix/animation/internal/AnimRunner;

    invoke-static {p0}, Lmiuix/animation/internal/AnimRunner;->access$200(Lmiuix/animation/internal/AnimRunner;)V

    return-void
.end method
