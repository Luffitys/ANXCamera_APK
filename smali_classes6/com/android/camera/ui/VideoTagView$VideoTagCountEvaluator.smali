.class Lcom/android/camera/ui/VideoTagView$VideoTagCountEvaluator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/TypeEvaluator;


# instance fields
.field private pointA:Landroid/graphics/PointF;

.field private pointB:Landroid/graphics/PointF;

.field final synthetic this$0:Lcom/android/camera/ui/VideoTagView;


# direct methods
.method private constructor <init>(Lcom/android/camera/ui/VideoTagView;)V
    .locals 2

    iput-object p1, p0, Lcom/android/camera/ui/VideoTagView$VideoTagCountEvaluator;->this$0:Lcom/android/camera/ui/VideoTagView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/graphics/PointF;

    const v0, 0x3e4ccccd    # 0.2f

    const v1, 0x3fcccccd    # 1.6f

    invoke-direct {p1, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p1, p0, Lcom/android/camera/ui/VideoTagView$VideoTagCountEvaluator;->pointA:Landroid/graphics/PointF;

    new-instance p1, Landroid/graphics/PointF;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p1, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p1, p0, Lcom/android/camera/ui/VideoTagView$VideoTagCountEvaluator;->pointB:Landroid/graphics/PointF;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/ui/VideoTagView;Lcom/android/camera/ui/VideoTagView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/ui/VideoTagView$VideoTagCountEvaluator;-><init>(Lcom/android/camera/ui/VideoTagView;)V

    return-void
.end method


# virtual methods
.method public evaluate(FLandroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 5

    iget v0, p2, Landroid/graphics/PointF;->x:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    mul-float/2addr v0, v1

    mul-float/2addr v0, v1

    mul-float/2addr v0, v1

    iget-object v2, p0, Lcom/android/camera/ui/VideoTagView$VideoTagCountEvaluator;->pointA:Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->x:F

    const/high16 v4, 0x40400000    # 3.0f

    mul-float/2addr v3, v4

    mul-float/2addr v3, p1

    mul-float/2addr v3, v1

    mul-float/2addr v3, v1

    add-float/2addr v0, v3

    iget-object p0, p0, Lcom/android/camera/ui/VideoTagView$VideoTagCountEvaluator;->pointB:Landroid/graphics/PointF;

    iget v3, p0, Landroid/graphics/PointF;->x:F

    mul-float/2addr v3, v4

    mul-float/2addr v3, p1

    mul-float/2addr v3, p1

    mul-float/2addr v3, v1

    add-float/2addr v0, v3

    iget v3, p3, Landroid/graphics/PointF;->x:F

    mul-float/2addr v3, p1

    mul-float/2addr v3, p1

    mul-float/2addr v3, p1

    add-float/2addr v0, v3

    iget p2, p2, Landroid/graphics/PointF;->y:F

    mul-float/2addr p2, v1

    mul-float/2addr p2, v1

    mul-float/2addr p2, v1

    iget v2, v2, Landroid/graphics/PointF;->y:F

    mul-float/2addr v2, v4

    mul-float/2addr v2, p1

    mul-float/2addr v2, v1

    mul-float/2addr v2, v1

    add-float/2addr p2, v2

    iget p0, p0, Landroid/graphics/PointF;->y:F

    mul-float/2addr p0, v4

    mul-float/2addr p0, p1

    mul-float/2addr p0, p1

    mul-float/2addr p0, v1

    add-float/2addr p2, p0

    iget p0, p3, Landroid/graphics/PointF;->y:F

    mul-float/2addr p0, p1

    mul-float/2addr p0, p1

    mul-float/2addr p0, p1

    add-float/2addr p2, p0

    new-instance p0, Landroid/graphics/PointF;

    invoke-direct {p0, v0, p2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p0
.end method

.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Landroid/graphics/PointF;

    check-cast p3, Landroid/graphics/PointF;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/ui/VideoTagView$VideoTagCountEvaluator;->evaluate(FLandroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method
