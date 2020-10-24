.class public Lcom/android/camera/animation/FolmeUtils$PhyAnimatorListener;
.super Lmiuix/animation/listener/TransitionListener;
.source ""


# instance fields
.field private mListener:Lcom/android/camera/animation/FolmeUtils$IPhyAnimatorListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/animation/FolmeUtils$IPhyAnimatorListener;)V
    .locals 0

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    iput-object p1, p0, Lcom/android/camera/animation/FolmeUtils$PhyAnimatorListener;->mListener:Lcom/android/camera/animation/FolmeUtils$IPhyAnimatorListener;

    return-void
.end method


# virtual methods
.method public onBegin(Ljava/lang/Object;Lmiuix/animation/listener/UpdateInfo;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lmiuix/animation/listener/TransitionListener;->onBegin(Ljava/lang/Object;Lmiuix/animation/listener/UpdateInfo;)V

    iget-object p0, p0, Lcom/android/camera/animation/FolmeUtils$PhyAnimatorListener;->mListener:Lcom/android/camera/animation/FolmeUtils$IPhyAnimatorListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/camera/animation/FolmeUtils$IPhyAnimatorListener;->onStart()V

    :cond_0
    return-void
.end method

.method public onCancel(Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onCancel(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/camera/animation/FolmeUtils$PhyAnimatorListener;->mListener:Lcom/android/camera/animation/FolmeUtils$IPhyAnimatorListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/camera/animation/FolmeUtils$IPhyAnimatorListener;->onCancel()V

    :cond_0
    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onComplete(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/camera/animation/FolmeUtils$PhyAnimatorListener;->mListener:Lcom/android/camera/animation/FolmeUtils$IPhyAnimatorListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/camera/animation/FolmeUtils$IPhyAnimatorListener;->onEnd()V

    :cond_0
    return-void
.end method

.method public onUpdate(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;FFZ)V
    .locals 0

    invoke-super/range {p0 .. p5}, Lmiuix/animation/listener/TransitionListener;->onUpdate(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;FFZ)V

    iget-object p0, p0, Lcom/android/camera/animation/FolmeUtils$PhyAnimatorListener;->mListener:Lcom/android/camera/animation/FolmeUtils$IPhyAnimatorListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p3}, Lcom/android/camera/animation/FolmeUtils$IPhyAnimatorListener;->onUpdate(F)V

    :cond_0
    return-void
.end method
