.class Lcom/miui/internal/view/CheckWidgetDrawableAnims$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lmiui/animation/physics/DynamicAnimation$OnAnimationUpdateListener;


# instance fields
.field final synthetic this$0:Lcom/miui/internal/view/CheckWidgetDrawableAnims;


# direct methods
.method constructor <init>(Lcom/miui/internal/view/CheckWidgetDrawableAnims;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims$2;->this$0:Lcom/miui/internal/view/CheckWidgetDrawableAnims;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Lmiui/animation/physics/DynamicAnimation;FF)V
    .locals 0

    iget-object p1, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims$2;->this$0:Lcom/miui/internal/view/CheckWidgetDrawableAnims;

    invoke-static {p1}, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->access$000(Lcom/miui/internal/view/CheckWidgetDrawableAnims;)Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims$2;->this$0:Lcom/miui/internal/view/CheckWidgetDrawableAnims;

    invoke-virtual {p2}, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->getScale()F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;->setScale(F)V

    iget-object p0, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims$2;->this$0:Lcom/miui/internal/view/CheckWidgetDrawableAnims;

    invoke-static {p0}, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->access$000(Lcom/miui/internal/view/CheckWidgetDrawableAnims;)Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedStateListDrawable;->invalidateSelf()V

    return-void
.end method
