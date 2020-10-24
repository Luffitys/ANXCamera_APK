.class Lmiuix/animation/controller/FolmeTouch$1;
.super Lmiuix/animation/listener/TransitionListener;
.source ""


# instance fields
.field final synthetic this$0:Lmiuix/animation/controller/FolmeTouch;


# direct methods
.method constructor <init>(Lmiuix/animation/controller/FolmeTouch;)V
    .locals 0

    iput-object p1, p0, Lmiuix/animation/controller/FolmeTouch$1;->this$0:Lmiuix/animation/controller/FolmeTouch;

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onBegin(Ljava/lang/Object;Lmiuix/animation/listener/UpdateInfo;)V
    .locals 2

    sget-object v0, Lmiuix/animation/ITouchStyle$TouchType;->DOWN:Lmiuix/animation/ITouchStyle$TouchType;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lmiuix/animation/controller/FolmeTouch$1;->this$0:Lmiuix/animation/controller/FolmeTouch;

    invoke-static {p1, v0}, Lmiuix/animation/controller/FolmeTouch;->access$000(Lmiuix/animation/controller/FolmeTouch;Lmiuix/animation/ITouchStyle$TouchType;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p2, Lmiuix/animation/listener/UpdateInfo;->property:Lmiuix/animation/property/FloatProperty;

    sget-object v0, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    if-eq p1, v0, :cond_0

    sget-object v0, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    if-ne p1, v0, :cond_1

    :cond_0
    iget-object p1, p0, Lmiuix/animation/controller/FolmeTouch$1;->this$0:Lmiuix/animation/controller/FolmeTouch;

    iget-object p1, p1, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    invoke-interface {p1}, Lmiuix/animation/controller/IFolmeStateStyle;->getTarget()Lmiuix/animation/IAnimTarget;

    move-result-object p1

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lmiuix/animation/IAnimTarget;->getValue(I)F

    move-result v0

    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Lmiuix/animation/IAnimTarget;->getValue(I)F

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget-object p0, p0, Lmiuix/animation/controller/FolmeTouch$1;->this$0:Lmiuix/animation/controller/FolmeTouch;

    invoke-static {p0}, Lmiuix/animation/controller/FolmeTouch;->access$100(Lmiuix/animation/controller/FolmeTouch;)F

    move-result p0

    sub-float p0, p1, p0

    div-float/2addr p0, p1

    const p1, 0x3f666666    # 0.9f

    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    iget-object p1, p2, Lmiuix/animation/listener/UpdateInfo;->anim:Lmiuix/animation/styles/PropertyStyle;

    const/4 p2, 0x1

    new-array p2, p2, [F

    const/4 v0, 0x0

    aput p0, p2, v0

    invoke-virtual {p1, p2}, Lmiuix/animation/styles/PropertyStyle;->setValues([F)V

    :cond_1
    return-void
.end method
