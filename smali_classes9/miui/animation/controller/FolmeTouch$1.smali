.class Lmiui/animation/controller/FolmeTouch$1;
.super Lmiui/animation/listener/TransitionListener;
.source ""


# instance fields
.field final synthetic this$0:Lmiui/animation/controller/FolmeTouch;


# direct methods
.method constructor <init>(Lmiui/animation/controller/FolmeTouch;)V
    .locals 0

    iput-object p1, p0, Lmiui/animation/controller/FolmeTouch$1;->this$0:Lmiui/animation/controller/FolmeTouch;

    invoke-direct {p0}, Lmiui/animation/listener/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onBegin(Ljava/lang/Object;Lmiui/animation/listener/UpdateInfo;)V
    .locals 2

    sget-object v0, Lmiui/animation/ITouchStyle$TouchType;->DOWN:Lmiui/animation/ITouchStyle$TouchType;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lmiui/animation/controller/FolmeTouch$1;->this$0:Lmiui/animation/controller/FolmeTouch;

    invoke-static {p1, v0}, Lmiui/animation/controller/FolmeTouch;->access$000(Lmiui/animation/controller/FolmeTouch;Lmiui/animation/ITouchStyle$TouchType;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p2, Lmiui/animation/listener/UpdateInfo;->property:Lmiui/animation/property/FloatProperty;

    sget-object v0, Lmiui/animation/property/ViewProperty;->SCALE_X:Lmiui/animation/property/ViewProperty;

    if-eq p1, v0, :cond_0

    sget-object v0, Lmiui/animation/property/ViewProperty;->SCALE_Y:Lmiui/animation/property/ViewProperty;

    if-ne p1, v0, :cond_1

    :cond_0
    iget-object p1, p0, Lmiui/animation/controller/FolmeTouch$1;->this$0:Lmiui/animation/controller/FolmeTouch;

    iget-object p1, p1, Lmiui/animation/controller/FolmeBase;->mState:Lmiui/animation/controller/IFolmeStateStyle;

    invoke-interface {p1}, Lmiui/animation/controller/IFolmeStateStyle;->getTarget()Lmiui/animation/IAnimTarget;

    move-result-object p1

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lmiui/animation/IAnimTarget;->getValue(I)F

    move-result v0

    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Lmiui/animation/IAnimTarget;->getValue(I)F

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget-object p0, p0, Lmiui/animation/controller/FolmeTouch$1;->this$0:Lmiui/animation/controller/FolmeTouch;

    invoke-static {p0}, Lmiui/animation/controller/FolmeTouch;->access$100(Lmiui/animation/controller/FolmeTouch;)F

    move-result p0

    sub-float p0, p1, p0

    div-float/2addr p0, p1

    const p1, 0x3f666666    # 0.9f

    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    iget-object p1, p2, Lmiui/animation/listener/UpdateInfo;->anim:Lmiui/animation/styles/PropertyStyle;

    const/4 p2, 0x1

    new-array p2, p2, [F

    const/4 v0, 0x0

    aput p0, p2, v0

    invoke-virtual {p1, p2}, Lmiui/animation/styles/PropertyStyle;->setValues([F)V

    :cond_1
    return-void
.end method
