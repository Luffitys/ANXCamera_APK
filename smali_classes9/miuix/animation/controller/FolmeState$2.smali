.class Lmiuix/animation/controller/FolmeState$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lmiuix/animation/controller/FolmeState;

.field final synthetic val$oneTimeConfig:Lmiuix/animation/base/AnimConfigLink;

.field final synthetic val$tag:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lmiuix/animation/controller/FolmeState;Ljava/lang/Object;Lmiuix/animation/base/AnimConfigLink;)V
    .locals 0

    iput-object p1, p0, Lmiuix/animation/controller/FolmeState$2;->this$0:Lmiuix/animation/controller/FolmeState;

    iput-object p2, p0, Lmiuix/animation/controller/FolmeState$2;->val$tag:Ljava/lang/Object;

    iput-object p3, p0, Lmiuix/animation/controller/FolmeState$2;->val$oneTimeConfig:Lmiuix/animation/base/AnimConfigLink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lmiuix/animation/controller/FolmeState$2;->this$0:Lmiuix/animation/controller/FolmeState;

    iget-object v1, p0, Lmiuix/animation/controller/FolmeState$2;->val$tag:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lmiuix/animation/controller/FolmeState;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    iget-object v1, p0, Lmiuix/animation/controller/FolmeState$2;->this$0:Lmiuix/animation/controller/FolmeState;

    invoke-virtual {v1}, Lmiuix/animation/controller/FolmeState;->getTarget()Lmiuix/animation/IAnimTarget;

    move-result-object v1

    invoke-virtual {v1}, Lmiuix/animation/IAnimTarget;->getAnimTask()Lmiuix/animation/internal/AnimTask;

    move-result-object v2

    invoke-virtual {v2}, Lmiuix/animation/internal/AnimTask;->isValid()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lmiuix/animation/controller/AnimState;->keySet()Ljava/util/Set;

    move-result-object v3

    new-array v5, v4, [Lmiuix/animation/property/FloatProperty;

    invoke-interface {v3, v5}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lmiuix/animation/property/FloatProperty;

    invoke-virtual {v2, v3}, Lmiuix/animation/internal/AnimTask;->cancel([Lmiuix/animation/property/FloatProperty;)V

    :cond_0
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FolmeState.setTo, state = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v3, v5}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iget-object v3, p0, Lmiuix/animation/controller/FolmeState$2;->this$0:Lmiuix/animation/controller/FolmeState;

    invoke-static {v3}, Lmiuix/animation/controller/FolmeState;->access$000(Lmiuix/animation/controller/FolmeState;)Lmiuix/animation/IAnimTarget;

    move-result-object v3

    new-array v4, v4, [J

    invoke-static {v3, v0, v4}, Lmiuix/animation/internal/AnimValueUtils;->applyProperty(Lmiuix/animation/IAnimTarget;Lmiuix/animation/controller/AnimState;[J)V

    invoke-virtual {v0}, Lmiuix/animation/controller/AnimState;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiuix/animation/property/FloatProperty;

    instance-of v5, v4, Lmiuix/animation/property/IIntValueProperty;

    if-eqz v5, :cond_2

    move-object v5, v4

    check-cast v5, Lmiuix/animation/property/IIntValueProperty;

    invoke-virtual {v1, v5}, Lmiuix/animation/IAnimTarget;->getIntValue(Lmiuix/animation/property/IIntValueProperty;)I

    move-result v5

    int-to-double v5, v5

    goto :goto_1

    :cond_2
    invoke-virtual {v1, v4}, Lmiuix/animation/IAnimTarget;->getValue(Lmiuix/animation/property/FloatProperty;)F

    move-result v5

    float-to-double v5, v5

    :goto_1
    invoke-virtual {v1, v4, v5, v6}, Lmiuix/animation/IAnimTarget;->trackVelocity(Lmiuix/animation/property/FloatProperty;D)V

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lmiuix/animation/controller/FolmeState$2;->val$oneTimeConfig:Lmiuix/animation/base/AnimConfigLink;

    invoke-virtual {v2, v0, p0}, Lmiuix/animation/internal/AnimTask;->setToNotify(Lmiuix/animation/controller/AnimState;Lmiuix/animation/base/AnimConfigLink;)V

    return-void
.end method
