.class Lcom/miui/filtersdk/filter/base/GPUImageFilter$7;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/miui/filtersdk/filter/base/GPUImageFilter;

.field final synthetic val$location:I

.field final synthetic val$point:Landroid/graphics/PointF;


# direct methods
.method constructor <init>(Lcom/miui/filtersdk/filter/base/GPUImageFilter;Landroid/graphics/PointF;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter$7;->this$0:Lcom/miui/filtersdk/filter/base/GPUImageFilter;

    iput-object p2, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter$7;->val$point:Landroid/graphics/PointF;

    iput p3, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter$7;->val$location:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [F

    iget-object v1, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter$7;->val$point:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    const/4 v3, 0x0

    aput v2, v0, v3

    iget v1, v1, Landroid/graphics/PointF;->y:F

    const/4 v2, 0x1

    aput v1, v0, v2

    iget p0, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter$7;->val$location:I

    invoke-static {p0, v2, v0, v3}, Landroid/opengl/GLES20;->glUniform2fv(II[FI)V

    return-void
.end method
