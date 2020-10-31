.class Lmiui/widget/NumberPicker$PressedStateHelper;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PressedStateHelper"
.end annotation


# static fields
.field public static final BUTTON_DECREMENT:I = 0x2

.field public static final BUTTON_INCREMENT:I = 0x1


# instance fields
.field private final MODE_PRESS:I

.field private final MODE_TAPPED:I

.field private mManagedButton:I

.field private mMode:I

.field final synthetic this$0:Lmiui/widget/NumberPicker;


# direct methods
.method constructor <init>(Lmiui/widget/NumberPicker;)V
    .registers 3

    iput-object p1, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->this$0:Lmiui/widget/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->MODE_PRESS:I

    const/4 v0, 0x2

    iput v0, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->MODE_TAPPED:I

    return-void
.end method


# virtual methods
.method public buttonPressDelayed(I)V
    .registers 5

    invoke-virtual {p0}, Lmiui/widget/NumberPicker$PressedStateHelper;->cancel()V

    const/4 v0, 0x1

    iput v0, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->mMode:I

    iput p1, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->mManagedButton:I

    iget-object v0, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->this$0:Lmiui/widget/NumberPicker;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Lmiui/widget/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public buttonTapped(I)V
    .registers 3

    invoke-virtual {p0}, Lmiui/widget/NumberPicker$PressedStateHelper;->cancel()V

    const/4 v0, 0x2

    iput v0, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->mMode:I

    iput p1, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->mManagedButton:I

    iget-object v0, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, p0}, Lmiui/widget/NumberPicker;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public cancel()V
    .registers 6

    const/4 v0, 0x0

    iput v0, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->mMode:I

    iput v0, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->mManagedButton:I

    iget-object v1, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {v1, p0}, Lmiui/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v1, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->this$0:Lmiui/widget/NumberPicker;

    # getter for: Lmiui/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z
    invoke-static {v1}, Lmiui/widget/NumberPicker;->access$1100(Lmiui/widget/NumberPicker;)Z

    move-result v1

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->this$0:Lmiui/widget/NumberPicker;

    # setter for: Lmiui/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z
    invoke-static {v1, v0}, Lmiui/widget/NumberPicker;->access$1102(Lmiui/widget/NumberPicker;Z)Z

    iget-object v1, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->this$0:Lmiui/widget/NumberPicker;

    # getter for: Lmiui/widget/NumberPicker;->mBottomSelectionDividerBottom:I
    invoke-static {v1}, Lmiui/widget/NumberPicker;->access$1200(Lmiui/widget/NumberPicker;)I

    move-result v2

    iget-object v3, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {v3}, Lmiui/widget/NumberPicker;->getRight()I

    move-result v3

    iget-object v4, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {v4}, Lmiui/widget/NumberPicker;->getBottom()I

    move-result v4

    invoke-virtual {v1, v0, v2, v3, v4}, Lmiui/widget/NumberPicker;->invalidate(IIII)V

    :cond_2c
    iget-object v1, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->this$0:Lmiui/widget/NumberPicker;

    # getter for: Lmiui/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z
    invoke-static {v1}, Lmiui/widget/NumberPicker;->access$1300(Lmiui/widget/NumberPicker;)Z

    move-result v1

    if-eqz v1, :cond_48

    iget-object v1, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->this$0:Lmiui/widget/NumberPicker;

    # setter for: Lmiui/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z
    invoke-static {v1, v0}, Lmiui/widget/NumberPicker;->access$1302(Lmiui/widget/NumberPicker;Z)Z

    iget-object v1, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {v1}, Lmiui/widget/NumberPicker;->getRight()I

    move-result v2

    iget-object v3, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->this$0:Lmiui/widget/NumberPicker;

    # getter for: Lmiui/widget/NumberPicker;->mTopSelectionDividerTop:I
    invoke-static {v3}, Lmiui/widget/NumberPicker;->access$1400(Lmiui/widget/NumberPicker;)I

    move-result v3

    invoke-virtual {v1, v0, v0, v2, v3}, Lmiui/widget/NumberPicker;->invalidate(IIII)V

    :cond_48
    return-void
.end method

