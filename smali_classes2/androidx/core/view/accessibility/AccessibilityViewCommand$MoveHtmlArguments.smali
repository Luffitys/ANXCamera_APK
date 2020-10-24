.class public final Landroidx/core/view/accessibility/AccessibilityViewCommand$MoveHtmlArguments;
.super Landroidx/core/view/accessibility/AccessibilityViewCommand$CommandArguments;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/core/view/accessibility/AccessibilityViewCommand$CommandArguments;-><init>()V

    return-void
.end method


# virtual methods
.method public getHTMLElement()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Landroidx/core/view/accessibility/AccessibilityViewCommand$CommandArguments;->mBundle:Landroid/os/Bundle;

    const-string v0, "ACTION_ARGUMENT_HTML_ELEMENT_STRING"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
