.class Lcom/android/camera/fragment/top/TopExpandAdapter$1;
.super Landroid/view/View$AccessibilityDelegate;
.source ""


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/top/TopExpandAdapter;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/top/TopExpandAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/top/TopExpandAdapter$1;->this$0:Lcom/android/camera/fragment/top/TopExpandAdapter;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const/4 p0, 0x1

    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    return-void
.end method
