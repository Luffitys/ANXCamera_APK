.class Lcom/miui/filtersdk/filter/base/GPUImageFilter$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/miui/filtersdk/filter/base/GPUImageFilter;

.field final synthetic val$intValue:I

.field final synthetic val$location:I


# direct methods
.method constructor <init>(Lcom/miui/filtersdk/filter/base/GPUImageFilter;II)V
    .locals 0

    iput-object p1, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter$1;->this$0:Lcom/miui/filtersdk/filter/base/GPUImageFilter;

    iput p2, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter$1;->val$location:I

    iput p3, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter$1;->val$intValue:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget v0, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter$1;->val$location:I

    iget p0, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter$1;->val$intValue:I

    invoke-static {v0, p0}, Landroid/opengl/GLES20;->glUniform1i(II)V

    return-void
.end method
