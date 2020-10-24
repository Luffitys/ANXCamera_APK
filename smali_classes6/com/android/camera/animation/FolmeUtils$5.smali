.class Lcom/android/camera/animation/FolmeUtils$5;
.super Lcom/android/camera/animation/FolmeUtils$PhyAnimatorListener;
.source ""


# instance fields
.field final synthetic val$listener:Lcom/android/camera/animation/FolmeUtils$IPhyAnimatorListener;


# direct methods
.method constructor <init>(Lcom/android/camera/animation/FolmeUtils$IPhyAnimatorListener;Lcom/android/camera/animation/FolmeUtils$IPhyAnimatorListener;)V
    .locals 0

    iput-object p2, p0, Lcom/android/camera/animation/FolmeUtils$5;->val$listener:Lcom/android/camera/animation/FolmeUtils$IPhyAnimatorListener;

    invoke-direct {p0, p1}, Lcom/android/camera/animation/FolmeUtils$PhyAnimatorListener;-><init>(Lcom/android/camera/animation/FolmeUtils$IPhyAnimatorListener;)V

    return-void
.end method


# virtual methods
.method public onUpdate(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;FFZ)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/animation/FolmeUtils$5;->val$listener:Lcom/android/camera/animation/FolmeUtils$IPhyAnimatorListener;

    if-eqz p0, :cond_0

    const/high16 p1, 0x42c80000    # 100.0f

    mul-float/2addr p3, p1

    invoke-interface {p0, p3}, Lcom/android/camera/animation/FolmeUtils$IPhyAnimatorListener;->onUpdate(F)V

    :cond_0
    return-void
.end method
