.class Landroid/widget/AbsSeekBar$1;
.super Ljava/lang/Object;
.source "AbsSeekBar.java"

# interfaces
.implements Lcom/miui/internal/variable/api/v29/Android_Widget_AbsSeekBar$Interface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/widget/AbsSeekBar;Landroid/view/MotionEvent;)Z
    .registers 4

    invoke-virtual {p1, p2}, Landroid/widget/AbsSeekBar;->originalOnTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
