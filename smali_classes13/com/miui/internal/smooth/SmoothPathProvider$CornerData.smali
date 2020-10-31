.class public Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;
.super Ljava/lang/Object;
.source "SmoothPathProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/smooth/SmoothPathProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CornerData"
.end annotation


# static fields
.field public static final BOTTOM_LEFT:I = 0x3

.field public static final BOTTOM_RIGHT:I = 0x2

.field public static final TOP_LEFT:I = 0x0

.field public static final TOP_RIGHT:I = 0x1


# instance fields
.field public bezierAnchorHorizontal:[Landroid/graphics/PointF;

.field public bezierAnchorVertical:[Landroid/graphics/PointF;

.field public radius:F

.field public rect:Landroid/graphics/RectF;

.field public smoothForHorizontal:D

.field public smoothForVertical:D

.field public swapAngle:F

.field public thetaForHorizontal:D

.field public thetaForVertical:D


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [Landroid/graphics/PointF;

    iput-object v1, p0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    new-array v0, v0, [Landroid/graphics/PointF;

    iput-object v0, p0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    return-void
.end method


# virtual methods
.method public build(FLandroid/graphics/RectF;FFDFI)V
    .registers 53

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move-wide/from16 v4, p5

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p1

    iput v8, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->radius:F

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->height()F

    move-result v10

    iget v11, v1, Landroid/graphics/RectF;->left:F

    iget v12, v1, Landroid/graphics/RectF;->top:F

    iget v13, v1, Landroid/graphics/RectF;->right:F

    iget v14, v1, Landroid/graphics/RectF;->bottom:F

    iget v15, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->radius:F

    move/from16 v16, v14

    # invokes: Lcom/miui/internal/smooth/SmoothPathProvider;->smoothForWidth(FFDF)D
    invoke-static {v9, v15, v4, v5, v6}, Lcom/miui/internal/smooth/SmoothPathProvider;->access$000(FFDF)D

    move-result-wide v14

    iput-wide v14, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->smoothForHorizontal:D

    iget v14, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->radius:F

    # invokes: Lcom/miui/internal/smooth/SmoothPathProvider;->smoothForHeight(FFDF)D
    invoke-static {v10, v14, v4, v5, v6}, Lcom/miui/internal/smooth/SmoothPathProvider;->access$100(FFDF)D

    move-result-wide v14

    iput-wide v14, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->smoothForVertical:D

    iget-wide v14, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->smoothForHorizontal:D

    # invokes: Lcom/miui/internal/smooth/SmoothPathProvider;->thetaForWidth(D)D
    invoke-static {v14, v15}, Lcom/miui/internal/smooth/SmoothPathProvider;->access$200(D)D

    move-result-wide v14

    iput-wide v14, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->thetaForHorizontal:D

    iget-wide v14, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->smoothForVertical:D

    # invokes: Lcom/miui/internal/smooth/SmoothPathProvider;->thetaForHeight(D)D
    invoke-static {v14, v15}, Lcom/miui/internal/smooth/SmoothPathProvider;->access$300(D)D

    move-result-wide v14

    iput-wide v14, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->thetaForVertical:D

    const-wide v17, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double v17, v17, v14

    iget-wide v14, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->thetaForHorizontal:D

    sub-double v17, v17, v14

    # invokes: Lcom/miui/internal/smooth/SmoothPathProvider;->radToAngle(D)D
    invoke-static/range {v17 .. v18}, Lcom/miui/internal/smooth/SmoothPathProvider;->access$400(D)D

    move-result-wide v14

    double-to-float v14, v14

    iput v14, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->swapAngle:F

    iget-wide v14, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->smoothForHorizontal:D

    float-to-double v4, v6

    mul-double/2addr v14, v4

    iget-wide v4, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->thetaForHorizontal:D

    # invokes: Lcom/miui/internal/smooth/SmoothPathProvider;->kForWidth(DD)D
    invoke-static {v14, v15, v4, v5}, Lcom/miui/internal/smooth/SmoothPathProvider;->access$500(DD)D

    move-result-wide v4

    iget v14, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->radius:F

    move v15, v9

    iget-wide v8, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->thetaForHorizontal:D

    # invokes: Lcom/miui/internal/smooth/SmoothPathProvider;->mForWidth(FD)D
    invoke-static {v14, v8, v9}, Lcom/miui/internal/smooth/SmoothPathProvider;->access$600(FD)D

    move-result-wide v8

    iget v14, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->radius:F

    move-wide/from16 v17, v8

    iget-wide v8, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->thetaForHorizontal:D

    # invokes: Lcom/miui/internal/smooth/SmoothPathProvider;->nForWidth(FD)D
    invoke-static {v14, v8, v9}, Lcom/miui/internal/smooth/SmoothPathProvider;->access$700(FD)D

    move-result-wide v8

    iget v14, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->radius:F

    move-wide/from16 v19, v8

    iget-wide v8, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->thetaForHorizontal:D

    # invokes: Lcom/miui/internal/smooth/SmoothPathProvider;->pForWidth(FD)D
    invoke-static {v14, v8, v9}, Lcom/miui/internal/smooth/SmoothPathProvider;->access$800(FD)D

    move-result-wide v8

    iget v14, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->radius:F

    move-wide/from16 v21, v8

    iget-wide v8, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->thetaForHorizontal:D

    # invokes: Lcom/miui/internal/smooth/SmoothPathProvider;->xForWidth(FD)D
    invoke-static {v14, v8, v9}, Lcom/miui/internal/smooth/SmoothPathProvider;->access$900(FD)D

    move-result-wide v8

    # invokes: Lcom/miui/internal/smooth/SmoothPathProvider;->yForWidth(DD)D
    invoke-static {v4, v5, v8, v9}, Lcom/miui/internal/smooth/SmoothPathProvider;->access$1000(DD)D

    move-result-wide v23

    move-wide/from16 v25, v4

    iget-wide v4, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->smoothForVertical:D

    move/from16 v27, v15

    float-to-double v14, v6

    mul-double/2addr v4, v14

    iget-wide v14, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->thetaForVertical:D

    # invokes: Lcom/miui/internal/smooth/SmoothPathProvider;->kForHeight(DD)D
    invoke-static {v4, v5, v14, v15}, Lcom/miui/internal/smooth/SmoothPathProvider;->access$1100(DD)D

    move-result-wide v4

    iget v14, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->radius:F

    move-wide/from16 v28, v8

    iget-wide v8, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->thetaForVertical:D

    # invokes: Lcom/miui/internal/smooth/SmoothPathProvider;->mForHeight(FD)D
    invoke-static {v14, v8, v9}, Lcom/miui/internal/smooth/SmoothPathProvider;->access$1200(FD)D

    move-result-wide v8

    iget v14, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->radius:F

    move-wide/from16 v30, v8

    iget-wide v8, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->thetaForVertical:D

    # invokes: Lcom/miui/internal/smooth/SmoothPathProvider;->nForHeight(FD)D
    invoke-static {v14, v8, v9}, Lcom/miui/internal/smooth/SmoothPathProvider;->access$1300(FD)D

    move-result-wide v8

    iget v14, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->radius:F

    move-wide/from16 v32, v8

    iget-wide v8, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->thetaForVertical:D

    # invokes: Lcom/miui/internal/smooth/SmoothPathProvider;->pForHeight(FD)D
    invoke-static {v14, v8, v9}, Lcom/miui/internal/smooth/SmoothPathProvider;->access$1400(FD)D

    move-result-wide v8

    iget v14, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->radius:F

    move-wide/from16 v34, v8

    iget-wide v8, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->thetaForVertical:D

    # invokes: Lcom/miui/internal/smooth/SmoothPathProvider;->xForHeight(FD)D
    invoke-static {v14, v8, v9}, Lcom/miui/internal/smooth/SmoothPathProvider;->access$1500(FD)D

    move-result-wide v8

    # invokes: Lcom/miui/internal/smooth/SmoothPathProvider;->yForHeight(DD)D
    invoke-static {v4, v5, v8, v9}, Lcom/miui/internal/smooth/SmoothPathProvider;->access$1600(DD)D

    move-result-wide v14

    const/16 v36, 0x0

    const/high16 v37, 0x40000000    # 2.0f

    if-nez v7, :cond_16a

    add-float v1, v11, v2

    move-wide/from16 v38, v4

    add-float v4, v12, v3

    new-instance v5, Landroid/graphics/RectF;

    iget v6, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->radius:F

    mul-float v40, v6, v37

    move/from16 v41, v10

    add-float v10, v40, v1

    mul-float v6, v6, v37

    add-float/2addr v6, v4

    invoke-direct {v5, v1, v4, v10, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v5, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->rect:Landroid/graphics/RectF;

    iget-object v5, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    new-instance v6, Landroid/graphics/PointF;

    move/from16 v40, v11

    float-to-double v10, v1

    add-double v10, v17, v10

    double-to-float v10, v10

    float-to-double v2, v4

    add-double v2, v19, v2

    double-to-float v2, v2

    invoke-direct {v6, v10, v2}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v6, v5, v36

    iget-object v2, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    new-instance v3, Landroid/graphics/PointF;

    float-to-double v5, v1

    add-double v5, v21, v5

    double-to-float v5, v5

    invoke-direct {v3, v5, v4}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v5, 0x1

    aput-object v3, v2, v5

    iget-object v2, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    new-instance v3, Landroid/graphics/PointF;

    add-double v5, v21, v28

    float-to-double v10, v1

    add-double/2addr v5, v10

    double-to-float v5, v5

    invoke-direct {v3, v5, v4}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v5, 0x2

    aput-object v3, v2, v5

    iget-object v2, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    new-instance v3, Landroid/graphics/PointF;

    add-double v5, v21, v28

    add-double v5, v5, v23

    float-to-double v10, v1

    add-double/2addr v5, v10

    double-to-float v5, v5

    invoke-direct {v3, v5, v4}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v5, 0x3

    aput-object v3, v2, v5

    iget-object v2, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    new-instance v3, Landroid/graphics/PointF;

    add-double v5, v34, v8

    add-double/2addr v5, v14

    float-to-double v10, v4

    add-double/2addr v5, v10

    double-to-float v5, v5

    invoke-direct {v3, v1, v5}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v3, v2, v36

    iget-object v2, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    new-instance v3, Landroid/graphics/PointF;

    add-double v5, v34, v8

    float-to-double v10, v4

    add-double/2addr v5, v10

    double-to-float v5, v5

    invoke-direct {v3, v1, v5}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v5, 0x1

    aput-object v3, v2, v5

    iget-object v2, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    new-instance v3, Landroid/graphics/PointF;

    float-to-double v5, v4

    add-double v5, v34, v5

    double-to-float v5, v5

    invoke-direct {v3, v1, v5}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v5, 0x2

    aput-object v3, v2, v5

    iget-object v2, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    new-instance v3, Landroid/graphics/PointF;

    float-to-double v5, v1

    add-double v5, v30, v5

    double-to-float v5, v5

    float-to-double v10, v4

    add-double v10, v32, v10

    double-to-float v6, v10

    invoke-direct {v3, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v5, 0x3

    aput-object v3, v2, v5

    move/from16 v1, p4

    move-wide/from16 v42, v14

    move/from16 v5, v16

    goto/16 :goto_38e

    :cond_16a
    move-wide/from16 v38, v4

    move/from16 v41, v10

    move/from16 v40, v11

    const/4 v1, 0x1

    if-ne v7, v1, :cond_222

    move/from16 v1, p4

    add-float v2, v12, v1

    new-instance v3, Landroid/graphics/RectF;

    iget v4, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->radius:F

    mul-float v5, v4, v37

    sub-float v5, v13, v5

    move/from16 v6, p3

    sub-float/2addr v5, v6

    sub-float v10, v13, v6

    mul-float v4, v4, v37

    add-float/2addr v4, v2

    invoke-direct {v3, v5, v2, v10, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v3, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->rect:Landroid/graphics/RectF;

    iget-object v3, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    new-instance v4, Landroid/graphics/PointF;

    float-to-double v10, v13

    sub-double v10, v10, v21

    sub-double v10, v10, v28

    sub-double v10, v10, v23

    move-wide/from16 v42, v14

    float-to-double v14, v6

    sub-double/2addr v10, v14

    double-to-float v5, v10

    invoke-direct {v4, v5, v2}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v4, v3, v36

    iget-object v3, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    new-instance v4, Landroid/graphics/PointF;

    float-to-double v10, v13

    sub-double v10, v10, v21

    sub-double v10, v10, v28

    float-to-double v14, v6

    sub-double/2addr v10, v14

    double-to-float v5, v10

    invoke-direct {v4, v5, v2}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v5, 0x1

    aput-object v4, v3, v5

    iget-object v3, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    new-instance v4, Landroid/graphics/PointF;

    float-to-double v10, v13

    sub-double v10, v10, v21

    float-to-double v14, v6

    sub-double/2addr v10, v14

    double-to-float v5, v10

    invoke-direct {v4, v5, v2}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v5, 0x2

    aput-object v4, v3, v5

    iget-object v3, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    new-instance v4, Landroid/graphics/PointF;

    float-to-double v10, v13

    sub-double v10, v10, v17

    float-to-double v14, v6

    sub-double/2addr v10, v14

    double-to-float v5, v10

    float-to-double v10, v2

    add-double v10, v19, v10

    double-to-float v10, v10

    invoke-direct {v4, v5, v10}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v5, 0x3

    aput-object v4, v3, v5

    iget-object v3, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    new-instance v4, Landroid/graphics/PointF;

    float-to-double v10, v13

    sub-double v10, v10, v30

    float-to-double v14, v6

    sub-double/2addr v10, v14

    double-to-float v5, v10

    float-to-double v10, v2

    add-double v10, v32, v10

    double-to-float v10, v10

    invoke-direct {v4, v5, v10}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v4, v3, v36

    iget-object v3, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    new-instance v4, Landroid/graphics/PointF;

    sub-float v5, v13, v6

    float-to-double v10, v2

    add-double v10, v34, v10

    double-to-float v10, v10

    invoke-direct {v4, v5, v10}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v5, 0x1

    aput-object v4, v3, v5

    iget-object v3, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    new-instance v4, Landroid/graphics/PointF;

    sub-float v5, v13, v6

    add-double v10, v34, v8

    float-to-double v14, v2

    add-double/2addr v10, v14

    double-to-float v10, v10

    invoke-direct {v4, v5, v10}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v5, 0x2

    aput-object v4, v3, v5

    iget-object v3, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    new-instance v4, Landroid/graphics/PointF;

    sub-float v5, v13, v6

    add-double v10, v34, v8

    add-double v10, v10, v42

    float-to-double v14, v2

    add-double/2addr v10, v14

    double-to-float v10, v10

    invoke-direct {v4, v5, v10}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v5, 0x3

    aput-object v4, v3, v5

    move/from16 v5, v16

    goto/16 :goto_38e

    :cond_222
    move/from16 v6, p3

    move/from16 v1, p4

    move-wide/from16 v42, v14

    const/4 v2, 0x2

    if-ne v7, v2, :cond_2e6

    new-instance v2, Landroid/graphics/RectF;

    iget v3, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->radius:F

    mul-float v4, v3, v37

    sub-float v4, v13, v4

    sub-float/2addr v4, v6

    mul-float v3, v3, v37

    sub-float v14, v16, v3

    sub-float/2addr v14, v1

    sub-float v3, v13, v6

    sub-float v5, v16, v1

    invoke-direct {v2, v4, v14, v3, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v2, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->rect:Landroid/graphics/RectF;

    iget-object v2, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    new-instance v3, Landroid/graphics/PointF;

    float-to-double v4, v13

    sub-double v4, v4, v17

    float-to-double v10, v6

    sub-double/2addr v4, v10

    double-to-float v4, v4

    move/from16 v5, v16

    float-to-double v10, v5

    sub-double v10, v10, v19

    float-to-double v14, v1

    sub-double/2addr v10, v14

    double-to-float v10, v10

    invoke-direct {v3, v4, v10}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v3, v2, v36

    iget-object v2, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    new-instance v3, Landroid/graphics/PointF;

    float-to-double v10, v13

    sub-double v10, v10, v21

    float-to-double v14, v6

    sub-double/2addr v10, v14

    double-to-float v4, v10

    sub-float v14, v5, v1

    invoke-direct {v3, v4, v14}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v4, 0x1

    aput-object v3, v2, v4

    iget-object v2, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    new-instance v3, Landroid/graphics/PointF;

    float-to-double v10, v13

    sub-double v10, v10, v21

    sub-double v10, v10, v28

    float-to-double v14, v6

    sub-double/2addr v10, v14

    double-to-float v4, v10

    sub-float v14, v5, v1

    invoke-direct {v3, v4, v14}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v4, 0x2

    aput-object v3, v2, v4

    iget-object v2, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    new-instance v3, Landroid/graphics/PointF;

    float-to-double v10, v13

    sub-double v10, v10, v21

    sub-double v10, v10, v28

    sub-double v10, v10, v23

    float-to-double v14, v6

    sub-double/2addr v10, v14

    double-to-float v4, v10

    sub-float v14, v5, v1

    invoke-direct {v3, v4, v14}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v4, 0x3

    aput-object v3, v2, v4

    iget-object v2, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    new-instance v3, Landroid/graphics/PointF;

    sub-float v4, v13, v6

    float-to-double v10, v5

    sub-double v10, v10, v34

    sub-double/2addr v10, v8

    sub-double v10, v10, v42

    float-to-double v14, v1

    sub-double/2addr v10, v14

    double-to-float v10, v10

    invoke-direct {v3, v4, v10}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v3, v2, v36

    iget-object v2, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    new-instance v3, Landroid/graphics/PointF;

    sub-float v4, v13, v6

    float-to-double v10, v5

    sub-double v10, v10, v34

    sub-double/2addr v10, v8

    float-to-double v14, v1

    sub-double/2addr v10, v14

    double-to-float v10, v10

    invoke-direct {v3, v4, v10}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v4, 0x1

    aput-object v3, v2, v4

    iget-object v2, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    new-instance v3, Landroid/graphics/PointF;

    sub-float v4, v13, v6

    float-to-double v10, v5

    sub-double v10, v10, v34

    float-to-double v14, v1

    sub-double/2addr v10, v14

    double-to-float v10, v10

    invoke-direct {v3, v4, v10}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v4, 0x2

    aput-object v3, v2, v4

    iget-object v2, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    new-instance v3, Landroid/graphics/PointF;

    float-to-double v10, v13

    sub-double v10, v10, v30

    float-to-double v14, v6

    sub-double/2addr v10, v14

    double-to-float v4, v10

    float-to-double v10, v5

    sub-double v10, v10, v32

    float-to-double v14, v1

    sub-double/2addr v10, v14

    double-to-float v10, v10

    invoke-direct {v3, v4, v10}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v4, 0x3

    aput-object v3, v2, v4

    goto/16 :goto_38e

    :cond_2e6
    move/from16 v5, v16

    const/4 v4, 0x3

    if-ne v7, v4, :cond_38e

    add-float v11, v40, v6

    new-instance v2, Landroid/graphics/RectF;

    iget v3, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->radius:F

    mul-float v4, v3, v37

    sub-float v14, v5, v4

    sub-float/2addr v14, v1

    mul-float v3, v3, v37

    add-float/2addr v3, v11

    sub-float v4, v5, v1

    invoke-direct {v2, v11, v14, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v2, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->rect:Landroid/graphics/RectF;

    iget-object v2, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    new-instance v3, Landroid/graphics/PointF;

    add-double v14, v21, v28

    add-double v14, v14, v23

    float-to-double v6, v11

    add-double/2addr v14, v6

    double-to-float v4, v14

    sub-float v14, v5, v1

    invoke-direct {v3, v4, v14}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v3, v2, v36

    iget-object v2, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    new-instance v3, Landroid/graphics/PointF;

    add-double v6, v21, v28

    float-to-double v14, v11

    add-double/2addr v6, v14

    double-to-float v4, v6

    sub-float v14, v5, v1

    invoke-direct {v3, v4, v14}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v4, 0x1

    aput-object v3, v2, v4

    iget-object v2, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    new-instance v3, Landroid/graphics/PointF;

    float-to-double v6, v11

    add-double v6, v21, v6

    double-to-float v4, v6

    sub-float v14, v5, v1

    invoke-direct {v3, v4, v14}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v4, 0x2

    aput-object v3, v2, v4

    iget-object v2, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    new-instance v3, Landroid/graphics/PointF;

    float-to-double v6, v11

    add-double v6, v17, v6

    double-to-float v4, v6

    float-to-double v6, v5

    sub-double v6, v6, v19

    float-to-double v14, v1

    sub-double/2addr v6, v14

    double-to-float v6, v6

    invoke-direct {v3, v4, v6}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v4, 0x3

    aput-object v3, v2, v4

    iget-object v2, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    new-instance v3, Landroid/graphics/PointF;

    float-to-double v6, v11

    add-double v6, v30, v6

    double-to-float v4, v6

    float-to-double v6, v5

    sub-double v6, v6, v32

    float-to-double v14, v1

    sub-double/2addr v6, v14

    double-to-float v6, v6

    invoke-direct {v3, v4, v6}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v3, v2, v36

    iget-object v2, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    new-instance v3, Landroid/graphics/PointF;

    float-to-double v6, v5

    sub-double v6, v6, v34

    float-to-double v14, v1

    sub-double/2addr v6, v14

    double-to-float v4, v6

    invoke-direct {v3, v11, v4}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v4, 0x1

    aput-object v3, v2, v4

    iget-object v2, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    new-instance v3, Landroid/graphics/PointF;

    float-to-double v6, v5

    sub-double v6, v6, v34

    sub-double/2addr v6, v8

    float-to-double v14, v1

    sub-double/2addr v6, v14

    double-to-float v4, v6

    invoke-direct {v3, v11, v4}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v4, 0x2

    aput-object v3, v2, v4

    iget-object v2, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    new-instance v3, Landroid/graphics/PointF;

    float-to-double v6, v5

    sub-double v6, v6, v34

    sub-double/2addr v6, v8

    sub-double v6, v6, v42

    float-to-double v14, v1

    sub-double/2addr v6, v14

    double-to-float v4, v6

    invoke-direct {v3, v11, v4}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v4, 0x3

    aput-object v3, v2, v4

    :cond_38e
    :goto_38e
    return-void
.end method
