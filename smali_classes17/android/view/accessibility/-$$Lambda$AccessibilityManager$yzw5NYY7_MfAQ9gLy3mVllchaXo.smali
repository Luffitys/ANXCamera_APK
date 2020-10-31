.class public final synthetic Landroid/view/accessibility/-$$Lambda$AccessibilityManager$yzw5NYY7_MfAQ9gLy3mVllchaXo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/accessibility/-$$Lambda$AccessibilityManager$yzw5NYY7_MfAQ9gLy3mVllchaXo;->f$0:Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;

    iput-boolean p2, p0, Landroid/view/accessibility/-$$Lambda$AccessibilityManager$yzw5NYY7_MfAQ9gLy3mVllchaXo;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/view/accessibility/-$$Lambda$AccessibilityManager$yzw5NYY7_MfAQ9gLy3mVllchaXo;->f$0:Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;

    iget-boolean v1, p0, Landroid/view/accessibility/-$$Lambda$AccessibilityManager$yzw5NYY7_MfAQ9gLy3mVllchaXo;->f$1:Z

    invoke-static {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->lambda$notifyAccessibilityStateChanged$0(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;Z)V

    return-void
.end method
