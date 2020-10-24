.class Lcom/miui/internal/view/CheckWidgetDrawableAnims$8;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/miui/internal/view/CheckWidgetDrawableAnims;


# direct methods
.method constructor <init>(Lcom/miui/internal/view/CheckWidgetDrawableAnims;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims$8;->this$0:Lcom/miui/internal/view/CheckWidgetDrawableAnims;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims$8;->this$0:Lcom/miui/internal/view/CheckWidgetDrawableAnims;

    invoke-static {v0}, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->access$100(Lcom/miui/internal/view/CheckWidgetDrawableAnims;)Lmiui/animation/physics/SpringAnimation;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/animation/physics/DynamicAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims$8;->this$0:Lcom/miui/internal/view/CheckWidgetDrawableAnims;

    invoke-static {v0}, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->access$100(Lcom/miui/internal/view/CheckWidgetDrawableAnims;)Lmiui/animation/physics/SpringAnimation;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->start()V

    :cond_0
    iget-object v0, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims$8;->this$0:Lcom/miui/internal/view/CheckWidgetDrawableAnims;

    invoke-static {v0}, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->access$200(Lcom/miui/internal/view/CheckWidgetDrawableAnims;)Lmiui/animation/physics/SpringAnimation;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/animation/physics/DynamicAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims$8;->this$0:Lcom/miui/internal/view/CheckWidgetDrawableAnims;

    invoke-static {p0}, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->access$200(Lcom/miui/internal/view/CheckWidgetDrawableAnims;)Lmiui/animation/physics/SpringAnimation;

    move-result-object p0

    invoke-virtual {p0}, Lmiui/animation/physics/SpringAnimation;->start()V

    :cond_1
    return-void
.end method
