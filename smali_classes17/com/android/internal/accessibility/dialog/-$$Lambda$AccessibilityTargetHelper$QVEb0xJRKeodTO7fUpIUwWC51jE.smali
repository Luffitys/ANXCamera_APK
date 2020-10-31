.class public final synthetic Lcom/android/internal/accessibility/dialog/-$$Lambda$AccessibilityTargetHelper$QVEb0xJRKeodTO7fUpIUwWC51jE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/accessibility/dialog/AccessibilityServiceTarget;

.field public final synthetic f$1:Landroid/view/View$OnClickListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/accessibility/dialog/AccessibilityServiceTarget;Landroid/view/View$OnClickListener;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/accessibility/dialog/-$$Lambda$AccessibilityTargetHelper$QVEb0xJRKeodTO7fUpIUwWC51jE;->f$0:Lcom/android/internal/accessibility/dialog/AccessibilityServiceTarget;

    iput-object p2, p0, Lcom/android/internal/accessibility/dialog/-$$Lambda$AccessibilityTargetHelper$QVEb0xJRKeodTO7fUpIUwWC51jE;->f$1:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/-$$Lambda$AccessibilityTargetHelper$QVEb0xJRKeodTO7fUpIUwWC51jE;->f$0:Lcom/android/internal/accessibility/dialog/AccessibilityServiceTarget;

    iget-object v1, p0, Lcom/android/internal/accessibility/dialog/-$$Lambda$AccessibilityTargetHelper$QVEb0xJRKeodTO7fUpIUwWC51jE;->f$1:Landroid/view/View$OnClickListener;

    invoke-static {v0, v1, p1}, Lcom/android/internal/accessibility/dialog/AccessibilityTargetHelper;->lambda$createEnableDialogContentView$2(Lcom/android/internal/accessibility/dialog/AccessibilityServiceTarget;Landroid/view/View$OnClickListener;Landroid/view/View;)V

    return-void
.end method
