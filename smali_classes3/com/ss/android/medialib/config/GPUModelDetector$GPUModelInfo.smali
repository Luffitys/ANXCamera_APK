.class public Lcom/ss/android/medialib/config/GPUModelDetector$GPUModelInfo;
.super Ljava/lang/Object;
.source "GPUModelDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/medialib/config/GPUModelDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GPUModelInfo"
.end annotation


# instance fields
.field private mGPUModel:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;

.field private mGPUModelNumber:I

.field private mGPUSubModel:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;

.field final synthetic this$0:Lcom/ss/android/medialib/config/GPUModelDetector;


# direct methods
.method public constructor <init>(Lcom/ss/android/medialib/config/GPUModelDetector;Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;I)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/medialib/config/GPUModelDetector$GPUModelInfo;->this$0:Lcom/ss/android/medialib/config/GPUModelDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/ss/android/medialib/config/GPUModelDetector$GPUModelInfo;->mGPUModel:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;

    iput-object p3, p0, Lcom/ss/android/medialib/config/GPUModelDetector$GPUModelInfo;->mGPUSubModel:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;

    iput p4, p0, Lcom/ss/android/medialib/config/GPUModelDetector$GPUModelInfo;->mGPUModelNumber:I

    return-void
.end method


# virtual methods
.method public getGPUModel()Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/medialib/config/GPUModelDetector$GPUModelInfo;->mGPUModel:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;

    return-object p0
.end method

.method public getGPUModelNumber()I
    .locals 0

    iget p0, p0, Lcom/ss/android/medialib/config/GPUModelDetector$GPUModelInfo;->mGPUModelNumber:I

    return p0
.end method

.method public getGPUSubModel()Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/medialib/config/GPUModelDetector$GPUModelInfo;->mGPUSubModel:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;

    return-object p0
.end method
