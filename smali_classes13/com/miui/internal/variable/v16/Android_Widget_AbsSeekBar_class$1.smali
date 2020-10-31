.class Lcom/miui/internal/variable/v16/Android_Widget_AbsSeekBar_class$1;
.super Ljava/lang/Object;
.source "Android_Widget_AbsSeekBar_class.java"

# interfaces
.implements Lcom/miui/internal/variable/api/v29/Android_Widget_AbsSeekBar$Interface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/variable/v16/Android_Widget_AbsSeekBar_class;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/internal/variable/v16/Android_Widget_AbsSeekBar_class;


# direct methods
.method constructor <init>(Lcom/miui/internal/variable/v16/Android_Widget_AbsSeekBar_class;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/variable/v16/Android_Widget_AbsSeekBar_class$1;->this$0:Lcom/miui/internal/variable/v16/Android_Widget_AbsSeekBar_class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/widget/AbsSeekBar;Landroid/view/MotionEvent;)Z
    .registers 6

    iget-object v0, p0, Lcom/miui/internal/variable/v16/Android_Widget_AbsSeekBar_class$1;->this$0:Lcom/miui/internal/variable/v16/Android_Widget_AbsSeekBar_class;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/miui/internal/variable/v16/Android_Widget_AbsSeekBar_class;->handleOnTouchEvent(JLandroid/widget/AbsSeekBar;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
