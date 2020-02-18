.class public Lcom/android/camera/scene/MiScene;
.super Ljava/lang/Object;
.source "MiScene.java"


# instance fields
.field private lastResult:F

.field private mEnable:Z

.field public type:I

.field public valueArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/camera/scene/MiScene;->valueArray:Landroid/util/SparseArray;

    iget-object p0, p0, Lcom/android/camera/scene/MiScene;->valueArray:Landroid/util/SparseArray;

    const v0, -0x10f447

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public static create()Lcom/android/camera/scene/MiScene;
    .locals 1

    new-instance v0, Lcom/android/camera/scene/MiScene;

    invoke-direct {v0}, Lcom/android/camera/scene/MiScene;-><init>()V

    return-object v0
.end method


# virtual methods
.method public isChange(F)Z
    .locals 1

    iget v0, p0, Lcom/android/camera/scene/MiScene;->lastResult:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput p1, p0, Lcom/android/camera/scene/MiScene;->lastResult:F

    return v0
.end method

.method public isEnable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/scene/MiScene;->mEnable:Z

    return p0
.end method

.method public setEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/scene/MiScene;->mEnable:Z

    return-void
.end method
