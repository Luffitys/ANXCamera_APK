.class Lmiui/animation/internal/AnimRunner$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lmiui/animation/internal/AnimRunner;

.field final synthetic val$config:Lmiui/animation/base/AnimConfigLink;

.field final synthetic val$from:Lmiui/animation/controller/AnimState;

.field final synthetic val$target:Lmiui/animation/IAnimTarget;

.field final synthetic val$to:Lmiui/animation/controller/AnimState;


# direct methods
.method constructor <init>(Lmiui/animation/internal/AnimRunner;Lmiui/animation/IAnimTarget;Lmiui/animation/controller/AnimState;Lmiui/animation/controller/AnimState;Lmiui/animation/base/AnimConfigLink;)V
    .locals 0

    iput-object p1, p0, Lmiui/animation/internal/AnimRunner$4;->this$0:Lmiui/animation/internal/AnimRunner;

    iput-object p2, p0, Lmiui/animation/internal/AnimRunner$4;->val$target:Lmiui/animation/IAnimTarget;

    iput-object p3, p0, Lmiui/animation/internal/AnimRunner$4;->val$from:Lmiui/animation/controller/AnimState;

    iput-object p4, p0, Lmiui/animation/internal/AnimRunner$4;->val$to:Lmiui/animation/controller/AnimState;

    iput-object p5, p0, Lmiui/animation/internal/AnimRunner$4;->val$config:Lmiui/animation/base/AnimConfigLink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lmiui/animation/internal/AnimRunner$4;->val$target:Lmiui/animation/IAnimTarget;

    iget-object v1, p0, Lmiui/animation/internal/AnimRunner$4;->this$0:Lmiui/animation/internal/AnimRunner;

    invoke-static {v1}, Lmiui/animation/internal/AnimRunner;->access$100(Lmiui/animation/internal/AnimRunner;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    iget-object v3, p0, Lmiui/animation/internal/AnimRunner$4;->val$from:Lmiui/animation/controller/AnimState;

    iget-object v4, p0, Lmiui/animation/internal/AnimRunner$4;->val$to:Lmiui/animation/controller/AnimState;

    iget-object v5, p0, Lmiui/animation/internal/AnimRunner$4;->val$config:Lmiui/animation/base/AnimConfigLink;

    invoke-static/range {v0 .. v5}, Lmiui/animation/internal/AnimRunner;->getAnimTask(Lmiui/animation/IAnimTarget;JLmiui/animation/controller/AnimState;Lmiui/animation/controller/AnimState;Lmiui/animation/base/AnimConfigLink;)Lmiui/animation/internal/AnimTask;

    iget-object p0, p0, Lmiui/animation/internal/AnimRunner$4;->this$0:Lmiui/animation/internal/AnimRunner;

    invoke-static {p0}, Lmiui/animation/internal/AnimRunner;->access$200(Lmiui/animation/internal/AnimRunner;)V

    return-void
.end method
