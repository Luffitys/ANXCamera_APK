.class Lmiui/widget/SeekBarContainerLinearLayout$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lmiui/animation/physics/DynamicAnimation$OnAnimationEndListener;


# instance fields
.field final synthetic this$0:Lmiui/widget/SeekBarContainerLinearLayout;


# direct methods
.method constructor <init>(Lmiui/widget/SeekBarContainerLinearLayout;)V
    .locals 0

    iput-object p1, p0, Lmiui/widget/SeekBarContainerLinearLayout$2;->this$0:Lmiui/widget/SeekBarContainerLinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lmiui/animation/physics/DynamicAnimation;ZFF)V
    .locals 0

    iget-object p0, p0, Lmiui/widget/SeekBarContainerLinearLayout$2;->this$0:Lmiui/widget/SeekBarContainerLinearLayout;

    invoke-static {p0}, Lmiui/widget/SeekBarContainerLinearLayout;->access$000(Lmiui/widget/SeekBarContainerLinearLayout;)Landroid/widget/SeekBar;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setTag(Ljava/lang/Object;)V

    return-void
.end method
