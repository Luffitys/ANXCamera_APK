.class Lmiui/view/VolumeDialog$2;
.super Ljava/lang/Object;
.source "VolumeDialog.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/view/VolumeDialog;->initRow(IIZ)Lmiui/view/VolumeDialog$VolumeRow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private dragging:Z

.field private final sliderHitRect:Landroid/graphics/Rect;

.field final synthetic this$0:Lmiui/view/VolumeDialog;

.field final synthetic val$row:Lmiui/view/VolumeDialog$VolumeRow;


# direct methods
.method constructor <init>(Lmiui/view/VolumeDialog;Lmiui/view/VolumeDialog$VolumeRow;)V
    .registers 3

    iput-object p1, p0, Lmiui/view/VolumeDialog$2;->this$0:Lmiui/view/VolumeDialog;

    iput-object p2, p0, Lmiui/view/VolumeDialog$2;->val$row:Lmiui/view/VolumeDialog$VolumeRow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lmiui/view/VolumeDialog$2;->sliderHitRect:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7

    iget-object v0, p0, Lmiui/view/VolumeDialog$2;->val$row:Lmiui/view/VolumeDialog$VolumeRow;

    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->slider:Lmiui/widget/SeekBar;
    invoke-static {v0}, Lmiui/view/VolumeDialog$VolumeRow;->access$1100(Lmiui/view/VolumeDialog$VolumeRow;)Lmiui/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lmiui/view/VolumeDialog$2;->sliderHitRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lmiui/widget/SeekBar;->getHitRect(Landroid/graphics/Rect;)V

    iget-boolean v0, p0, Lmiui/view/VolumeDialog$2;->dragging:Z

    const/4 v1, 0x1

    if-nez v0, :cond_25

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_25

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v2, p0, Lmiui/view/VolumeDialog$2;->sliderHitRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_25

    iput-boolean v1, p0, Lmiui/view/VolumeDialog$2;->dragging:Z

    :cond_25
    iget-boolean v0, p0, Lmiui/view/VolumeDialog$2;->dragging:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_52

    iget-object v0, p0, Lmiui/view/VolumeDialog$2;->sliderHitRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    int-to-float v0, v0

    iget-object v3, p0, Lmiui/view/VolumeDialog$2;->sliderHitRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {p2, v0, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    iget-object v0, p0, Lmiui/view/VolumeDialog$2;->val$row:Lmiui/view/VolumeDialog$VolumeRow;

    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->slider:Lmiui/widget/SeekBar;
    invoke-static {v0}, Lmiui/view/VolumeDialog$VolumeRow;->access$1100(Lmiui/view/VolumeDialog$VolumeRow;)Lmiui/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Lmiui/widget/SeekBar;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v1, :cond_4f

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_51

    :cond_4f
    iput-boolean v2, p0, Lmiui/view/VolumeDialog$2;->dragging:Z

    :cond_51
    return v1

    :cond_52
    return v2
.end method
