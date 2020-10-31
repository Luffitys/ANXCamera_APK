.class Lmiui/maml/elements/AdvancedSlider$SpeedAccController;
.super Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;
.source "AdvancedSlider.java"

# interfaces
.implements Lmiui/maml/elements/ITicker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/AdvancedSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SpeedAccController"
.end annotation


# instance fields
.field private mBounceAccelation:I

.field private mBounceAccelationExp:Lmiui/maml/data/Expression;

.field private mBounceInitSpeed:I

.field private mBounceInitSpeedExp:Lmiui/maml/data/Expression;

.field private mBounceProgress:Lmiui/maml/data/IndexedVariable;

.field final synthetic this$0:Lmiui/maml/elements/AdvancedSlider;


# direct methods
.method public constructor <init>(Lmiui/maml/elements/AdvancedSlider;Lorg/w3c/dom/Element;)V
    .registers 6

    iput-object p1, p0, Lmiui/maml/elements/AdvancedSlider$SpeedAccController;->this$0:Lmiui/maml/elements/AdvancedSlider;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;-><init>(Lmiui/maml/elements/AdvancedSlider;Lmiui/maml/elements/AdvancedSlider$1;)V

    invoke-virtual {p1}, Lmiui/maml/elements/AdvancedSlider;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    const-string v1, "bounceInitSpeed"

    invoke-virtual {p1, p2, v1}, Lmiui/maml/elements/AdvancedSlider;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/AdvancedSlider$SpeedAccController;->mBounceInitSpeedExp:Lmiui/maml/data/Expression;

    invoke-virtual {p1}, Lmiui/maml/elements/AdvancedSlider;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    const-string v1, "bounceAcceleration"

    invoke-virtual {p1, p2, v1}, Lmiui/maml/elements/AdvancedSlider;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/AdvancedSlider$SpeedAccController;->mBounceAccelationExp:Lmiui/maml/data/Expression;

    iget-boolean v0, p1, Lmiui/maml/elements/AdvancedSlider;->mHasName:Z

    if-eqz v0, :cond_4e

    new-instance v0, Lmiui/maml/data/IndexedVariable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lmiui/maml/elements/AdvancedSlider;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "bounce_progress"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lmiui/maml/elements/AdvancedSlider;->getVariables()Lmiui/maml/data/Variables;

    move-result-object p1

    const/4 v2, 0x1

    invoke-direct {v0, v1, p1, v2}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v0, p0, Lmiui/maml/elements/AdvancedSlider$SpeedAccController;->mBounceProgress:Lmiui/maml/data/IndexedVariable;

    :cond_4e
    return-void
.end method


# virtual methods
.method protected getDistance(J)J
    .registers 15

    iget v0, p0, Lmiui/maml/elements/AdvancedSlider$SpeedAccController;->mBounceInitSpeed:I

    int-to-long v1, v0

    mul-long/2addr v1, p1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    iget v5, p0, Lmiui/maml/elements/AdvancedSlider$SpeedAccController;->mBounceAccelation:I

    int-to-long v6, v5

    mul-long/2addr v6, p1

    mul-long/2addr v6, p1

    const-wide/32 v8, 0x1e8480

    div-long/2addr v6, v8

    add-long/2addr v1, v6

    int-to-long v6, v0

    int-to-long v8, v5

    mul-long/2addr v8, p1

    div-long/2addr v8, v3

    add-long/2addr v6, v8

    const-wide/16 v3, 0x0

    cmp-long v0, v6, v3

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    if-gtz v0, :cond_28

    invoke-virtual {p0}, Lmiui/maml/elements/AdvancedSlider$SpeedAccController;->onStop()V

    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$SpeedAccController;->mBounceProgress:Lmiui/maml/data/IndexedVariable;

    if-eqz v0, :cond_28

    invoke-virtual {v0, v3, v4}, Lmiui/maml/data/IndexedVariable;->set(D)V

    :cond_28
    iget-wide v8, p0, Lmiui/maml/elements/AdvancedSlider$SpeedAccController;->mTotalDistance:D

    const-wide/16 v10, 0x0

    cmpl-double v0, v8, v10

    if-lez v0, :cond_41

    long-to-double v8, v1

    iget-wide v10, p0, Lmiui/maml/elements/AdvancedSlider$SpeedAccController;->mTotalDistance:D

    div-double/2addr v8, v10

    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$SpeedAccController;->mBounceProgress:Lmiui/maml/data/IndexedVariable;

    if-eqz v0, :cond_41

    cmpl-double v5, v8, v3

    if-lez v5, :cond_3d

    goto :goto_3e

    :cond_3d
    move-wide v3, v8

    :goto_3e
    invoke-virtual {v0, v3, v4}, Lmiui/maml/data/IndexedVariable;->set(D)V

    :cond_41
    return-wide v1
.end method

.method public init()V
    .registers 4

    invoke-super {p0}, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->init()V

    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$SpeedAccController;->mBounceProgress:Lmiui/maml/data/IndexedVariable;

    if-eqz v0, :cond_c

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v0, v1, v2}, Lmiui/maml/data/IndexedVariable;->set(D)V

    :cond_c
    return-void
.end method

.method protected onStart()V
    .registers 4

    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$SpeedAccController;->mBounceInitSpeedExp:Lmiui/maml/data/Expression;

    if-eqz v0, :cond_d

    iget-object v1, p0, Lmiui/maml/elements/AdvancedSlider$SpeedAccController;->this$0:Lmiui/maml/elements/AdvancedSlider;

    invoke-virtual {v1, v0}, Lmiui/maml/elements/AdvancedSlider;->evaluate(Lmiui/maml/data/Expression;)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lmiui/maml/elements/AdvancedSlider$SpeedAccController;->mBounceInitSpeed:I

    :cond_d
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$SpeedAccController;->mBounceAccelationExp:Lmiui/maml/data/Expression;

    if-eqz v0, :cond_1a

    iget-object v1, p0, Lmiui/maml/elements/AdvancedSlider$SpeedAccController;->this$0:Lmiui/maml/elements/AdvancedSlider;

    invoke-virtual {v1, v0}, Lmiui/maml/elements/AdvancedSlider;->evaluate(Lmiui/maml/data/Expression;)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lmiui/maml/elements/AdvancedSlider$SpeedAccController;->mBounceAccelation:I

    :cond_1a
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$SpeedAccController;->mBounceProgress:Lmiui/maml/data/IndexedVariable;

    if-eqz v0, :cond_23

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lmiui/maml/data/IndexedVariable;->set(D)V

    :cond_23
    return-void
.end method

.method public start(Lmiui/maml/elements/AdvancedSlider$EndPoint;)V
    .registers 3

    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$SpeedAccController;->mBounceInitSpeedExp:Lmiui/maml/data/Expression;

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lmiui/maml/elements/AdvancedSlider$SpeedAccController;->onStop()V

    goto :goto_b

    :cond_8
    invoke-super {p0, p1}, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->start(Lmiui/maml/elements/AdvancedSlider$EndPoint;)V

    :goto_b
    return-void
.end method
