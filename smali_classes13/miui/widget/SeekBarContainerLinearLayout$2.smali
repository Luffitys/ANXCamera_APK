.class Lmiui/widget/SeekBarContainerLinearLayout$2;
.super Ljava/lang/Object;
.source "SeekBarContainerLinearLayout.java"

# interfaces
.implements Lmiui/animation/physics/DynamicAnimation$OnAnimationEndListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/widget/SeekBarContainerLinearLayout;->initAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/widget/SeekBarContainerLinearLayout;


# direct methods
.method constructor <init>(Lmiui/widget/SeekBarContainerLinearLayout;)V
    .registers 2

    iput-object p1, p0, Lmiui/widget/SeekBarContainerLinearLayout$2;->this$0:Lmiui/widget/SeekBarContainerLinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lmiui/animation/physics/DynamicAnimation;ZFF)V
    .registers 7

    iget-object v0, p0, Lmiui/widget/SeekBarContainerLinearLayout$2;->this$0:Lmiui/widget/SeekBarContainerLinearLayout;

    # getter for: Lmiui/widget/SeekBarContainerLinearLayout;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v0}, Lmiui/widget/SeekBarContainerLinearLayout;->access$000(Lmiui/widget/SeekBarContainerLinearLayout;)Landroid/widget/SeekBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setTag(Ljava/lang/Object;)V

    return-void
.end method
