.class Lcom/miui/filtersdk/filter/base/GPUImageFilter$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/miui/filtersdk/filter/base/GPUImageFilter;

.field final synthetic val$floatValue:F

.field final synthetic val$location:I


# direct methods
.method constructor <init>(Lcom/miui/filtersdk/filter/base/GPUImageFilter;IF)V
    .locals 0

    iput-object p1, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter$2;->this$0:Lcom/miui/filtersdk/filter/base/GPUImageFilter;

    iput p2, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter$2;->val$location:I

    iput p3, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter$2;->val$floatValue:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget v0, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter$2;->val$location:I

    iget p0, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter$2;->val$floatValue:F

    invoke-static {v0, p0}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    return-void
.end method
