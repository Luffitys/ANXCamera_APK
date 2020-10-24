.class Lcom/miui/internal/view/SeekBarBackGroundShapeDrawable$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lmiui/animation/physics/DynamicAnimation$OnAnimationUpdateListener;


# instance fields
.field final synthetic this$0:Lcom/miui/internal/view/SeekBarBackGroundShapeDrawable;


# direct methods
.method constructor <init>(Lcom/miui/internal/view/SeekBarBackGroundShapeDrawable;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/view/SeekBarBackGroundShapeDrawable$3;->this$0:Lcom/miui/internal/view/SeekBarBackGroundShapeDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Lmiui/animation/physics/DynamicAnimation;FF)V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/view/SeekBarBackGroundShapeDrawable$3;->this$0:Lcom/miui/internal/view/SeekBarBackGroundShapeDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    return-void
.end method
