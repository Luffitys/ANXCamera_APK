.class Lcom/ss/android/medialib/config/GPUModelDetector$1;
.super Ljava/lang/Thread;
.source "GPUModelDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/medialib/config/GPUModelDetector;->detectGPUSurpportAdvancedEffect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/medialib/config/GPUModelDetector;


# direct methods
.method constructor <init>(Lcom/ss/android/medialib/config/GPUModelDetector;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/medialib/config/GPUModelDetector$1;->this$0:Lcom/ss/android/medialib/config/GPUModelDetector;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    invoke-static {}, Lcom/ss/android/medialib/config/GPUModelDetector;->nativeGetGPURenderer()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gpurender is"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GPUModelDetector"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/ss/android/medialib/config/GPUModelDetector$1;->this$0:Lcom/ss/android/medialib/config/GPUModelDetector;

    invoke-static {v3, v0}, Lcom/ss/android/medialib/config/GPUModelDetector;->access$000(Lcom/ss/android/medialib/config/GPUModelDetector;Ljava/lang/String;)Lcom/ss/android/medialib/config/GPUModelDetector$GPUModelInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/medialib/config/GPUModelDetector$GPUModelInfo;->getGPUModel()Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;

    move-result-object v3

    invoke-virtual {v0}, Lcom/ss/android/medialib/config/GPUModelDetector$GPUModelInfo;->getGPUSubModel()Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;

    move-result-object v4

    invoke-virtual {v0}, Lcom/ss/android/medialib/config/GPUModelDetector$GPUModelInfo;->getGPUModelNumber()I

    move-result v0

    sget-object v5, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;->Vivante:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;

    if-ne v3, v5, :cond_0

    sget-object v0, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;->Vivante_GC:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;

    if-ne v4, v0, :cond_4

    goto :goto_0

    :cond_0
    sget-object v5, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;->Adreno:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;

    if-ne v3, v5, :cond_1

    sget-object v3, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;->Adreno:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;

    if-ne v4, v3, :cond_4

    const/16 v3, 0xc8

    if-ge v0, v3, :cond_4

    goto :goto_0

    :cond_1
    sget-object v5, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;->Mali:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;

    if-ne v3, v5, :cond_3

    sget-object v3, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;->Mali:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;

    if-ne v4, v3, :cond_2

    const/16 v3, 0x12c

    if-gt v0, v3, :cond_4

    goto :goto_0

    :cond_2
    sget-object v3, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;->Mali_MP:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;

    if-ne v4, v3, :cond_4

    const/16 v3, 0x1c2

    if-gt v0, v3, :cond_4

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;->PowerVR:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;

    if-ne v3, v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x1

    :goto_0
    iget-object v0, p0, Lcom/ss/android/medialib/config/GPUModelDetector$1;->this$0:Lcom/ss/android/medialib/config/GPUModelDetector;

    invoke-static {v0, v1}, Lcom/ss/android/medialib/config/GPUModelDetector;->access$102(Lcom/ss/android/medialib/config/GPUModelDetector;Z)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSurpportAdvancedEffect:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/ss/android/medialib/config/GPUModelDetector$1;->this$0:Lcom/ss/android/medialib/config/GPUModelDetector;

    invoke-static {p0}, Lcom/ss/android/medialib/config/GPUModelDetector;->access$100(Lcom/ss/android/medialib/config/GPUModelDetector;)Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
