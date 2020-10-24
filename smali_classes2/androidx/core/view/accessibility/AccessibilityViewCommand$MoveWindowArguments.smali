.class public final Landroidx/core/view/accessibility/AccessibilityViewCommand$MoveWindowArguments;
.super Landroidx/core/view/accessibility/AccessibilityViewCommand$CommandArguments;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/core/view/accessibility/AccessibilityViewCommand$CommandArguments;-><init>()V

    return-void
.end method


# virtual methods
.method public getX()I
    .locals 1

    iget-object p0, p0, Landroidx/core/view/accessibility/AccessibilityViewCommand$CommandArguments;->mBundle:Landroid/os/Bundle;

    const-string v0, "ACTION_ARGUMENT_MOVE_WINDOW_X"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getY()I
    .locals 1

    iget-object p0, p0, Landroidx/core/view/accessibility/AccessibilityViewCommand$CommandArguments;->mBundle:Landroid/os/Bundle;

    const-string v0, "ACTION_ARGUMENT_MOVE_WINDOW_Y"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method