.method public run()V
    .registers 7

    iget v0, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->mMode:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_67

    if-eq v0, v1, :cond_b

    goto/16 :goto_9f

    :cond_b
    iget v0, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->mManagedButton:I

    if-eq v0, v3, :cond_3a

    if-eq v0, v1, :cond_13

    goto/16 :goto_9f

    :cond_13
    iget-object v0, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->this$0:Lmiui/widget/NumberPicker;

    # getter for: Lmiui/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z
    invoke-static {v0}, Lmiui/widget/NumberPicker;->access$1300(Lmiui/widget/NumberPicker;)Z

    move-result v0

    if-nez v0, :cond_25

    iget-object v0, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->this$0:Lmiui/widget/NumberPicker;

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v1

    int-to-long v4, v1

    invoke-virtual {v0, p0, v4, v5}, Lmiui/widget/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_25
    iget-object v0, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->this$0:Lmiui/widget/NumberPicker;

    # ^= operator for: Lmiui/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z
    invoke-static {v0, v3}, Lmiui/widget/NumberPicker;->access$1380(Lmiui/widget/NumberPicker;I)Z

    iget-object v0, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {v0}, Lmiui/widget/NumberPicker;->getRight()I

    move-result v1

    iget-object v3, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->this$0:Lmiui/widget/NumberPicker;

    # getter for: Lmiui/widget/NumberPicker;->mTopSelectionDividerTop:I
    invoke-static {v3}, Lmiui/widget/NumberPicker;->access$1400(Lmiui/widget/NumberPicker;)I

    move-result v3

    invoke-virtual {v0, v2, v2, v1, v3}, Lmiui/widget/NumberPicker;->invalidate(IIII)V

    goto :goto_9f

    :cond_3a
    iget-object v0, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->this$0:Lmiui/widget/NumberPicker;

    # getter for: Lmiui/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z
    invoke-static {v0}, Lmiui/widget/NumberPicker;->access$1100(Lmiui/widget/NumberPicker;)Z

    move-result v0

    if-nez v0, :cond_4c

    iget-object v0, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->this$0:Lmiui/widget/NumberPicker;

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v1

    int-to-long v4, v1

    invoke-virtual {v0, p0, v4, v5}, Lmiui/widget/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4c
    iget-object v0, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->this$0:Lmiui/widget/NumberPicker;

    # ^= operator for: Lmiui/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z
    invoke-static {v0, v3}, Lmiui/widget/NumberPicker;->access$1180(Lmiui/widget/NumberPicker;I)Z

    iget-object v0, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->this$0:Lmiui/widget/NumberPicker;

    # getter for: Lmiui/widget/NumberPicker;->mBottomSelectionDividerBottom:I
    invoke-static {v0}, Lmiui/widget/NumberPicker;->access$1200(Lmiui/widget/NumberPicker;)I

    move-result v1

    iget-object v3, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {v3}, Lmiui/widget/NumberPicker;->getRight()I

    move-result v3

    iget-object v4, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {v4}, Lmiui/widget/NumberPicker;->getBottom()I

    move-result v4

    invoke-virtual {v0, v2, v1, v3, v4}, Lmiui/widget/NumberPicker;->invalidate(IIII)V

    goto :goto_9f

    :cond_67
    iget v0, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->mManagedButton:I

    if-eq v0, v3, :cond_83

    if-eq v0, v1, :cond_6e

    goto :goto_9e

    :cond_6e
    iget-object v0, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->this$0:Lmiui/widget/NumberPicker;

    # setter for: Lmiui/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z
    invoke-static {v0, v3}, Lmiui/widget/NumberPicker;->access$1302(Lmiui/widget/NumberPicker;Z)Z

    iget-object v0, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {v0}, Lmiui/widget/NumberPicker;->getRight()I

    move-result v1

    iget-object v3, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->this$0:Lmiui/widget/NumberPicker;

    # getter for: Lmiui/widget/NumberPicker;->mTopSelectionDividerTop:I
    invoke-static {v3}, Lmiui/widget/NumberPicker;->access$1400(Lmiui/widget/NumberPicker;)I

    move-result v3

    invoke-virtual {v0, v2, v2, v1, v3}, Lmiui/widget/NumberPicker;->invalidate(IIII)V

    goto :goto_9e

    :cond_83
    iget-object v0, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->this$0:Lmiui/widget/NumberPicker;

    # setter for: Lmiui/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z
    invoke-static {v0, v3}, Lmiui/widget/NumberPicker;->access$1102(Lmiui/widget/NumberPicker;Z)Z

    iget-object v0, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->this$0:Lmiui/widget/NumberPicker;

    # getter for: Lmiui/widget/NumberPicker;->mBottomSelectionDividerBottom:I
    invoke-static {v0}, Lmiui/widget/NumberPicker;->access$1200(Lmiui/widget/NumberPicker;)I

    move-result v1

    iget-object v3, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {v3}, Lmiui/widget/NumberPicker;->getRight()I

    move-result v3

    iget-object v4, p0, Lmiui/widget/NumberPicker$PressedStateHelper;->this$0:Lmiui/widget/NumberPicker;

    invoke-virtual {v4}, Lmiui/widget/NumberPicker;->getBottom()I

    move-result v4

    invoke-virtual {v0, v2, v1, v3, v4}, Lmiui/widget/NumberPicker;->invalidate(IIII)V

    nop

    :goto_9e
    nop

    :goto_9f
    return-void
.end method
