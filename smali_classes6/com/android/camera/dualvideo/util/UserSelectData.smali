.class public Lcom/android/camera/dualvideo/util/UserSelectData;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "UserSelectData"


# instance fields
.field private mRecordLayoutType:Lcom/android/camera/dualvideo/render/LayoutType;

.field private mSelectIndex:Lcom/android/camera/dualvideo/util/SelectIndex;

.field private mSelectWindowLayoutType:Lcom/android/camera/dualvideo/render/LayoutType;


# direct methods
.method public constructor <init>(Lcom/android/camera/dualvideo/util/SelectIndex;Lcom/android/camera/dualvideo/render/LayoutType;Lcom/android/camera/dualvideo/render/LayoutType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/dualvideo/util/UserSelectData;->mSelectIndex:Lcom/android/camera/dualvideo/util/SelectIndex;

    iput-object p2, p0, Lcom/android/camera/dualvideo/util/UserSelectData;->mSelectWindowLayoutType:Lcom/android/camera/dualvideo/render/LayoutType;

    iput-object p3, p0, Lcom/android/camera/dualvideo/util/UserSelectData;->mRecordLayoutType:Lcom/android/camera/dualvideo/render/LayoutType;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/dualvideo/util/UserSelectData;)V
    .locals 2

    iget-object v0, p1, Lcom/android/camera/dualvideo/util/UserSelectData;->mSelectIndex:Lcom/android/camera/dualvideo/util/SelectIndex;

    iget-object v1, p1, Lcom/android/camera/dualvideo/util/UserSelectData;->mSelectWindowLayoutType:Lcom/android/camera/dualvideo/render/LayoutType;

    iget-object p1, p1, Lcom/android/camera/dualvideo/util/UserSelectData;->mRecordLayoutType:Lcom/android/camera/dualvideo/render/LayoutType;

    invoke-direct {p0, v0, v1, p1}, Lcom/android/camera/dualvideo/util/UserSelectData;-><init>(Lcom/android/camera/dualvideo/util/SelectIndex;Lcom/android/camera/dualvideo/render/LayoutType;Lcom/android/camera/dualvideo/render/LayoutType;)V

    return-void
.end method


# virtual methods
.method public getCameraId()I
    .locals 1

    invoke-static {}, Lcom/android/camera/dualvideo/util/CameraIDManager;->getInstance()Lcom/android/camera/dualvideo/util/CameraIDManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/util/CameraIDManager;->get6PatchToIdMap()Landroid/util/SparseIntArray;

    move-result-object v0

    iget-object p0, p0, Lcom/android/camera/dualvideo/util/UserSelectData;->mSelectWindowLayoutType:Lcom/android/camera/dualvideo/render/LayoutType;

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/LayoutType;->getIndex()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    return p0
.end method

.method public getSelectIndex()Lcom/android/camera/dualvideo/util/SelectIndex;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/dualvideo/util/UserSelectData;->mSelectIndex:Lcom/android/camera/dualvideo/util/SelectIndex;

    return-object p0
.end method

.method public getmRecordLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/dualvideo/util/UserSelectData;->mRecordLayoutType:Lcom/android/camera/dualvideo/render/LayoutType;

    return-object p0
.end method

.method public getmSelectWindowLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/dualvideo/util/UserSelectData;->mSelectWindowLayoutType:Lcom/android/camera/dualvideo/render/LayoutType;

    return-object p0
.end method

.method public setSelectIndex(Lcom/android/camera/dualvideo/util/SelectIndex;)V
    .locals 2

    sget-object v0, Lcom/android/camera/dualvideo/util/SelectIndex;->INDEX_0:Lcom/android/camera/dualvideo/util/SelectIndex;

    if-ne p1, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSelectIndex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    invoke-static {v1}, Lcom/android/camera/Util;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UserSelectData"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lcom/android/camera/dualvideo/util/UserSelectData;->mSelectIndex:Lcom/android/camera/dualvideo/util/SelectIndex;

    return-void
.end method

.method public setSelectWindowLayoutType(Lcom/android/camera/dualvideo/render/LayoutType;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/dualvideo/util/UserSelectData;->mSelectWindowLayoutType:Lcom/android/camera/dualvideo/render/LayoutType;

    return-void
.end method

.method public setmRecordLayoutType(Lcom/android/camera/dualvideo/render/LayoutType;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/dualvideo/util/UserSelectData;->mRecordLayoutType:Lcom/android/camera/dualvideo/render/LayoutType;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserSelectData{mSelectWindowLayoutType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/dualvideo/util/UserSelectData;->mSelectWindowLayoutType:Lcom/android/camera/dualvideo/render/LayoutType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mRenderLayoutType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/dualvideo/util/UserSelectData;->mRecordLayoutType:Lcom/android/camera/dualvideo/render/LayoutType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mSelectIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera/dualvideo/util/UserSelectData;->mSelectIndex:Lcom/android/camera/dualvideo/util/SelectIndex;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
