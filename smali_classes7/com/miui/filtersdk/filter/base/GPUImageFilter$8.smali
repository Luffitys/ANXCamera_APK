.class Lcom/miui/filtersdk/filter/base/GPUImageFilter$8;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/miui/filtersdk/filter/base/GPUImageFilter;

.field final synthetic val$location:I

.field final synthetic val$matrix:[F


# direct methods
.method constructor <init>(Lcom/miui/filtersdk/filter/base/GPUImageFilter;I[F)V
    .locals 0

    iput-object p1, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter$8;->this$0:Lcom/miui/filtersdk/filter/base/GPUImageFilter;

    iput p2, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter$8;->val$location:I

    iput-object p3, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter$8;->val$matrix:[F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget v0, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter$8;->val$location:I

    iget-object p0, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter$8;->val$matrix:[F

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0, v2}, Landroid/opengl/GLES20;->glUniformMatrix3fv(IIZ[FI)V

    return-void
.end method
