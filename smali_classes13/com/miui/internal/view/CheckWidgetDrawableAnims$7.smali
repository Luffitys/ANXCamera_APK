.class Lcom/miui/internal/view/CheckWidgetDrawableAnims$7;
.super Ljava/lang/Object;
.source "CheckWidgetDrawableAnims.java"

# interfaces
.implements Lmiui/animation/physics/DynamicAnimation$OnAnimationUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/internal/view/CheckWidgetDrawableAnims;->initAnim()V
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

    iput-object p1, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims$7;->this$0:Lcom/miui/internal/view/CheckWidgetDrawableAnims;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Lmiui/animation/physics/DynamicAnimation;FF)V
    .registers 5

    iget-object v0, p0, Lcom/miui/internal/view/CheckWidgetDrawableAnims$7;->this$0:Lcom/miui/internal/view/CheckWidgetDrawableAnims;

    # getter for: Lcom/miui/internal/view/CheckWidgetDrawableAnims;->mParent:Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;
    invoke-static {v0}, Lcom/miui/internal/view/CheckWidgetDrawableAnims;->access$000(Lcom/miui/internal/view/CheckWidgetDrawableAnims;)Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/view/CheckBoxAnimatedStateListDrawable;->invalidateSelf()V

    return-void
.end method
