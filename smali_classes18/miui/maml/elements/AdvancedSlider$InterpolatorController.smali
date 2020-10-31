.class Lmiui/maml/elements/AdvancedSlider$InterpolatorController;
.super Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;
.source "AdvancedSlider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/AdvancedSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InterpolatorController"
.end annotation


# instance fields
.field private mInterpolator:Lmiui/maml/animation/interpolater/InterpolatorHelper;

.field private mReboundTime:J

.field private mReboundTimeExp:Lmiui/maml/data/Expression;

.field final synthetic this$0:Lmiui/maml/elements/AdvancedSlider;


# direct methods
.method public constructor <init>(Lmiui/maml/elements/AdvancedSlider;Lmiui/maml/animation/interpolater/InterpolatorHelper;Lmiui/maml/data/Expression;)V
    .registers 5

    iput-object p1, p0, Lmiui/maml/elements/AdvancedSlider$InterpolatorController;->this$0:Lmiui/maml/elements/AdvancedSlider;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;-><init>(Lmiui/maml/elements/AdvancedSlider;Lmiui/maml/elements/AdvancedSlider$1;)V

    iput-object p2, p0, Lmiui/maml/elements/AdvancedSlider$InterpolatorController;->mInterpolator:Lmiui/maml/animation/interpolater/InterpolatorHelper;

    iput-object p3, p0, Lmiui/maml/elements/AdvancedSlider$InterpolatorController;->mReboundTimeExp:Lmiui/maml/data/Expression;

    return-void
.end method


# virtual methods
.method protected getDistance(J)J
    .registers 8

    iget-wide v0, p0, Lmiui/maml/elements/AdvancedSlider$InterpolatorController;->mReboundTime:J

    cmp-long v2, p1, v0

    if-ltz v2, :cond_d

    invoke-virtual {p0}, Lmiui/maml/elements/AdvancedSlider$InterpolatorController;->onStop()V

    iget-wide v0, p0, Lmiui/maml/elements/AdvancedSlider$InterpolatorController;->mTotalDistance:D

    double-to-long v0, v0

    return-wide v0

    :cond_d
    long-to-float v2, p1

    long-to-float v0, v0

    div-float/2addr v2, v0

    iget-wide v0, p0, Lmiui/maml/elements/AdvancedSlider$InterpolatorController;->mTotalDistance:D

    iget-object v3, p0, Lmiui/maml/elements/AdvancedSlider$InterpolatorController;->mInterpolator:Lmiui/maml/animation/interpolater/InterpolatorHelper;

    invoke-virtual {v3, v2}, Lmiui/maml/animation/interpolater/InterpolatorHelper;->get(F)F

    move-result v3

    float-to-double v3, v3

    mul-double/2addr v0, v3

    double-to-long v0, v0

    return-wide v0
.end method

.method protected onStart()V
    .registers 3

    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$InterpolatorController;->mReboundTimeExp:Lmiui/maml/data/Expression;

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    double-to-long v0, v0

    iput-wide v0, p0, Lmiui/maml/elements/AdvancedSlider$InterpolatorController;->mReboundTime:J

    return-void
.end method
