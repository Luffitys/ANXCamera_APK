.class abstract Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;
.super Ljava/lang/Object;
.source "AdvancedSlider.java"

# interfaces
.implements Lmiui/maml/elements/ITicker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/AdvancedSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "ReboundAnimationController"
.end annotation


# instance fields
.field private mBounceStartPointIndex:I

.field private mEndPoint:Lmiui/maml/elements/AdvancedSlider$EndPoint;

.field private mPreDistance:J

.field protected mStartTime:J

.field private mStartX:F

.field private mStartY:F

.field protected mTotalDistance:D

.field final synthetic this$0:Lmiui/maml/elements/AdvancedSlider;


# direct methods
.method private constructor <init>(Lmiui/maml/elements/AdvancedSlider;)V
    .registers 4

    iput-object p1, p0, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->this$0:Lmiui/maml/elements/AdvancedSlider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->mStartTime:J

    return-void
.end method

.method synthetic constructor <init>(Lmiui/maml/elements/AdvancedSlider;Lmiui/maml/elements/AdvancedSlider$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;-><init>(Lmiui/maml/elements/AdvancedSlider;)V

    return-void
.end method

.method private getPoint(FFFFJ)Lmiui/maml/util/Utils$Point;
    .registers 23

    move-wide/from16 v0, p5

    new-instance v2, Lmiui/maml/util/Utils$Point;

    move/from16 v3, p1

    float-to-double v4, v3

    move/from16 v6, p2

    float-to-double v7, v6

    invoke-direct {v2, v4, v5, v7, v8}, Lmiui/maml/util/Utils$Point;-><init>(DD)V

    new-instance v4, Lmiui/maml/util/Utils$Point;

    move/from16 v5, p3

    float-to-double v7, v5

    move/from16 v9, p4

    float-to-double v10, v9

    invoke-direct {v4, v7, v8, v10, v11}, Lmiui/maml/util/Utils$Point;-><init>(DD)V

    const/4 v7, 0x1

    invoke-static {v2, v4, v7}, Lmiui/maml/util/Utils;->Dist(Lmiui/maml/util/Utils$Point;Lmiui/maml/util/Utils$Point;Z)D

    move-result-wide v7

    long-to-double v10, v0

    cmpl-double v10, v10, v7

    if-ltz v10, :cond_24

    const/4 v10, 0x0

    return-object v10

    :cond_24
    long-to-double v10, v0

    sub-double v10, v7, v10

    div-double/2addr v10, v7

    iget-wide v12, v4, Lmiui/maml/util/Utils$Point;->x:D

    iget-wide v14, v2, Lmiui/maml/util/Utils$Point;->x:D

    sub-double/2addr v12, v14

    mul-double/2addr v12, v10

    iget-wide v14, v4, Lmiui/maml/util/Utils$Point;->y:D

    iget-wide v0, v2, Lmiui/maml/util/Utils$Point;->y:D

    sub-double/2addr v14, v0

    mul-double/2addr v14, v10

    new-instance v0, Lmiui/maml/util/Utils$Point;

    move-object v1, v4

    iget-wide v3, v2, Lmiui/maml/util/Utils$Point;->x:D

    add-double/2addr v3, v12

    iget-wide v5, v2, Lmiui/maml/util/Utils$Point;->y:D

    add-double/2addr v5, v14

    invoke-direct {v0, v3, v4, v5, v6}, Lmiui/maml/util/Utils$Point;-><init>(DD)V

    return-object v0
.end method


# virtual methods
.method protected abstract getDistance(J)J
.end method

.method public init()V
    .registers 3

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->mStartTime:J

    return-void
.end method

.method public isRunning()Z
    .registers 5

    iget-wide v0, p0, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->mStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method protected onMove(FF)V
    .registers 4

    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->this$0:Lmiui/maml/elements/AdvancedSlider;

    # invokes: Lmiui/maml/elements/AdvancedSlider;->moveStartPoint(FF)V
    invoke-static {v0, p1, p2}, Lmiui/maml/elements/AdvancedSlider;->access$300(Lmiui/maml/elements/AdvancedSlider;FF)V

    return-void
.end method

.method protected onStart()V
    .registers 1

    return-void
.end method

.method protected onStop()V
    .registers 3

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->mStartTime:J

    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->this$0:Lmiui/maml/elements/AdvancedSlider;

    # invokes: Lmiui/maml/elements/AdvancedSlider;->cancelMoving()V
    invoke-static {v0}, Lmiui/maml/elements/AdvancedSlider;->access$200(Lmiui/maml/elements/AdvancedSlider;)V

    return-void
.end method

.method public start(Lmiui/maml/elements/AdvancedSlider$EndPoint;)V
    .registers 14

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->mStartTime:J

    iput-object p1, p0, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->mEndPoint:Lmiui/maml/elements/AdvancedSlider$EndPoint;

    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->this$0:Lmiui/maml/elements/AdvancedSlider;

    # getter for: Lmiui/maml/elements/AdvancedSlider;->mStartPoint:Lmiui/maml/elements/AdvancedSlider$StartPoint;
    invoke-static {v0}, Lmiui/maml/elements/AdvancedSlider;->access$000(Lmiui/maml/elements/AdvancedSlider;)Lmiui/maml/elements/AdvancedSlider$StartPoint;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/maml/elements/AdvancedSlider$StartPoint;->getOffsetX()F

    move-result v0

    iget-object v1, p0, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->this$0:Lmiui/maml/elements/AdvancedSlider;

    # getter for: Lmiui/maml/elements/AdvancedSlider;->mStartPoint:Lmiui/maml/elements/AdvancedSlider$StartPoint;
    invoke-static {v1}, Lmiui/maml/elements/AdvancedSlider;->access$000(Lmiui/maml/elements/AdvancedSlider;)Lmiui/maml/elements/AdvancedSlider$StartPoint;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/maml/elements/AdvancedSlider$StartPoint;->getAnchorX()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->mStartX:F

    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->this$0:Lmiui/maml/elements/AdvancedSlider;

    # getter for: Lmiui/maml/elements/AdvancedSlider;->mStartPoint:Lmiui/maml/elements/AdvancedSlider$StartPoint;
    invoke-static {v0}, Lmiui/maml/elements/AdvancedSlider;->access$000(Lmiui/maml/elements/AdvancedSlider;)Lmiui/maml/elements/AdvancedSlider$StartPoint;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/maml/elements/AdvancedSlider$StartPoint;->getOffsetY()F

    move-result v0

    iget-object v1, p0, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->this$0:Lmiui/maml/elements/AdvancedSlider;

    # getter for: Lmiui/maml/elements/AdvancedSlider;->mStartPoint:Lmiui/maml/elements/AdvancedSlider$StartPoint;
    invoke-static {v1}, Lmiui/maml/elements/AdvancedSlider;->access$000(Lmiui/maml/elements/AdvancedSlider;)Lmiui/maml/elements/AdvancedSlider$StartPoint;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/maml/elements/AdvancedSlider$StartPoint;->getAnchorY()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->mStartY:F

    const/4 v1, -0x1

    iput v1, p0, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->mBounceStartPointIndex:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->mTotalDistance:D

    new-instance v1, Lmiui/maml/util/Utils$Point;

    iget v2, p0, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->mStartX:F

    float-to-double v2, v2

    float-to-double v4, v0

    invoke-direct {v1, v2, v3, v4, v5}, Lmiui/maml/util/Utils$Point;-><init>(DD)V

    move-object v0, v1

    const/4 v1, 0x1

    if-eqz p1, :cond_af

    # getter for: Lmiui/maml/elements/AdvancedSlider$EndPoint;->mPath:Ljava/util/ArrayList;
    invoke-static {p1}, Lmiui/maml/elements/AdvancedSlider$EndPoint;->access$100(Lmiui/maml/elements/AdvancedSlider$EndPoint;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_af

    const/4 v2, 0x1

    :goto_4f
    # getter for: Lmiui/maml/elements/AdvancedSlider$EndPoint;->mPath:Ljava/util/ArrayList;
    invoke-static {p1}, Lmiui/maml/elements/AdvancedSlider$EndPoint;->access$100(Lmiui/maml/elements/AdvancedSlider$EndPoint;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_ae

    # getter for: Lmiui/maml/elements/AdvancedSlider$EndPoint;->mPath:Ljava/util/ArrayList;
    invoke-static {p1}, Lmiui/maml/elements/AdvancedSlider$EndPoint;->access$100(Lmiui/maml/elements/AdvancedSlider$EndPoint;)Ljava/util/ArrayList;

    move-result-object v3

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/maml/elements/AdvancedSlider$Position;

    # getter for: Lmiui/maml/elements/AdvancedSlider$EndPoint;->mPath:Ljava/util/ArrayList;
    invoke-static {p1}, Lmiui/maml/elements/AdvancedSlider$EndPoint;->access$100(Lmiui/maml/elements/AdvancedSlider$EndPoint;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/maml/elements/AdvancedSlider$Position;

    new-instance v5, Lmiui/maml/util/Utils$Point;

    invoke-virtual {v3}, Lmiui/maml/elements/AdvancedSlider$Position;->getX()F

    move-result v6

    float-to-double v6, v6

    invoke-virtual {v3}, Lmiui/maml/elements/AdvancedSlider$Position;->getY()F

    move-result v8

    float-to-double v8, v8

    invoke-direct {v5, v6, v7, v8, v9}, Lmiui/maml/util/Utils$Point;-><init>(DD)V

    new-instance v6, Lmiui/maml/util/Utils$Point;

    invoke-virtual {v4}, Lmiui/maml/elements/AdvancedSlider$Position;->getX()F

    move-result v7

    float-to-double v7, v7

    invoke-virtual {v4}, Lmiui/maml/elements/AdvancedSlider$Position;->getY()F

    move-result v9

    float-to-double v9, v9

    invoke-direct {v6, v7, v8, v9, v10}, Lmiui/maml/util/Utils$Point;-><init>(DD)V

    const/4 v7, 0x0

    invoke-static {v5, v6, v0, v7}, Lmiui/maml/util/Utils;->pointProjectionOnSegment(Lmiui/maml/util/Utils$Point;Lmiui/maml/util/Utils$Point;Lmiui/maml/util/Utils$Point;Z)Lmiui/maml/util/Utils$Point;

    move-result-object v7

    if-eqz v7, :cond_a2

    add-int/lit8 v8, v2, -0x1

    iput v8, p0, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->mBounceStartPointIndex:I

    iget-wide v8, p0, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->mTotalDistance:D

    invoke-static {v5, v7, v1}, Lmiui/maml/util/Utils;->Dist(Lmiui/maml/util/Utils$Point;Lmiui/maml/util/Utils$Point;Z)D

    move-result-wide v10

    add-double/2addr v8, v10

    iput-wide v8, p0, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->mTotalDistance:D

    goto :goto_ae

    :cond_a2
    iget-wide v8, p0, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->mTotalDistance:D

    invoke-static {v5, v6, v1}, Lmiui/maml/util/Utils;->Dist(Lmiui/maml/util/Utils$Point;Lmiui/maml/util/Utils$Point;Z)D

    move-result-wide v10

    add-double/2addr v8, v10

    iput-wide v8, p0, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->mTotalDistance:D

    add-int/lit8 v2, v2, 0x1

    goto :goto_4f

    :cond_ae
    :goto_ae
    goto :goto_d0

    :cond_af
    new-instance v2, Lmiui/maml/util/Utils$Point;

    iget-object v3, p0, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->this$0:Lmiui/maml/elements/AdvancedSlider;

    # getter for: Lmiui/maml/elements/AdvancedSlider;->mStartPoint:Lmiui/maml/elements/AdvancedSlider$StartPoint;
    invoke-static {v3}, Lmiui/maml/elements/AdvancedSlider;->access$000(Lmiui/maml/elements/AdvancedSlider;)Lmiui/maml/elements/AdvancedSlider$StartPoint;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/maml/elements/AdvancedSlider$StartPoint;->getAnchorX()F

    move-result v3

    float-to-double v3, v3

    iget-object v5, p0, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->this$0:Lmiui/maml/elements/AdvancedSlider;

    # getter for: Lmiui/maml/elements/AdvancedSlider;->mStartPoint:Lmiui/maml/elements/AdvancedSlider$StartPoint;
    invoke-static {v5}, Lmiui/maml/elements/AdvancedSlider;->access$000(Lmiui/maml/elements/AdvancedSlider;)Lmiui/maml/elements/AdvancedSlider$StartPoint;

    move-result-object v5

    invoke-virtual {v5}, Lmiui/maml/elements/AdvancedSlider$StartPoint;->getAnchorY()F

    move-result v5

    float-to-double v5, v5

    invoke-direct {v2, v3, v4, v5, v6}, Lmiui/maml/util/Utils$Point;-><init>(DD)V

    invoke-static {v2, v0, v1}, Lmiui/maml/util/Utils;->Dist(Lmiui/maml/util/Utils$Point;Lmiui/maml/util/Utils$Point;Z)D

    move-result-wide v1

    iput-wide v1, p0, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->mTotalDistance:D

    :goto_d0
    iget-wide v1, p0, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->mTotalDistance:D

    const-wide/high16 v3, 0x4008000000000000L    # 3.0

    cmpg-double v1, v1, v3

    if-gez v1, :cond_dc

    invoke-virtual {p0}, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->onStop()V

    return-void

    :cond_dc
    invoke-virtual {p0}, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->onStart()V

    iget-object v1, p0, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->this$0:Lmiui/maml/elements/AdvancedSlider;

    invoke-virtual {v1}, Lmiui/maml/elements/AdvancedSlider;->requestUpdate()V

    return-void
.end method

.method public stopRunning()V
    .registers 3

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->mStartTime:J

    return-void
.end method

.method public tick(J)V
    .registers 22

    move-object/from16 v7, p0

    move-wide/from16 v8, p1

    iget-wide v0, v7, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->mStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_d

    return-void

    :cond_d
    cmp-long v4, v0, v2

    if-nez v4, :cond_17

    iput-wide v8, v7, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->mStartTime:J

    iput-wide v2, v7, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->mPreDistance:J

    goto/16 :goto_100

    :cond_17
    sub-long v10, v8, v0

    invoke-virtual {v7, v10, v11}, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->getDistance(J)J

    move-result-wide v12

    iget-wide v0, v7, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->mStartTime:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_24

    return-void

    :cond_24
    iget-object v0, v7, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->mEndPoint:Lmiui/maml/elements/AdvancedSlider$EndPoint;

    if-eqz v0, :cond_cf

    # getter for: Lmiui/maml/elements/AdvancedSlider$EndPoint;->mPath:Ljava/util/ArrayList;
    invoke-static {v0}, Lmiui/maml/elements/AdvancedSlider$EndPoint;->access$100(Lmiui/maml/elements/AdvancedSlider$EndPoint;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_30

    goto/16 :goto_cf

    :cond_30
    iget-object v0, v7, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->this$0:Lmiui/maml/elements/AdvancedSlider;

    # getter for: Lmiui/maml/elements/AdvancedSlider;->mStartPoint:Lmiui/maml/elements/AdvancedSlider$StartPoint;
    invoke-static {v0}, Lmiui/maml/elements/AdvancedSlider;->access$000(Lmiui/maml/elements/AdvancedSlider;)Lmiui/maml/elements/AdvancedSlider$StartPoint;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/maml/elements/AdvancedSlider$StartPoint;->getOffsetX()F

    move-result v0

    iget-object v1, v7, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->this$0:Lmiui/maml/elements/AdvancedSlider;

    # getter for: Lmiui/maml/elements/AdvancedSlider;->mStartPoint:Lmiui/maml/elements/AdvancedSlider$StartPoint;
    invoke-static {v1}, Lmiui/maml/elements/AdvancedSlider;->access$000(Lmiui/maml/elements/AdvancedSlider;)Lmiui/maml/elements/AdvancedSlider$StartPoint;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/maml/elements/AdvancedSlider$StartPoint;->getAnchorX()F

    move-result v1

    add-float/2addr v0, v1

    iget-object v1, v7, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->this$0:Lmiui/maml/elements/AdvancedSlider;

    # getter for: Lmiui/maml/elements/AdvancedSlider;->mStartPoint:Lmiui/maml/elements/AdvancedSlider$StartPoint;
    invoke-static {v1}, Lmiui/maml/elements/AdvancedSlider;->access$000(Lmiui/maml/elements/AdvancedSlider;)Lmiui/maml/elements/AdvancedSlider$StartPoint;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/maml/elements/AdvancedSlider$StartPoint;->getOffsetY()F

    move-result v1

    iget-object v2, v7, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->this$0:Lmiui/maml/elements/AdvancedSlider;

    # getter for: Lmiui/maml/elements/AdvancedSlider;->mStartPoint:Lmiui/maml/elements/AdvancedSlider$StartPoint;
    invoke-static {v2}, Lmiui/maml/elements/AdvancedSlider;->access$000(Lmiui/maml/elements/AdvancedSlider;)Lmiui/maml/elements/AdvancedSlider$StartPoint;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/maml/elements/AdvancedSlider$StartPoint;->getAnchorY()F

    move-result v2

    add-float/2addr v1, v2

    iget-wide v2, v7, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->mPreDistance:J

    sub-long v2, v12, v2

    iget v4, v7, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->mBounceStartPointIndex:I

    move v14, v0

    move v15, v1

    move-wide v5, v2

    :goto_63
    if-ltz v4, :cond_cc

    iget-object v0, v7, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->mEndPoint:Lmiui/maml/elements/AdvancedSlider$EndPoint;

    # getter for: Lmiui/maml/elements/AdvancedSlider$EndPoint;->mPath:Ljava/util/ArrayList;
    invoke-static {v0}, Lmiui/maml/elements/AdvancedSlider$EndPoint;->access$100(Lmiui/maml/elements/AdvancedSlider$EndPoint;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Lmiui/maml/elements/AdvancedSlider$Position;

    invoke-virtual/range {v16 .. v16}, Lmiui/maml/elements/AdvancedSlider$Position;->getX()F

    move-result v1

    invoke-virtual/range {v16 .. v16}, Lmiui/maml/elements/AdvancedSlider$Position;->getY()F

    move-result v2

    move-object/from16 v0, p0

    move v3, v14

    move v8, v4

    move v4, v15

    move-wide/from16 v17, v5

    invoke-direct/range {v0 .. v6}, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->getPoint(FFFFJ)Lmiui/maml/util/Utils$Point;

    move-result-object v0

    if-nez v0, :cond_be

    if-nez v8, :cond_8f

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->onStop()V

    goto/16 :goto_fe

    :cond_8f
    new-instance v1, Lmiui/maml/util/Utils$Point;

    invoke-virtual/range {v16 .. v16}, Lmiui/maml/elements/AdvancedSlider$Position;->getX()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual/range {v16 .. v16}, Lmiui/maml/elements/AdvancedSlider$Position;->getY()F

    move-result v4

    float-to-double v4, v4

    invoke-direct {v1, v2, v3, v4, v5}, Lmiui/maml/util/Utils$Point;-><init>(DD)V

    new-instance v2, Lmiui/maml/util/Utils$Point;

    float-to-double v3, v14

    float-to-double v5, v15

    invoke-direct {v2, v3, v4, v5, v6}, Lmiui/maml/util/Utils$Point;-><init>(DD)V

    move-wide/from16 v3, v17

    long-to-double v5, v3

    const/4 v9, 0x1

    invoke-static {v1, v2, v9}, Lmiui/maml/util/Utils;->Dist(Lmiui/maml/util/Utils$Point;Lmiui/maml/util/Utils$Point;Z)D

    move-result-wide v17

    sub-double v5, v5, v17

    double-to-long v5, v5

    invoke-virtual/range {v16 .. v16}, Lmiui/maml/elements/AdvancedSlider$Position;->getX()F

    move-result v14

    invoke-virtual/range {v16 .. v16}, Lmiui/maml/elements/AdvancedSlider$Position;->getY()F

    move-result v15

    nop

    add-int/lit8 v4, v8, -0x1

    move-wide/from16 v8, p1

    goto :goto_63

    :cond_be
    move-wide/from16 v3, v17

    iput v8, v7, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->mBounceStartPointIndex:I

    iget-wide v1, v0, Lmiui/maml/util/Utils$Point;->x:D

    double-to-float v1, v1

    iget-wide v5, v0, Lmiui/maml/util/Utils$Point;->y:D

    double-to-float v2, v5

    invoke-virtual {v7, v1, v2}, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->onMove(FF)V

    goto :goto_fe

    :cond_cc
    move v8, v4

    move-wide v3, v5

    goto :goto_fe

    :cond_cf
    :goto_cf
    iget-object v0, v7, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->this$0:Lmiui/maml/elements/AdvancedSlider;

    # getter for: Lmiui/maml/elements/AdvancedSlider;->mStartPoint:Lmiui/maml/elements/AdvancedSlider$StartPoint;
    invoke-static {v0}, Lmiui/maml/elements/AdvancedSlider;->access$000(Lmiui/maml/elements/AdvancedSlider;)Lmiui/maml/elements/AdvancedSlider$StartPoint;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/maml/elements/AdvancedSlider$StartPoint;->getAnchorX()F

    move-result v1

    iget-object v0, v7, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->this$0:Lmiui/maml/elements/AdvancedSlider;

    # getter for: Lmiui/maml/elements/AdvancedSlider;->mStartPoint:Lmiui/maml/elements/AdvancedSlider$StartPoint;
    invoke-static {v0}, Lmiui/maml/elements/AdvancedSlider;->access$000(Lmiui/maml/elements/AdvancedSlider;)Lmiui/maml/elements/AdvancedSlider$StartPoint;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/maml/elements/AdvancedSlider$StartPoint;->getAnchorY()F

    move-result v2

    iget v3, v7, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->mStartX:F

    iget v4, v7, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->mStartY:F

    move-object/from16 v0, p0

    move-wide v5, v12

    invoke-direct/range {v0 .. v6}, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->getPoint(FFFFJ)Lmiui/maml/util/Utils$Point;

    move-result-object v0

    if-nez v0, :cond_f4

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->onStop()V

    goto :goto_fd

    :cond_f4
    iget-wide v1, v0, Lmiui/maml/util/Utils$Point;->x:D

    double-to-float v1, v1

    iget-wide v2, v0, Lmiui/maml/util/Utils$Point;->y:D

    double-to-float v2, v2

    invoke-virtual {v7, v1, v2}, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->onMove(FF)V

    :goto_fd
    nop

    :goto_fe
    iput-wide v12, v7, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->mPreDistance:J

    :goto_100
    iget-object v0, v7, Lmiui/maml/elements/AdvancedSlider$ReboundAnimationController;->this$0:Lmiui/maml/elements/AdvancedSlider;

    invoke-virtual {v0}, Lmiui/maml/elements/AdvancedSlider;->requestUpdate()V

    return-void
.end method
