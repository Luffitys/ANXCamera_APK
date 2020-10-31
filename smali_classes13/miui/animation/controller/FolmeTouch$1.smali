.class Lmiui/animation/controller/FolmeTouch$1;
.super Lmiui/animation/listener/TransitionListener;
.source "FolmeTouch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/animation/controller/FolmeTouch;-><init>([Lmiui/animation/IAnimTarget;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/animation/controller/FolmeTouch;


# direct methods
.method constructor <init>(Lmiui/animation/controller/FolmeTouch;)V
    .registers 2

    iput-object p1, p0, Lmiui/animation/controller/FolmeTouch$1;->this$0:Lmiui/animation/controller/FolmeTouch;

    invoke-direct {p0}, Lmiui/animation/listener/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onBegin(Ljava/lang/Object;Lmiui/animation/listener/UpdateInfo;)V
    .registers 9

    sget-object v0, Lmiui/animation/ITouchStyle$TouchType;->DOWN:Lmiui/animation/ITouchStyle$TouchType;

    if-ne p1, v0, :cond_4b

    iget-object v0, p0, Lmiui/animation/controller/FolmeTouch$1;->this$0:Lmiui/animation/controller/FolmeTouch;

    sget-object v1, Lmiui/animation/ITouchStyle$TouchType;->DOWN:Lmiui/animation/ITouchStyle$TouchType;

    # invokes: Lmiui/animation/controller/FolmeTouch;->isScaleSet(Lmiui/animation/ITouchStyle$TouchType;)Z
    invoke-static {v0, v1}, Lmiui/animation/controller/FolmeTouch;->access$000(Lmiui/animation/controller/FolmeTouch;Lmiui/animation/ITouchStyle$TouchType;)Z

    move-result v0

    if-nez v0, :cond_4b

    iget-object v0, p2, Lmiui/animation/listener/UpdateInfo;->property:Lmiui/animation/property/FloatProperty;

    sget-object v1, Lmiui/animation/property/ViewProperty;->SCALE_X:Lmiui/animation/property/ViewProperty;

    if-eq v0, v1, :cond_1a

    iget-object v0, p2, Lmiui/animation/listener/UpdateInfo;->property:Lmiui/animation/property/FloatProperty;

    sget-object v1, Lmiui/animation/property/ViewProperty;->SCALE_Y:Lmiui/animation/property/ViewProperty;

    if-ne v0, v1, :cond_4b

    :cond_1a
    iget-object v0, p0, Lmiui/animation/controller/FolmeTouch$1;->this$0:Lmiui/animation/controller/FolmeTouch;

    iget-object v0, v0, Lmiui/animation/controller/FolmeTouch;->mState:Lmiui/animation/controller/IFolmeStateStyle;

    invoke-interface {v0}, Lmiui/animation/controller/IFolmeStateStyle;->getTarget()Lmiui/animation/IAnimTarget;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lmiui/animation/IAnimTarget;->getValue(I)F

    move-result v1

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lmiui/animation/IAnimTarget;->getValue(I)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget-object v2, p0, Lmiui/animation/controller/FolmeTouch$1;->this$0:Lmiui/animation/controller/FolmeTouch;

    # getter for: Lmiui/animation/controller/FolmeTouch;->mScaleDist:F
    invoke-static {v2}, Lmiui/animation/controller/FolmeTouch;->access$100(Lmiui/animation/controller/FolmeTouch;)F

    move-result v2

    sub-float v2, v1, v2

    div-float/2addr v2, v1

    const v3, 0x3f666666    # 0.9f

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget-object v3, p2, Lmiui/animation/listener/UpdateInfo;->anim:Lmiui/animation/styles/PropertyStyle;

    const/4 v4, 0x1

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v2, v4, v5

    invoke-virtual {v3, v4}, Lmiui/animation/styles/PropertyStyle;->setValues([F)V

    :cond_4b
    return-void
.end method
