.class Lcom/miui/internal/view/CheckWidgetDrawableAnims$8;
.super Ljava/lang/Object;
.source "CheckWidgetDrawableAnims.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/internal/view/CheckWidgetDrawableAnims;->startUnPressedAnim(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/internal/view/CheckWidgetDrawableAnims;


# direct methods
.method constructor <init>(Lcom/miui/internal/view/CheckWidgetDrawableAnims;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims$8;->this$0:Lcom/miui/internal/view/CheckWidgetDrawableAnims;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims$8;->this$0:Lcom/miui/internal/view/CheckWidgetDrawableAnims;

    # getter for: Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mParentUnPressAlphaAnim:Lmiui/animation/physics/SpringAnimation;
    invoke-static {v0}, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->access$100(Lcom/miui/internal/view/CheckWidgetDrawableAnims;)Lmiui/animation/physics/SpringAnimation;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims$8;->this$0:Lcom/miui/internal/view/CheckWidgetDrawableAnims;

    # getter for: Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mParentUnPressAlphaAnim:Lmiui/animation/physics/SpringAnimation;
    invoke-static {v0}, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->access$100(Lcom/miui/internal/view/CheckWidgetDrawableAnims;)Lmiui/animation/physics/SpringAnimation;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->start()V

    :cond_15
    iget-object v0, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims$8;->this$0:Lcom/miui/internal/view/CheckWidgetDrawableAnims;

    # getter for: Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mParentCheckedUnPressScaleAnim:Lmiui/animation/physics/SpringAnimation;
    invoke-static {v0}, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->access$200(Lcom/miui/internal/view/CheckWidgetDrawableAnims;)Lmiui/animation/physics/SpringAnimation;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_2a

    iget-object v0, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims$8;->this$0:Lcom/miui/internal/view/CheckWidgetDrawableAnims;

    # getter for: Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mParentCheckedUnPressScaleAnim:Lmiui/animation/physics/SpringAnimation;
    invoke-static {v0}, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->access$200(Lcom/miui/internal/view/CheckWidgetDrawableAnims;)Lmiui/animation/physics/SpringAnimation;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->start()V

    :cond_2a
    return-void
.end method
